import type { Kysely } from "kysely";
import { sql } from "kysely";

export async function up(db: Kysely<unknown>): Promise<void> {
  // Step 1: Create junction table
  await db.schema
    .createTable("characters_to_abilities")
    .addColumn("character_id", "uuid", (col) =>
      col.notNull().references("characters.id").onDelete("cascade"),
    )
    .addColumn("ability_id", "uuid", (col) =>
      col.notNull().references("abilities.id").onDelete("cascade"),
    )
    .addPrimaryKeyConstraint("characters_to_abilities_pkey", [
      "character_id",
      "ability_id",
    ])
    .execute();

  await db.schema
    .createIndex("idx_characters_to_abilities_character_id")
    .on("characters_to_abilities")
    .column("character_id")
    .execute();

  await db.schema
    .createIndex("idx_characters_to_abilities_ability_id")
    .on("characters_to_abilities")
    .column("ability_id")
    .execute();

  // Step 2: Create a signature for each ability including its arcane outcomes
  // Two abilities are duplicates if they have the same signature
  const abilitiesWithSignatures = await sql<{
    id: string;
    character_id: string;
    signature: string;
  }>`
    WITH outcome_cards_agg AS (
      SELECT
        ao.id as outcome_id,
        ao.ability_id,
        ao.outcome_text,
        COALESCE(
          STRING_AGG(
            CONCAT(aoc.color, ':', aoc.value, ':', aoc.is_catastrophe::text),
            ',' ORDER BY aoc.color, aoc.value
          ),
          ''
        ) as cards
      FROM arcane_outcomes ao
      LEFT JOIN arcane_outcome_cards aoc ON aoc.arcane_outcome_id = ao.id
      GROUP BY ao.id, ao.ability_id, ao.outcome_text
    ),
    ability_outcomes_agg AS (
      SELECT
        ability_id,
        COALESCE(
          STRING_AGG(
            CONCAT(outcome_text, '||', cards),
            ';;' ORDER BY outcome_text, cards
          ),
          ''
        ) as outcomes_signature
      FROM outcome_cards_agg
      GROUP BY ability_id
    )
    SELECT
      a.id,
      a.character_id,
      CONCAT(
        COALESCE(a.name, ''), '|',
        COALESCE(a.description, ''), '|',
        COALESCE(a.type, ''), '|',
        COALESCE(a.energy_cost::text, ''), '|',
        COALESCE(a.range::text, ''), '|',
        COALESCE(a.pulse::text, ''), '|',
        COALESCE(a.once_per_turn::text, ''), '|',
        COALESCE(a.once_per_game::text, ''), '|',
        COALESCE(a.needs_reloading::text, ''), '|',
        COALESCE(aoa.outcomes_signature, '')
      ) as signature
    FROM abilities a
    LEFT JOIN ability_outcomes_agg aoa ON aoa.ability_id = a.id
    ORDER BY a.id
  `.execute(db);

  // Step 3: Group by signature to find duplicates, pick first as canonical
  const signatureToCanonical = new Map<string, string>();
  const abilityToCanonical = new Map<string, string>();

  for (const row of abilitiesWithSignatures.rows) {
    if (!signatureToCanonical.has(row.signature)) {
      signatureToCanonical.set(row.signature, row.id);
    }
    abilityToCanonical.set(row.id, signatureToCanonical.get(row.signature)!);
  }

  // Step 4: Insert into junction table (character -> canonical ability)
  const junctionRows: { character_id: string; ability_id: string }[] = [];
  const seenPairs = new Set<string>();

  for (const row of abilitiesWithSignatures.rows) {
    const canonicalId = abilityToCanonical.get(row.id)!;
    const pairKey = `${row.character_id}:${canonicalId}`;

    if (!seenPairs.has(pairKey)) {
      seenPairs.add(pairKey);
      junctionRows.push({
        character_id: row.character_id,
        ability_id: canonicalId,
      });
    }
  }

  // Insert in batches
  const batchSize = 100;
  for (let i = 0; i < junctionRows.length; i += batchSize) {
    const batch = junctionRows.slice(i, i + batchSize);
    await db
      .insertInto("characters_to_abilities" as never)
      .values(batch as never)
      .execute();
  }

  // Step 5: Delete non-canonical abilities (cascades to arcane_outcomes and arcane_outcome_cards)
  const canonicalIds = new Set(signatureToCanonical.values());
  const idsToDelete = abilitiesWithSignatures.rows
    .map((r) => r.id)
    .filter((id) => !canonicalIds.has(id));

  if (idsToDelete.length > 0) {
    // Delete in batches
    for (let i = 0; i < idsToDelete.length; i += batchSize) {
      const batch = idsToDelete.slice(i, i + batchSize);
      await db
        .deleteFrom("abilities" as never)
        .where("id" as never, "in", batch as never)
        .execute();
    }
  }

  // Step 6: Drop character_id column from abilities
  await db.schema
    .alterTable("abilities")
    .dropConstraint("abilities_character_id_fkey")
    .execute();

  await db.schema.dropIndex("idx_abilities_character_id").execute();

  await db.schema.alterTable("abilities").dropColumn("character_id").execute();

  console.log(
    `Deduplicated abilities: ${abilitiesWithSignatures.rows.length} -> ${canonicalIds.size}`,
  );
  console.log(`Created ${junctionRows.length} character-ability relationships`);
}

export async function down(db: Kysely<unknown>): Promise<void> {
  // This is a destructive migration - down requires restoring from backup
  // We'll just restore the schema structure

  // Add character_id back to abilities
  await db.schema
    .alterTable("abilities")
    .addColumn("character_id", "uuid")
    .execute();

  // We can't restore the data, but we can restore the constraints
  // The data would need to be restored from backup

  await db.schema
    .createIndex("idx_abilities_character_id")
    .on("abilities")
    .column("character_id")
    .execute();

  await db.schema
    .alterTable("abilities")
    .addForeignKeyConstraint(
      "abilities_character_id_fkey",
      ["character_id"],
      "characters",
      ["id"],
    )
    .execute();

  // Drop junction table
  await db.schema.dropTable("characters_to_abilities").execute();

  console.log("Schema restored. Data must be restored from backup.");
}
