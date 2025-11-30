import { Hono } from "hono";
import { logger } from "hono/logger";

import characters from "./routes/characters";

const app = new Hono();

app.use(logger());
app.route("/characters", characters);

export default app;
