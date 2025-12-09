import { Hono } from "hono";
import { abilitiesQuery } from "../queries/abilities";

const abilities = new Hono();

abilities.get("/", async (c) =>
  c.json(
    await abilitiesQuery()
      .innerJoin("characters", "abilities.characterId", "characters.id")
      .select("characters.name as character")
      .execute()
  )
);

export default abilities;
