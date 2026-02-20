import { sValidator } from "@hono/standard-validator";
import { Hono } from "hono";
import * as v from "valibot";
import { applyFormat } from "../middleware/format";
import { meleeMoveQuery } from "../queries/meleeMoves";

const meleeMoves = new Hono();

const meleeMoveQuerySchema = v.object({
  name: v.optional(v.string()),
  character: v.optional(v.string()),
  upgrades: v.optional(v.string()),
  type: v.optional(v.union([v.literal("basic"), v.literal("signature")])),
  format: v.optional(v.union([v.literal("rich"), v.literal("plain")])),
});

meleeMoves.get("/", sValidator("query", meleeMoveQuerySchema), async (c) => {
  const { name, character, upgrades, type, format } = c.req.valid("query");

  let query = meleeMoveQuery()
    .leftJoin("characters", "principalMove.id", "characters.signatureMoveId")
    .select("characters.name as character");

  if (name !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["principalMove.name"]),
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

  if (upgrades !== undefined) {
    query = query.where(({ eb, fn }) =>
      eb(
        fn<string>("lower", ["upgrades.name"]),
        "like",
        `%${upgrades.toLowerCase()}%`,
      ),
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
  return c.json(applyFormat(await query.execute(), format));
});

const idParamSchema = v.object({
  id: v.pipe(v.string(), v.uuid()),
});

const idQuerySchema = v.object({
  format: v.optional(v.union([v.literal("rich"), v.literal("plain")])),
});

meleeMoves.get(
  "/:id",
  sValidator("param", idParamSchema),
  sValidator("query", idQuerySchema),
  async (c) => {
    const { id } = c.req.valid("param");
    const { format } = c.req.valid("query");
    const result = await meleeMoveQuery()
      .where("principalMove.id", "=", id)
      .executeTakeFirst();
    if (!result) {
      return c.json({ error: "Melee move not found" }, 404);
    }
    return c.json(applyFormat(result, format));
  },
);

export default meleeMoves;
