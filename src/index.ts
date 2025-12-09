import { Hono } from "hono";
import { logger } from "hono/logger";

import characters from "./routes/characters";
import factions from "./routes/factions";
import keywords from "./routes/keywords";
import abilities from "./routes/abilities";
import meleeMoves from "./routes/meleeMoves";

const app = new Hono();

app.use(logger());
app.route("/characters", characters);
app.route("/abilities", abilities);
app.route("/factions", factions);
app.route("/keywords", keywords);
app.route("/meleeMoves", meleeMoves);

export default app;
