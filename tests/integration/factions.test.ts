import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("GET /factions", () => {
  it("returns 200 and a non-empty array", async () => {
    const res = await app.request("/factions");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(Array.isArray(body)).toBe(true);
    expect(body.length).toBeGreaterThan(0);
  });

  it("each faction has a name string", async () => {
    const res = await app.request("/factions");
    const body = await res.json();
    for (const faction of body) {
      expect(typeof faction.name).toBe("string");
      expect(faction.name.length).toBeGreaterThan(0);
    }
  });
});
