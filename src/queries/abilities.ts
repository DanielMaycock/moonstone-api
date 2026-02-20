import { jsonArrayFrom } from "kysely/helpers/postgres";
import { db } from "../db";

export const abilitiesQuery = () => {
  return db.selectFrom("abilities").select((eb) => [
    "abilities.id",
    "abilities.name",
    "abilities.description",
    "abilities.energyCost",
    "abilities.oncePerGame",
    "abilities.oncePerTurn",
    "abilities.pulse",
    "abilities.range",
    "abilities.type",
    "abilities.reloadsAbilityId",
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
                "arcaneOutcomes.id",
              )
              .select([
                "arcaneOutcomeCards.color",
                "arcaneOutcomeCards.value",
                "arcaneOutcomeCards.isCatastrophe",
              ]),
          ).as("outcomeCards"),
        ]),
    ).as("arcaneOutcomes"),
  ]);
};
