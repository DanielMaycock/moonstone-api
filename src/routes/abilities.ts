import { sValidator } from "@hono/standard-validator";
import { Hono } from "hono";
import * as v from "valibot";
import { abilitiesQuery } from "../queries/abilities";

const abilities = new Hono();

const abilitiesQuerySchema = v.object({
  name: v.optional(v.string()),
  character: v.optional(v.string()),
  type: v.optional(
    v.union([v.literal("passive"), v.literal("active"), v.literal("arcane")]),
  ),
});

abilities.get("/", sValidator("query", abilitiesQuerySchema), async (c) => {
  const { name, character, type } = c.req.valid("query");

  let query = abilitiesQuery()
    .innerJoin("characters", "abilities.characterId", "characters.id")
    .select("characters.name as character");

  if (name !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["abilities.name"]),
        "like",
        `%${name.toLowerCase()}%`,
      ),
    );
  }

  if (character !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["characters.name"]),
        "like",
        `%${character.toLowerCase()}%`,
      ),
    );
  }

  if (type !== undefined) {
    switch (type) {
      case "passive":
        query = query.where("abilities.type", "=", "Passive");
        break;
      case "active":
        query = query.where("abilities.type", "=", "Active");
        break;
      case "arcane":
        query = query.where("abilities.type", "=", "Arcane");
        break;
    }
  }

  return c.json(await query.execute());
});

export default abilities;
