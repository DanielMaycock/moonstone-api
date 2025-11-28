import { jsonArrayFrom, jsonObjectFrom } from "kysely/helpers/postgres";
import { db } from "../db";

export const charactersQuery = async () =>
  await db
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
      jsonArrayFrom(
        eb
          .selectFrom("charactersToFactions")
          .select("charactersToFactions.faction")
          .whereRef("charactersToFactions.characterId", "=", "characters.id")
          .orderBy("charactersToFactions.faction")
      ).as("factions"),
      jsonArrayFrom(
        eb
          .selectFrom("charactersToKeywords")
          .select("charactersToKeywords.keyword")
          .whereRef("charactersToKeywords.characterId", "=", "characters.id")
          .orderBy("charactersToKeywords.keyword")
      ).as("keywords"),
      jsonObjectFrom(
        eb
          .selectFrom("meleeMoves as signatureMove")
          .whereRef("signatureMove.id", "=", "characters.signatureMoveId")
          .innerJoin(
            "meleeMoves as upgrades",
            "signatureMove.upgradesId",
            "upgrades.id"
          )
          .select((eb) => [
            "signatureMove.name",
            "signatureMove.additionalEffects",
            "signatureMove.endStep",
            "signatureMove.id",
            "upgrades.name as upgrades",
            jsonArrayFrom(
              eb
                .selectFrom("meleeOutcomes")
                .innerJoin(
                  "meleeMoves as opposingMove",
                  "meleeOutcomes.opposingMoveId",
                  "opposingMove.id"
                )
                .whereRef("meleeOutcomes.meleeMoveId", "=", "signatureMove.id")
                .select([
                  "opposingMove.name as opposingMove",
                  "damage",
                  "isCounter",
                ])
            ).as("meleeOutcomes"),
          ])
      ).as("signatureMove"),
      jsonArrayFrom(
        eb
          .selectFrom("abilities")
          .whereRef("abilities.characterId", "=", "characters.id")
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
                      ).select([
                        "arcaneOutcomeCards.color",
                        "arcaneOutcomeCards.value",
                        "arcaneOutcomeCards.isCatastrophe",
                      ])
                  ).as("outcomeCards"),
                ])
            ).as("arcaneOutcomes"),
          ])
      ).as("abilities"),
    ])
    .execute();
