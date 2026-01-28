import { sValidator } from "@hono/standard-validator";
import { Hono } from "hono";
import * as v from "valibot";
import {
  charactersQuery,
  doesCharacterHaveKeyword,
  isCharacterInFaction,
} from "../queries/characters";

const characters = new Hono();

const characterQueryFieldSchema = v.union([
  v.literal("melee"),
  v.literal("range"),
  v.literal("arcane"),
  v.literal("evade"),
  v.literal("baseSize"),
  v.literal("factions"),
  v.literal("keywords"),
  v.literal("health"),
  v.literal("energy"),
  v.literal("headFilename"),
  v.literal("signatureMove"),
  v.literal("abilities"),
]);

export type CharacterQueryField = v.InferOutput<
  typeof characterQueryFieldSchema
>;

const charactersQuerySchema = v.object({
  name: v.optional(v.string()),
  faction: v.optional(v.string()),
  keyword: v.optional(v.string()),
  fields: v.optional(v.array(characterQueryFieldSchema)),
});

characters.get("/", sValidator("query", charactersQuerySchema), async (c) => {
  const { name, faction, keyword, fields } = c.req.valid("query");

  let query = charactersQuery(
    fields !== undefined && fields.length > 0 ? fields : undefined,
  );

  if (name !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(fn<string>("lower", ["name"]), "like", `%${name.toLowerCase()}%`),
    );
  }
  if (faction !== undefined) {
    query = query.where((eb) =>
      isCharacterInFaction(eb.val(faction), eb.ref("characters.id")),
    );
  }

  if (keyword !== undefined) {
    query = query.where((eb) =>
      doesCharacterHaveKeyword(eb.val(keyword), eb.ref("characters.id")),
    );
  }

  return c.json(await query.execute());
});

const idParamSchema = v.object({
  id: v.pipe(v.string(), v.uuid()),
});

characters.get("/:id", sValidator("param", idParamSchema), async (c) => {
  const { id } = c.req.valid("param");
  const result = await charactersQuery()
    .where("id", "=", id)
    .executeTakeFirst();
  if (!result) {
    return c.json({ error: "Character not found" }, 404);
  }
  return c.json(result);
});

export default characters;
