import { type Kysely, sql } from "kysely";
import { parseRichText } from "../scripts/parseRichText";

// Canonical definitions for grantable abilities
const GRANTABLE_ABILITIES: {
  name: string;
  description: string;
}[] = [
  {
    name: "Bleed",
    description:
      "During the Discard Step, this character suffers 1 wound then loses this ability.",
  },
  {
    name: "Protection",
    description:
      "The first time this character would suffer Dmg each turn, reduce that Dmg to \u2205.",
  },
  {
    name: "Frightened",
    description:
      'At the start of the Discard Step, the player that used Stage Fright flips an Arcane Card then moves this model up to X+1". Catastrophe: Move 0".',
  },
  {
    name: "Horrified",
    description: "During the Discard Step, this character suffers 2 wounds.",
  },
  {
    name: "Blink",
    description:
      'When making a Step action, this model may be placed within 1" of itself instead of moving 1". Once per turn.',
  },
  {
    name: "Deadwood Cursed",
    description:
      'During the Discard Step, this character and all models friendly to this character within 3" suffer 1 wound.',
  },
  {
    name: "The Black Spot",
    description:
      "Enemy Pirates gain +1 Arcane Stat when targeting this character with an action. This character suffers 1 wound during the Discard Step.",
  },
  {
    name: "Puppet",
    description:
      'When Danica, Dusk Witch is active within 8" and Line of Sight, she may spend her energy to have this character perform actions available to them, excluding Jog. They count as friendly during the action.',
  },
  {
    name: "Reanimate Jobie",
    description:
      "Place a friendly slain Jobie in base contact with this model. Restore all its health. It gains +2 energy. It may activate this turn. A friendly Jobie may only enter play via Reanimate Jobie once per turn.",
  },
];

