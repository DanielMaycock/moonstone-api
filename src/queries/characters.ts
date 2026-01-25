import { type Expression, expressionBuilder } from "kysely";
import { jsonArrayFrom, jsonObjectFrom } from "kysely/helpers/postgres";
import { db } from "../db";
import type { DB } from "../db/db";
import type { CharacterQueryField } from "../routes/characters";
import { abilitiesQuery } from "./abilities";
import { concat, jsonStringArrayFrom, lower } from "./helpers";
import { meleeMoveQuery } from "./meleeMoves";

export const characterFactionsQuery = (
  characterId: Expression<string | null>,
) => {
  const eb = expressionBuilder<DB>();

  return eb
    .selectFrom("charactersToFactions")
    .select("charactersToFactions.faction")
    .whereRef("charactersToFactions.characterId", "=", characterId)
    .orderBy("charactersToFactions.faction");
};

export const characterKeywordsQuery = (
  characterId: Expression<string | null>,
) => {
  const eb = expressionBuilder<DB>();

  return eb
    .selectFrom("charactersToKeywords")
    .select("charactersToKeywords.keyword")
    .whereRef("charactersToKeywords.characterId", "=", characterId)
    .orderBy("charactersToKeywords.keyword");
};

export const isCharacterInFaction = (
  faction: Expression<string>,
  characterId: Expression<string>,
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
          lower(concat(eb.val("%"), faction, eb.val("%"))),
        ),
      ),
  );
};

export const doesCharacterHaveKeyword = (
  keyword: Expression<string>,
  characterId: Expression<string>,
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
          lower(concat(eb.val("%"), keyword, eb.val("%"))),
        ),
      ),
  );
};

export const charactersQuery = (fields?: Array<CharacterQueryField>) =>
  db
    .selectFrom("characters")
    .select(["id", "name"])
    .$if(fields === undefined || fields.includes("melee"), (qb) =>
      qb.select("melee"),
    )
    .$if(fields === undefined || fields.includes("range"), (qb) =>
      qb.select("meleeRange as range"),
    )
    .$if(fields === undefined || fields.includes("arcane"), (qb) =>
      qb.select("arcane"),
    )
    .$if(fields === undefined || fields.includes("evade"), (qb) =>
      qb.select("evade"),
    )
    .$if(fields === undefined || fields.includes("health"), (qb) =>
      qb.select("health"),
    )
    .$if(fields === undefined || fields.includes("energy"), (qb) =>
      qb.select("energy"),
    )
    .$if(fields === undefined || fields.includes("baseSize"), (qb) =>
      qb.select("baseSize"),
    )
    .$if(fields === undefined || fields.includes("headFilename"), (qb) =>
      qb.select("headFilename"),
    )
    .$if(fields === undefined || fields.includes("factions"), (qb) =>
      qb.select((eb) => [
        jsonStringArrayFrom(
          characterFactionsQuery(eb.ref("characters.id")),
          "faction",
        ).as("factions"),
      ]),
    )
    .$if(fields === undefined || fields.includes("keywords"), (qb) =>
      qb.select((eb) => [
        jsonStringArrayFrom(
          characterKeywordsQuery(eb.ref("characters.id")),
          "keyword",
        ).as("keywords"),
      ]),
    )
    .$if(fields === undefined || fields.includes("signatureMove"), (qb) =>
      qb.select((eb) => [
        jsonObjectFrom(
          meleeMoveQuery().whereRef(
            "principalMove.id",
            "=",
            eb.ref("characters.signatureMoveId"),
          ),
        ).as("signatureMove"),
      ]),
    )
    .$if(fields === undefined || fields.includes("abilities"), (qb) =>
      qb.select((eb) => [
        jsonArrayFrom(
          abilitiesQuery().whereRef(
            "abilities.characterId",
            "=",
            eb.ref("characters.id"),
          ),
        ).as("abilities"),
      ]),
    );
