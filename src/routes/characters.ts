import { Hono } from "hono";
import {
  charactersQuery,
  doesCharacterHaveKeyword,
  isCharacterInFaction,
} from "../queries/characters";
import z from "zod";
import { sValidator } from "@hono/standard-validator";

const characters = new Hono();

const characterQueryFieldSchema = z.literal([
  "melee",
  "range",
  "arcane",
  "evade",
  "baseSize",
  "factions",
  "keywords",
  "health",
  "energy",
  "headFilename",
  "signatureMove",
  "abilities",
]);

export type CharacterQueryField = z.infer<typeof characterQueryFieldSchema>;

const charactersQuerySchema = z.object({
  name: z.string().optional(),
  faction: z.string().optional(),
  keyword: z.string().optional(),
  fields: z.array(characterQueryFieldSchema).optional(),
});

characters.get("/", sValidator("query", charactersQuerySchema), async (c) => {
  const { name, faction, keyword, fields } = c.req.valid("query");

  let query = charactersQuery(
    fields !== undefined && fields.length > 0 ? fields : undefined
  );

  if (name !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(fn<string>("lower", ["name"]), "like", `%${name.toLowerCase()}%`)
    );
  }
  if (faction !== undefined) {
    query = query.where((eb) =>
      isCharacterInFaction(eb.val(faction), eb.ref("characters.id"))
    );
  }

  if (keyword !== undefined) {
    query = query.where((eb) =>
      doesCharacterHaveKeyword(eb.val(keyword), eb.ref("characters.id"))
    );
  }

  return c.json(await query.execute());
});
characters.get("/:id", async (c) =>
  c.json(
    await charactersQuery()
      .where("id", "=", c.req.param("id"))
      .executeTakeFirst()
  )
);

export default characters;
