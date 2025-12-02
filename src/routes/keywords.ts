import { Hono } from "hono";
import { keywordsQuery } from "../queries/keywords";

const keywords = new Hono();

keywords.get("/", async (c) => c.json(await keywordsQuery().execute()));

export default keywords;
