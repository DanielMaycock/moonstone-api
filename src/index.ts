import { Hono } from "hono";
import { serveStatic } from "hono/bun";
import { cors } from "hono/cors";
import { logger } from "hono/logger";
import abilities from "./routes/abilities";
import characters from "./routes/characters";
import factions from "./routes/factions";
import keywords from "./routes/keywords";
import meleeMoves from "./routes/meleeMoves";

const app = new Hono();

app.use("/*", cors());

app.use(logger());
app.route("/characters", characters);
app.route("/abilities", abilities);
app.route("/factions", factions);
app.route("/keywords", keywords);
app.route("/meleeMoves", meleeMoves);

app.use("/images/*", serveStatic({ root: "./" }));
export default app;
