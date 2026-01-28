import type { Kysely } from "kysely";

export async function up(db: Kysely<unknown>): Promise<void> {
  // Foreign key indexes for JOINs
  await db.schema
    .createIndex("idx_abilities_character_id")
    .on("abilities")
    .column("character_id")
    .execute();

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

  // Exact match indexes
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
}

export async function down(db: Kysely<unknown>): Promise<void> {
  await db.schema.dropIndex("idx_abilities_character_id").execute();
  await db.schema
    .dropIndex("idx_characters_to_factions_character_id")
    .execute();
  await db.schema
    .dropIndex("idx_characters_to_keywords_character_id")
    .execute();
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
}
