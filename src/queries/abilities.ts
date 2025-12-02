import { jsonArrayFrom } from "kysely/helpers/postgres";
import { db } from "../db";

export const abilitiesQuery = (
) => {
  return db
    .selectFrom("abilities")
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