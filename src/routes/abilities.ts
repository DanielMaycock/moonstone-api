import { Hono } from "hono";
import { abilitiesQuery } from "../queries/abilities";

const abilites = new Hono();

abilites.get("/", async (c) => c.json(await abilitiesQuery().execute()));

export default abilites;
