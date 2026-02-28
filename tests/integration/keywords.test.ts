import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("GET /keywords", () => {
  it("returns 200 and a non-empty array", async () => {
    const res = await app.request("/keywords");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(Array.isArray(body)).toBe(true);
    expect(body.length).toBeGreaterThan(0);
  });

  it("each keyword has a keyword string", async () => {
    const res = await app.request("/keywords");
    const body = await res.json();
    for (const kw of body) {
      expect(typeof kw.keyword).toBe("string");
      expect(kw.keyword.length).toBeGreaterThan(0);
    }
  });
});
