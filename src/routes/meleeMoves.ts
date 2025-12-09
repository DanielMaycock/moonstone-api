import { Hono } from "hono";
import { meleeMoveQuery } from "../queries/meleeMoves";
import * as v from "valibot";
import { sValidator } from "@hono/standard-validator";

const meleeMoves = new Hono();

const meleeMoveQuerySchema = v.object({
  name: v.optional(v.string()),
  character: v.optional(v.string()),
  upgrades: v.optional(v.string()),
  type: v.optional(v.union([v.literal("basic"), v.literal("signature")])),
});

meleeMoves.get("/", sValidator("query", meleeMoveQuerySchema), async (c) => {
  const { name, character, upgrades, type } = c.req.valid("query");

  let query = meleeMoveQuery()
    .leftJoin("characters", "principalMove.id", "characters.signatureMoveId")
    .select("characters.name as character");

  if (name !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["principalMove.name"]),
        "like",
        `%${name.toLowerCase()}%`
      )
    );
  }

  if(character !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["characters.name"]),
        "like",
        `%${character.toLowerCase()}%`
      )
    );
  }

  if (upgrades !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["upgrades.name"]),
        "like",
        `%${upgrades.toLowerCase()}%`
      )
    );
  }

  if (type !== undefined) {
    switch (type) {
      case "basic":
        query = query.where("principalMove.upgradesId", "is", null);
        break;
      case "signature":
        query = query.where("principalMove.upgradesId", "is not", null);
        break;
    }
  }
  return c.json(await query.execute());
});

meleeMoves.get("/:id", async (c) => {
  const { id } = c.req.param();
  const query = meleeMoveQuery().where("principalMove.id", "=", id);
  const result = await query.executeTakeFirst();
  if (!result) {
    return c.json({ error: "Melee move not found" }, 404);
  }
  return c.json(result);
});

export default meleeMoves;
