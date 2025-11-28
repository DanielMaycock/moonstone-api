import { Hono } from "hono";
import characters from "./routes/characters";

const app = new Hono();

app.route("/characters", characters);

export default app;