export const up = async (db: Kysely<unknown>) => {
  // ── Step 1: Add reloads_ability_id column ──
  await db.schema
    .alterTable("abilities")
    .addColumn("reloads_ability_id", "uuid", (col) =>
      col.references("abilities.id"),
    )
    .execute();

  await db.schema
    .createIndex("idx_abilities_reloads_ability_id")
    .on("abilities")
    .column("reloads_ability_id")
    .execute();

  // Populate reloads_ability_id by matching "Reload [X]" → ability named "X"
  await sql`
    UPDATE abilities AS reload_ability
    SET reloads_ability_id = target.id
    FROM abilities AS target
    WHERE reload_ability.name LIKE 'Reload [%]'
      AND target.name = substring(reload_ability.name from 'Reload \\[(.+)\\]')
  `.execute(db);

  // Rename all "Reload [X]" abilities to just "Reload"
  await sql`
    UPDATE abilities SET name = 'Reload' WHERE name LIKE 'Reload [%]'
  `.execute(db);

  // ── Step 2: Insert grantable abilities ──
  // Ensure the ability types needed exist (they're normally seeded, but may not
  // be present if migrations run before seed data is applied)
  await sql`
    INSERT INTO ability_type (ability_type) VALUES ('Passive'), ('Active'), ('Arcane')
    ON CONFLICT DO NOTHING
  `.execute(db);

  for (const ability of GRANTABLE_ABILITIES) {
    // Check if it already exists
    const existing = await sql<{ count: number }>`
      SELECT count(*)::int as count FROM abilities WHERE name = ${ability.name}
    `.execute(db);

    if (existing.rows[0].count === 0) {
      await sql`
        INSERT INTO abilities (name, type, description, needs_reloading)
        VALUES (${ability.name}, 'Passive', ${ability.description}, false)
      `.execute(db);
    }
  }

  // ── Step 3: Add JSONB columns alongside existing text columns ──
  await db.schema
    .alterTable("abilities")
    .addColumn("description_rich", "jsonb")
    .execute();

  await db.schema
    .alterTable("arcane_outcomes")
    .addColumn("outcome_text_rich", "jsonb")
    .execute();

  await db.schema
    .alterTable("melee_moves")
    .addColumn("additional_effects_rich", "jsonb")
    .addColumn("end_step_rich", "jsonb")
    .execute();

  // ── Step 4: Build entity lookup tables ──
  const abilitiesRows = await sql<{
    id: string;
    name: string;
  }>`SELECT id, name FROM abilities`.execute(db);

  const keywordsRows = await sql<{
    keyword: string;
  }>`SELECT keyword FROM keywords`.execute(db);

  const charactersRows = await sql<{
    id: string;
    name: string;
  }>`SELECT id, name FROM characters`.execute(db);

  const abilities = new Map<string, string>();
  for (const row of abilitiesRows.rows) {
    // Use lowercase key; if multiple abilities share a name, first one wins
    const key = row.name.toLowerCase();
    if (!abilities.has(key)) {
      abilities.set(key, row.id);
    }
  }

  const keywords = new Set<string>();
  for (const row of keywordsRows.rows) {
    keywords.add(row.keyword.toLowerCase());
  }

  const characters = new Map<string, string>();
  for (const row of charactersRows.rows) {
    characters.set(row.name.toLowerCase(), row.id);
  }

  const damageTypes = new Set(["slicing", "piercing", "impact", "magical"]);

  const entities = { abilities, keywords, characters, damageTypes };

  // ── Step 5: Parse and populate JSONB columns ──

  // Abilities descriptions
  const allAbilities = await sql<{
    id: string;
    description: string | null;
  }>`SELECT id, description FROM abilities`.execute(db);

  for (const row of allAbilities.rows) {
    if (row.description === null) {
      await sql`
        UPDATE abilities SET description_rich = NULL WHERE id = ${row.id}::uuid
      `.execute(db);
    } else {
      const rich = parseRichText(row.description, entities);
      await sql`
        UPDATE abilities SET description_rich = ${JSON.stringify(rich)}::jsonb WHERE id = ${row.id}::uuid
      `.execute(db);
    }
  }

  // Arcane outcome text
  const allOutcomes = await sql<{
    id: string;
    outcome_text: string;
  }>`SELECT id, outcome_text FROM arcane_outcomes`.execute(db);

  for (const row of allOutcomes.rows) {
    const rich = parseRichText(row.outcome_text, entities);
    await sql`
      UPDATE arcane_outcomes SET outcome_text_rich = ${JSON.stringify(rich)}::jsonb WHERE id = ${row.id}::uuid
    `.execute(db);
  }

  // Melee moves additional_effects and end_step
  const allMoves = await sql<{
    id: string;
    additional_effects: string | null;
    end_step: string | null;
  }>`SELECT id, additional_effects, end_step FROM melee_moves`.execute(db);

  for (const row of allMoves.rows) {
    if (row.additional_effects !== null) {
      const rich = parseRichText(row.additional_effects, entities);
      await sql`
        UPDATE melee_moves SET additional_effects_rich = ${JSON.stringify(rich)}::jsonb WHERE id = ${row.id}::uuid
      `.execute(db);
    }
    if (row.end_step !== null) {
      const rich = parseRichText(row.end_step, entities);
      await sql`
        UPDATE melee_moves SET end_step_rich = ${JSON.stringify(rich)}::jsonb WHERE id = ${row.id}::uuid
      `.execute(db);
    }
  }

  // ── Step 6: Swap columns ──
  // Drop old text columns, rename _rich columns

  // abilities.description
  await db.schema.alterTable("abilities").dropColumn("description").execute();
  await db.schema
    .alterTable("abilities")
    .renameColumn("description_rich", "description")
    .execute();

  // arcane_outcomes.outcome_text
  await db.schema
    .alterTable("arcane_outcomes")
    .dropColumn("outcome_text")
    .execute();
  await db.schema
    .alterTable("arcane_outcomes")
    .renameColumn("outcome_text_rich", "outcome_text")
    .execute();

  // melee_moves.additional_effects
  await db.schema
    .alterTable("melee_moves")
    .dropColumn("additional_effects")
    .execute();
  await db.schema
    .alterTable("melee_moves")
    .renameColumn("additional_effects_rich", "additional_effects")
    .execute();

  // melee_moves.end_step
  await db.schema.alterTable("melee_moves").dropColumn("end_step").execute();
  await db.schema
    .alterTable("melee_moves")
    .renameColumn("end_step_rich", "end_step")
    .execute();
};

