import { jsonArrayFrom } from "kysely/helpers/postgres";
import { db } from "../db";
import { jsonStringArrayFrom } from "./helpers";

export const meleeMoveQuery = () => {
  return db
    .selectFrom("meleeMoves as principalMove")
    .leftJoin(
      "meleeMoves as upgrades",
      "principalMove.upgradesId",
      "upgrades.id",
    )
    .select((eb) => [
      "principalMove.name",
      "principalMove.additionalEffects",
      "principalMove.endStep",
      "principalMove.id",
      "upgrades.name as upgrades",
      jsonStringArrayFrom(
        eb
          .selectFrom("meleeMovesToDamageTypes")
          .whereRef(
            "meleeMovesToDamageTypes.meleeMoveId",
            "=",
            "principalMove.id",
          )
          .select("meleeMovesToDamageTypes.damageType")
          .orderBy("meleeMovesToDamageTypes.damageType"),
        "damage_type",
      ).as("damageTypes"),
      jsonArrayFrom(
        eb
          .selectFrom("meleeOutcomes")
          .innerJoin(
            "meleeMoves as opposingMove",
            "meleeOutcomes.opposingMoveId",
            "opposingMove.id",
          )
          .whereRef("meleeOutcomes.meleeMoveId", "=", "principalMove.id")
          .select(["opposingMove.name as opposingMove", "damage", "isCounter"]),
      ).as("meleeOutcomes"),
    ]);
};
