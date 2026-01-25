import { type Kysely, sql } from "kysely";
import {
  basicMoves,
  basicMovesOutcomes,
  basicMovesToDamageTypes,
  damageTypeList,
} from "../data/basicMeleeData";

export const up = async (db: Kysely<any>) => {
  // Melee tables
  await db.schema
    .createTable("damage_types")
    .addColumn("damage_type", "text", (col) => col.primaryKey())
    .execute();

  await db.schema
    .createTable("melee_moves")
    .addColumn("id", "uuid", (col) =>
      col.primaryKey().defaultTo(sql`gen_random_uuid()`),
    )
    .addColumn("name", "text", (col) => col.notNull())
    .addColumn("upgrades_id", "uuid", (col) => col.references("melee_moves.id"))
    .addColumn("additional_effects", "text")
    .addColumn("end_step", "text")
    .execute();

  await db.schema
    .createTable("melee_outcomes")
    .addColumn("melee_move_id", "uuid", (col) =>
      col.notNull().references("melee_moves.id").onDelete("cascade"),
    )
    .addColumn("opposing_move_id", "uuid", (col) =>
      col.notNull().references("melee_moves.id").onDelete("cascade"),
    )
    .addColumn("damage", "integer")
    .addColumn("is_counter", "boolean", (col) => col.notNull())
    .addPrimaryKeyConstraint("primary_key", [
      "melee_move_id",
      "opposing_move_id",
    ])
    .execute();

  await db.schema
    .createTable("melee_moves_to_damage_types")
    .addColumn("melee_move_id", "uuid", (col) =>
      col.notNull().references("melee_moves.id").onDelete("cascade"),
    )
    .addColumn("damage_type", "text", (col) =>
      col.notNull().references("damage_types.damage_type").onDelete("cascade"),
    )
    .execute();

  // Character tables
  await db.schema
    .createTable("factions")
    .addColumn("faction", "text", (col) => col.primaryKey())
    .execute();
  await db.schema
    .createTable("keywords")
    .addColumn("keyword", "text", (col) => col.primaryKey())
    .execute();
  await db.schema
    .createTable("characters")
    .addColumn("id", "uuid", (col) =>
      col.primaryKey().defaultTo(sql`gen_random_uuid()`),
    )
    .addColumn("name", "text", (col) => col.notNull().unique())
    .addColumn("health", "integer", (col) => col.notNull())
    .addColumn("energy", sql`integer[]`, (col) => col.notNull())
    .addColumn("melee", "integer")
    .addColumn("melee_range", "integer")
    .addColumn("arcane", "integer")
    .addColumn("evade", "integer", (col) => col.notNull())
    .addColumn("base_size", "text", (col) => col.notNull())
    .addColumn("signature_move_id", "uuid", (col) =>
      col.references("melee_moves.id"),
    )
    .addColumn("head_filename", "text")
    .addColumn("full_filename", "text")
    .execute();
  await db.schema
    .createTable("characters_to_factions")
    .addColumn("character_id", "uuid", (col) =>
      col.notNull().references("characters.id").onDelete("cascade"),
    )
    .addColumn("faction", "text", (col) =>
      col.notNull().references("factions.faction").onDelete("cascade"),
    )
    .execute();
  await db.schema
    .createTable("characters_to_keywords")
    .addColumn("character_id", "uuid", (col) =>
      col.notNull().references("characters.id").onDelete("cascade"),
    )
    .addColumn("keyword", "text", (col) =>
      col.notNull().references("keywords.keyword").onDelete("cascade"),
    )
    .execute();

  //Abilities
  await db.schema
    .createTable("ability_type")
    .addColumn("ability_type", "text", (col) => col.primaryKey())
    .execute();
  await db.schema
    .createTable("abilities")
    .addColumn("id", "uuid", (col) =>
      col.primaryKey().defaultTo(sql`gen_random_uuid()`),
    )
    .addColumn("character_id", "uuid", (col) =>
      col.references("characters.id").notNull(),
    )
    .addColumn("name", "text", (col) => col.notNull())
    .addColumn("type", "text", (col) =>
      col.notNull().references("ability_type.ability_type"),
    )
    .addColumn("description", "text")
    .addColumn("energy_cost", "integer")
    .addColumn("range", "integer")
    .addColumn("pulse", "boolean")
    .addColumn("once_per_turn", "boolean")
    .addColumn("once_per_game", "boolean")
    .addColumn("needs_reloading", "boolean", (col) => col.notNull())
    .execute();

  await db.schema
    .createTable("arcane_outcomes")
    .addColumn("id", "uuid", (col) =>
      col.primaryKey().defaultTo(sql`gen_random_uuid()`),
    )
    .addColumn("ability_id", "uuid", (col) =>
      col.notNull().references("abilities.id").onDelete("cascade"),
    )
    .addColumn("outcome_text", "text", (col) => col.notNull())
    .execute();

  await db.schema
    .createTable("arcane_outcome_card_values")
    .addColumn("value", "text", (col) => col.primaryKey())
    .execute();

  await db.schema
    .createTable("arcane_outcome_card_colors")
    .addColumn("color", "text", (col) => col.primaryKey())
    .execute();

  await db.schema
    .createTable("arcane_outcome_cards")
    .addColumn("id", "uuid", (col) => col.primaryKey())
    .addColumn("arcane_outcome_id", "uuid", (col) =>
      col.notNull().references("arcane_outcomes.id").onDelete("cascade"),
    )
    .addColumn("color", "text", (col) =>
      col.references("arcane_outcome_card_colors.color"),
    )
    .addColumn("value", "text", (col) =>
      col.references("arcane_outcome_card_values.value"),
    )
    .addColumn("is_catastrophe", "boolean", (col) => col.notNull())
    .execute();

  // Add basic melee data
  await db.insertInto("damage_types").values(damageTypeList).execute();
  await db.insertInto("melee_moves").values(basicMoves).execute();
  await db
    .insertInto("melee_moves_to_damage_types")
    .values(basicMovesToDamageTypes)
    .execute();
  await db.insertInto("melee_outcomes").values(basicMovesOutcomes).execute();

  // Add basic data
  await db
    .insertInto("factions")
    .values([
      { faction: "Commonwealth" },
      { faction: "Dominion" },
      { faction: "Leshavult" },
      { faction: "Shades" },
    ])
    .execute();

  await db
    .insertInto("ability_type")
    .values([
      { ability_type: "Passive" },
      { ability_type: "Active" },
      { ability_type: "Arcane" },
    ])
    .execute();

  await db
    .insertInto("arcane_outcome_card_colors")
    .values([{ color: "Pink" }, { color: "Blue" }, { color: "Green" }])
    .execute();

  await db
    .insertInto("arcane_outcome_card_values")
    .values([{ value: "1" }, { value: "2" }, { value: "3" }, { value: "X" }])
    .execute();
};

export async function down(db: Kysely<any>): Promise<void> {
  await db.schema.dropTable("arcane_outcome_cards").execute();
  await db.schema.dropTable("arcane_outcomes").execute();
  await db.schema.dropTable("arcane_outcome_card_colors").execute();
  await db.schema.dropTable("arcane_outcome_card_values").execute();
  await db.schema.dropTable("characters_to_keywords").execute();
  await db.schema.dropTable("characters_to_factions").execute();
  await db.schema.dropTable("abilities").execute();
  await db.schema.dropTable("characters").execute();
  await db.schema.dropTable("keywords").execute();
  await db.schema.dropTable("factions").execute();
  await db.schema.dropTable("ability_type").execute();

  await db.schema.dropTable("melee_moves_to_damage_types").execute();
  await db.schema.dropTable("melee_outcomes").execute();
  await db.schema.dropTable("melee_moves").execute();
  await db.schema.dropTable("damage_types").execute();
}
