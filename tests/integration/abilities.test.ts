import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("GET /abilities", () => {
  it("returns 200 and a non-empty array", async () => {
    const res = await app.request("/abilities");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(Array.isArray(body)).toBe(true);
    expect(body.length).toBeGreaterThan(0);
  });

  it("each ability has id, name, type and character", async () => {
    const res = await app.request("/abilities");
    const body = await res.json();
    for (const ability of body) {
      expect(typeof ability.id).toBe("string");
      expect(typeof ability.name).toBe("string");
      expect(typeof ability.type).toBe("string");
      expect(typeof ability.character).toBe("string");
    }
  });

  it("filters by name (case-insensitive partial match)", async () => {
    const allRes = await app.request("/abilities");
    const allBody = await allRes.json();
    const firstName: string = allBody[0].name;
    const fragment = firstName.slice(0, 3).toLowerCase();

    const res = await app.request(`/abilities?name=${fragment}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const ability of body) {
      expect(ability.name.toLowerCase()).toContain(fragment);
    }
  });

  it("returns empty array for name with no matches", async () => {
    const res = await app.request("/abilities?name=zzznomatch");
    expect(res.status).toBe(200);
    expect(await res.json()).toEqual([]);
  });

  it("filters by character name (case-insensitive partial match)", async () => {
    const allRes = await app.request("/abilities");
    const allBody = await allRes.json();
    const firstCharacter: string = allBody[0].character;
    const fragment = firstCharacter.slice(0, 3).toLowerCase();

    const res = await app.request(`/abilities?character=${fragment}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const ability of body) {
      expect(ability.character.toLowerCase()).toContain(fragment);
    }
  });

  it("filters type=passive and returns only Passive abilities", async () => {
    const res = await app.request("/abilities?type=passive");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const ability of body) {
      expect(ability.type).toBe("Passive");
    }
  });

  it("filters type=active and returns only Active abilities", async () => {
    const res = await app.request("/abilities?type=active");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const ability of body) {
      expect(ability.type).toBe("Active");
    }
  });

  it("filters type=arcane and returns only Arcane abilities", async () => {
    const res = await app.request("/abilities?type=arcane");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const ability of body) {
      expect(ability.type).toBe("Arcane");
    }
  });

  it("returns 400 for an invalid type value", async () => {
    const res = await app.request("/abilities?type=unknown");
    expect(res.status).toBe(400);
  });

  it("returns 400 for an invalid format value", async () => {
    const res = await app.request("/abilities?format=xml");
    expect(res.status).toBe(400);
  });

  it("returns plain string descriptions by default", async () => {
    const res = await app.request("/abilities");
    const body = await res.json();
    const withDesc = body.find(
      (a: { description: unknown }) => a.description !== null,
    );
    if (withDesc) {
      expect(typeof withDesc.description).toBe("string");
    }
  });

  it("returns array descriptions when format=rich", async () => {
    const res = await app.request("/abilities?format=rich");
    const body = await res.json();
    const withDesc = body.find(
      (a: { description: unknown }) => a.description !== null,
    );
    if (withDesc) {
      expect(Array.isArray(withDesc.description)).toBe(true);
    }
  });

  it("arcane abilities include arcaneOutcomes array", async () => {
    const res = await app.request("/abilities?type=arcane");
    const body = await res.json();
    for (const ability of body) {
      expect(Array.isArray(ability.arcaneOutcomes)).toBe(true);
    }
  });
});

describe("GET /abilities/:id", () => {
  it("returns the ability for a valid UUID", async () => {
    const listRes = await app.request("/abilities");
    const list = await listRes.json();
    const { id } = list[0];

    const res = await app.request(`/abilities/${id}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.id).toBe(id);
  });

  it("returns 404 for a UUID not in the DB", async () => {
    const res = await app.request(
      "/abilities/00000000-0000-0000-0000-000000000000",
    );
    expect(res.status).toBe(404);
    expect(await res.json()).toHaveProperty("error");
  });

  it("returns 400 for a non-UUID id", async () => {
    const res = await app.request("/abilities/not-a-uuid");
    expect(res.status).toBe(400);
  });
});
