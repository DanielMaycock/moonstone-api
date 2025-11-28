import { Hono } from "hono";
import { charactersQuery } from "../queries/characters";

const characters = new Hono();

characters.get("/", async (c) => c.json(await charactersQuery()));
characters.get("/:id", (c) => c.json(`get ${c.req.param("id")}`));

export default characters;
