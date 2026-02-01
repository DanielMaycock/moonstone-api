import { type Kysely, sql } from "kysely";

export const up = async (db: Kysely<unknown>) => {
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

  // Abilities (without character_id - uses junction table)
  await db.schema
    .createTable("ability_type")
    .addColumn("ability_type", "text", (col) => col.primaryKey())
    .execute();

  await db.schema
    .createTable("abilities")
    .addColumn("id", "uuid", (col) =>
      col.primaryKey().defaultTo(sql`gen_random_uuid()`),
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

  // Junction table for characters to abilities (many-to-many)
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

  // Arcane outcomes
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

  // Indexes for foreign keys and common queries
  await db.schema
    .createIndex("idx_characters_to_factions_character_id")
    .on("characters_to_factions")
    .column("character_id")
    .execute();

  await db.schema
    .createIndex("idx_characters_to_keywords_character_id")
    .on("characters_to_keywords")
    .column("character_id")
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

  await db.schema
    .createIndex("idx_arcane_outcomes_ability_id")
    .on("arcane_outcomes")
    .column("ability_id")
    .execute();

  await db.schema
    .createIndex("idx_arcane_outcome_cards_arcane_outcome_id")
    .on("arcane_outcome_cards")
    .column("arcane_outcome_id")
    .execute();

  await db.schema
    .createIndex("idx_melee_moves_to_damage_types_melee_move_id")
    .on("melee_moves_to_damage_types")
    .column("melee_move_id")
    .execute();

  await db.schema
    .createIndex("idx_melee_outcomes_melee_move_id")
    .on("melee_outcomes")
    .column("melee_move_id")
    .execute();

  await db.schema
    .createIndex("idx_abilities_type")
    .on("abilities")
    .column("type")
    .execute();

  await db.schema
    .createIndex("idx_melee_moves_upgrades_id")
    .on("melee_moves")
    .column("upgrades_id")
    .execute();
};

export async function down(db: Kysely<unknown>): Promise<void> {
  // Drop indexes
  await db.schema
    .dropIndex("idx_characters_to_factions_character_id")
    .execute();
  await db.schema
    .dropIndex("idx_characters_to_keywords_character_id")
    .execute();
  await db.schema
    .dropIndex("idx_characters_to_abilities_character_id")
    .execute();
  await db.schema.dropIndex("idx_characters_to_abilities_ability_id").execute();
  await db.schema.dropIndex("idx_arcane_outcomes_ability_id").execute();
  await db.schema
    .dropIndex("idx_arcane_outcome_cards_arcane_outcome_id")
    .execute();
  await db.schema
    .dropIndex("idx_melee_moves_to_damage_types_melee_move_id")
    .execute();
  await db.schema.dropIndex("idx_melee_outcomes_melee_move_id").execute();
  await db.schema.dropIndex("idx_abilities_type").execute();
  await db.schema.dropIndex("idx_melee_moves_upgrades_id").execute();

  // Drop tables in reverse order of creation
  await db.schema.dropTable("arcane_outcome_cards").execute();
  await db.schema.dropTable("arcane_outcome_card_colors").execute();
  await db.schema.dropTable("arcane_outcome_card_values").execute();
  await db.schema.dropTable("arcane_outcomes").execute();
  await db.schema.dropTable("characters_to_abilities").execute();
  await db.schema.dropTable("abilities").execute();
  await db.schema.dropTable("ability_type").execute();
  await db.schema.dropTable("characters_to_keywords").execute();
  await db.schema.dropTable("characters_to_factions").execute();
  await db.schema.dropTable("characters").execute();
  await db.schema.dropTable("keywords").execute();
  await db.schema.dropTable("factions").execute();
  await db.schema.dropTable("melee_moves_to_damage_types").execute();
  await db.schema.dropTable("melee_outcomes").execute();
  await db.schema.dropTable("melee_moves").execute();
  await db.schema.dropTable("damage_types").execute();
}
