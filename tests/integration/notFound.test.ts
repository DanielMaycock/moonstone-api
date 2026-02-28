import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("Unknown routes", () => {
  it("returns 404 with error json for an unknown path", async () => {
    const res = await app.request("/nonexistent");
    expect(res.status).toBe(404);
    expect(await res.json()).toHaveProperty("error");
  });

  it("returns 404 for an unknown nested path", async () => {
    const res = await app.request("/characters/extra/segments");
    expect(res.status).toBe(404);
  });
});
