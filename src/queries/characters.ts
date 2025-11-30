import { db } from "../db";
import type { DB } from "../db/db";
import { expressionBuilder, sql, type Expression, type Simplify } from "kysely";
import { jsonArrayFrom, jsonObjectFrom } from "kysely/helpers/postgres";
import { concat, lower } from "./helpers";

const jsonStringArrayFrom = <O>(expr: Expression<O>, field: string) =>
  sql<
    Simplify<O>[]
  >`(select json_agg(to_json(agg)->${field}) from ${expr} as agg)`;

export const characterFactionsQuery = (
  characterId: Expression<string | null>
) => {
  // Create an expression builder without any tables in the context.
  // This way we make no assumptions about the calling context.
  const eb = expressionBuilder<DB>();

  return eb
    .selectFrom("charactersToFactions")
    .select("charactersToFactions.faction")
    .whereRef("charactersToFactions.characterId", "=", characterId)
    .orderBy("charactersToFactions.faction");
};

export const characterKeywordsQuery = (
  characterId: Expression<string | null>
) => {
  // Create an expression builder without any tables in the context.
  // This way we make no assumptions about the calling context.
  const eb = expressionBuilder<DB>();

  return eb
    .selectFrom("charactersToKeywords")
    .select("charactersToKeywords.keyword")
    .whereRef("charactersToKeywords.characterId", "=", characterId)
    .orderBy("charactersToKeywords.keyword");
};

export const characterAbilitiesQuery = (
  characterId: Expression<string | null>
) => {
  // Create an expression builder without any tables in the context.
  // This way we make no assumptions about the calling context.
  const eb = expressionBuilder<DB, "abilities">();

  return eb
    .selectFrom("abilities")
    .whereRef("abilities.characterId", "=", characterId)
    .select((eb) => [
      "id",
      "name",
      "description",
      "energyCost",
      "oncePerGame",
      "oncePerTurn",
      "pulse",
      "range",
      jsonArrayFrom(
        eb
          .selectFrom("arcaneOutcomes")
          .whereRef("arcaneOutcomes.abilityId", "=", "abilities.id")
          .select((eb) => [
            "arcaneOutcomes.id",
            "arcaneOutcomes.outcomeText",
            jsonArrayFrom(
              eb
                .selectFrom("arcaneOutcomeCards")
                .whereRef(
                  "arcaneOutcomeCards.arcaneOutcomeId",
                  "=",
                  "arcaneOutcomes.id"
                )
                .select([
                  "arcaneOutcomeCards.color",
                  "arcaneOutcomeCards.value",
                  "arcaneOutcomeCards.isCatastrophe",
                ])
            ).as("outcomeCards"),
          ])
      ).as("arcaneOutcomes"),
    ]);
};

export const meleeMoveQuery = (id: Expression<string | null>) => {
  const eb = expressionBuilder<DB, "meleeMoves">();

  return eb
    .selectFrom("meleeMoves as principalMove")
    .whereRef("principalMove.id", "=", id)
    .innerJoin(
      "meleeMoves as upgrades",
      "principalMove.upgradesId",
      "upgrades.id"
    )
    .select((eb) => [
      "principalMove.name",
      "principalMove.additionalEffects",
      "principalMove.endStep",
      "principalMove.id",
      "upgrades.name as upgrades",
      jsonArrayFrom(
        eb
          .selectFrom("meleeOutcomes")
          .innerJoin(
            "meleeMoves as opposingMove",
            "meleeOutcomes.opposingMoveId",
            "opposingMove.id"
          )
          .whereRef("meleeOutcomes.meleeMoveId", "=", "principalMove.id")
          .select(["opposingMove.name as opposingMove", "damage", "isCounter"])
      ).as("meleeOutcomes"),
    ]);
};

export const isCharacterInFaction = (
  faction: Expression<string>,
  characterId: Expression<string>
) => {
  const eb = expressionBuilder<DB>();

  return eb.exists(
    eb
      .selectFrom("charactersToFactions")
      .select("faction")
      .where("charactersToFactions.characterId", "=", characterId)
      .where(({ eb, ref }) =>
        eb(
          lower(ref("charactersToFactions.faction")),
          "like",
          lower(concat(eb.val("%"), faction, eb.val("%")))
        )
      )
  );
};

export const doesCharacterHaveKeyword = (
  keyword: Expression<string>,
  characterId: Expression<string>
) => {
  const eb = expressionBuilder<DB>();

  return eb.exists(
    eb
      .selectFrom("charactersToKeywords")
      .select("keyword")
      .where("charactersToKeywords.characterId", "=", characterId)
      .where(({ eb, ref }) =>
        eb(
          lower(ref("charactersToKeywords.keyword")),
          "like",
          lower(concat(eb.val("%"), keyword, eb.val("%")))
        )
      )
  );
};

export const charactersQuery = () =>
  db
    .selectFrom("characters")
    .select((eb) => [
      "id",
      "name",
      "melee",
      "meleeRange",
      "arcane",
      "evade",
      "health",
      "energy",
      "baseSize",
      "headFilename",
      jsonStringArrayFrom(
        characterFactionsQuery(eb.ref("characters.id")),
        "faction"
      ).as("factions"),
      jsonStringArrayFrom(
        characterKeywordsQuery(eb.ref("characters.id")),
        "keyword"
      ).as("keywords"),
      jsonObjectFrom(meleeMoveQuery(eb.ref("characters.signatureMoveId"))).as(
        "signatureMove"
      ),
      jsonArrayFrom(characterAbilitiesQuery(eb.ref("characters.id"))).as(
        "abilities"
      ),
    ]);
