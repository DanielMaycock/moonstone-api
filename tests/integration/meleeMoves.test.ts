import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("GET /meleeMoves", () => {
  it("returns 200 and a non-empty array", async () => {
    const res = await app.request("/meleeMoves");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(Array.isArray(body)).toBe(true);
    expect(body.length).toBeGreaterThan(0);
  });

  it("each move has id, name and damageTypes array", async () => {
    const res = await app.request("/meleeMoves");
    const body = await res.json();
    for (const move of body) {
      expect(typeof move.id).toBe("string");
      expect(typeof move.name).toBe("string");
      expect(move.damageTypes === null || Array.isArray(move.damageTypes)).toBe(true);
    }
  });

  it("filters by name (case-insensitive partial match)", async () => {
    const allRes = await app.request("/meleeMoves");
    const allBody = await allRes.json();
    const firstName: string = allBody[0].name;
    const fragment = firstName.slice(0, 3).toLowerCase();

    const res = await app.request(`/meleeMoves?name=${fragment}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const move of body) {
      expect(move.name.toLowerCase()).toContain(fragment);
    }
  });

  it("returns empty array for name with no matches", async () => {
    const res = await app.request("/meleeMoves?name=zzznomatch");
    expect(res.status).toBe(200);
    expect(await res.json()).toEqual([]);
  });

  it("type=basic returns only moves that do not upgrade another move", async () => {
    const res = await app.request("/meleeMoves?type=basic");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const move of body) {
      expect(move.upgrades).toBeNull();
    }
  });

  it("type=signature returns only moves that upgrade another move", async () => {
    const res = await app.request("/meleeMoves?type=signature");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const move of body) {
      expect(move.upgrades).not.toBeNull();
    }
  });

  it("returns 400 for an invalid type value", async () => {
    const res = await app.request("/meleeMoves?type=invalid");
    expect(res.status).toBe(400);
  });

  it("returns 400 for an invalid format value", async () => {
    const res = await app.request("/meleeMoves?format=xml");
    expect(res.status).toBe(400);
  });

  it("returns plain string additionalEffects by default", async () => {
    const res = await app.request("/meleeMoves");
    const body = await res.json();
    const withEffects = body.find(
      (m: { additionalEffects: unknown }) => m.additionalEffects !== null,
    );
    if (withEffects) {
      expect(typeof withEffects.additionalEffects).toBe("string");
    }
  });

  it("returns array additionalEffects when format=rich", async () => {
    const res = await app.request("/meleeMoves?format=rich");
    const body = await res.json();
    const withEffects = body.find(
      (m: { additionalEffects: unknown }) => m.additionalEffects !== null,
    );
    if (withEffects) {
      expect(Array.isArray(withEffects.additionalEffects)).toBe(true);
    }
  });
});

describe("GET /meleeMoves/:id", () => {
  it("returns the move for a valid UUID", async () => {
    const listRes = await app.request("/meleeMoves");
    const list = await listRes.json();
    const { id } = list[0];

    const res = await app.request(`/meleeMoves/${id}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.id).toBe(id);
  });

  it("returns 404 for a UUID not in the DB", async () => {
    const res = await app.request(
      "/meleeMoves/00000000-0000-0000-0000-000000000000",
    );
    expect(res.status).toBe(404);
    expect(await res.json()).toHaveProperty("error");
  });

  it("returns 400 for a non-UUID id", async () => {
    const res = await app.request("/meleeMoves/not-a-uuid");
    expect(res.status).toBe(400);
  });
});
