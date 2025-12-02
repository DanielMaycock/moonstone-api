import { Hono } from "hono";
import { factionsQuery } from "../queries/factions";

const factions = new Hono();

factions.get("/", async (c) => c.json(await factionsQuery().execute()));

export default factions;