export async function down(db: Kysely<unknown>): Promise<void> {
  // ── Reverse Step 6: Swap columns back ──

  // melee_moves.end_step
  await db.schema
    .alterTable("melee_moves")
    .renameColumn("end_step", "end_step_rich")
    .execute();
  await db.schema
    .alterTable("melee_moves")
    .addColumn("end_step", "text")
    .execute();
  // Extract plain text from JSONB
  await sql`
    UPDATE melee_moves SET end_step = (
      SELECT string_agg(
        COALESCE(elem->>'value', elem->>'name', 'Catastrophe'), ''
      )
      FROM jsonb_array_elements(end_step_rich) AS elem
    )
    WHERE end_step_rich IS NOT NULL
  `.execute(db);
  await db.schema
    .alterTable("melee_moves")
    .dropColumn("end_step_rich")
    .execute();

  // melee_moves.additional_effects
  await db.schema
    .alterTable("melee_moves")
    .renameColumn("additional_effects", "additional_effects_rich")
    .execute();
  await db.schema
    .alterTable("melee_moves")
    .addColumn("additional_effects", "text")
    .execute();
  await sql`
    UPDATE melee_moves SET additional_effects = (
      SELECT string_agg(
        COALESCE(elem->>'value', elem->>'name', 'Catastrophe'), ''
      )
      FROM jsonb_array_elements(additional_effects_rich) AS elem
    )
    WHERE additional_effects_rich IS NOT NULL
  `.execute(db);
  await db.schema
    .alterTable("melee_moves")
    .dropColumn("additional_effects_rich")
    .execute();

  // arcane_outcomes.outcome_text
  await db.schema
    .alterTable("arcane_outcomes")
    .renameColumn("outcome_text", "outcome_text_rich")
    .execute();
  await db.schema
    .alterTable("arcane_outcomes")
    .addColumn("outcome_text", "text", (col) => col.notNull().defaultTo(""))
    .execute();
  await sql`
    UPDATE arcane_outcomes SET outcome_text = (
      SELECT string_agg(
        COALESCE(elem->>'value', elem->>'name', 'Catastrophe'), ''
      )
      FROM jsonb_array_elements(outcome_text_rich) AS elem
    )
  `.execute(db);
  await db.schema
    .alterTable("arcane_outcomes")
    .dropColumn("outcome_text_rich")
    .execute();

  // abilities.description
  await db.schema
    .alterTable("abilities")
    .renameColumn("description", "description_rich")
    .execute();
  await db.schema
    .alterTable("abilities")
    .addColumn("description", "text")
    .execute();
  await sql`
    UPDATE abilities SET description = (
      SELECT string_agg(
        COALESCE(elem->>'value', elem->>'name', 'Catastrophe'), ''
      )
      FROM jsonb_array_elements(description_rich) AS elem
    )
    WHERE description_rich IS NOT NULL
  `.execute(db);
  await db.schema
    .alterTable("abilities")
    .dropColumn("description_rich")
    .execute();

  // ── Reverse Step 2: Delete grantable abilities ──
  const grantableNames = [
    "Bleed",
    "Protection",
    "Frightened",
    "Horrified",
    "Blink",
    "Deadwood Cursed",
    "The Black Spot",
    "Puppet",
    "Reanimate Jobie",
  ];

  for (const name of grantableNames) {
    // Only delete if not linked to any character
    await sql`
      DELETE FROM abilities
      WHERE name = ${name}
        AND id NOT IN (SELECT ability_id FROM characters_to_abilities)
    `.execute(db);
  }

  // ── Reverse Step 1: Rename Reload back and drop reloads_ability_id ──
  await sql`
    UPDATE abilities AS reload_ability
    SET name = 'Reload [' || target.name || ']'
    FROM abilities AS target
    WHERE reload_ability.name = 'Reload'
      AND reload_ability.reloads_ability_id = target.id
  `.execute(db);

  await db.schema.dropIndex("idx_abilities_reloads_ability_id").execute();

  await db.schema
    .alterTable("abilities")
    .dropColumn("reloads_ability_id")
    .execute();
}
