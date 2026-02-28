import { describe, expect, it } from "bun:test";
import app from "../../src/index";

describe("GET /characters", () => {
  it("returns 200 and a non-empty array", async () => {
    const res = await app.request("/characters");
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(Array.isArray(body)).toBe(true);
    expect(body.length).toBeGreaterThan(0);
  });

  it("each character has id and name", async () => {
    const res = await app.request("/characters");
    const body = await res.json();
    for (const character of body) {
      expect(typeof character.id).toBe("string");
      expect(typeof character.name).toBe("string");
    }
  });

  it("filters by name (case-insensitive partial match)", async () => {
    // Get a real name fragment to search with
    const allRes = await app.request("/characters");
    const allBody = await allRes.json();
    const firstName: string = allBody[0].name;
    const fragment = firstName.slice(0, 3).toLowerCase();

    const res = await app.request(`/characters?name=${fragment}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const character of body) {
      expect(character.name.toLowerCase()).toContain(fragment);
    }
  });

  it("returns empty array for name with no matches", async () => {
    const res = await app.request("/characters?name=zzznomatch");
    expect(res.status).toBe(200);
    expect(await res.json()).toEqual([]);
  });

  it("filters by faction using a real faction name", async () => {
    const factionsRes = await app.request("/factions");
    const factions = await factionsRes.json();
    const factionName: string = factions[0].name;

    const res = await app.request(
      `/characters?faction=${encodeURIComponent(factionName)}`,
    );
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const character of body) {
      expect(character.factions).toContain(factionName);
    }
  });

  it("filters by keyword using a real keyword value", async () => {
    const keywordsRes = await app.request("/keywords");
    const keywords = await keywordsRes.json();
    const keyword: string = keywords[0].keyword;

    const res = await app.request(
      `/characters?keyword=${encodeURIComponent(keyword)}`,
    );
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.length).toBeGreaterThan(0);
    for (const character of body) {
      expect(character.keywords).toContain(keyword);
    }
  });

  it("limits returned keys when fields param is provided", async () => {
    const res = await app.request("/characters?fields=melee&fields=health");
    expect(res.status).toBe(200);
    const body = await res.json();
    const first = body[0];
    expect("id" in first).toBe(true);
    expect("name" in first).toBe(true);
    expect("melee" in first).toBe(true);
    expect("health" in first).toBe(true);
    expect("factions" in first).toBe(false);
    expect("abilities" in first).toBe(false);
    expect("keywords" in first).toBe(false);
  });

  it("returns 400 for an invalid fields value", async () => {
    const res = await app.request("/characters?fields=not_a_field");
    expect(res.status).toBe(400);
  });

  it("returns 400 for an invalid format value", async () => {
    const res = await app.request("/characters?format=xml");
    expect(res.status).toBe(400);
  });

  it("returns plain string descriptions by default", async () => {
    const res = await app.request("/characters");
    const body = await res.json();
    const withAbilities = body.find(
      (c: { abilities?: Array<{ description: unknown }> }) =>
        c.abilities?.some((a) => a.description !== null),
    );
    if (withAbilities) {
      const desc = withAbilities.abilities.find(
        (a: { description: unknown }) => a.description !== null,
      ).description;
      expect(typeof desc).toBe("string");
    }
  });

  it("returns array descriptions when format=rich", async () => {
    const res = await app.request("/characters?format=rich");
    const body = await res.json();
    const withAbilities = body.find(
      (c: { abilities?: Array<{ description: unknown }> }) =>
        c.abilities?.some((a) => a.description !== null),
    );
    if (withAbilities) {
      const desc = withAbilities.abilities.find(
        (a: { description: unknown }) => a.description !== null,
      ).description;
      expect(Array.isArray(desc)).toBe(true);
    }
  });
});

describe("GET /characters/:id", () => {
  it("returns the character for a valid UUID", async () => {
    const listRes = await app.request("/characters");
    const list = await listRes.json();
    const { id } = list[0];

    const res = await app.request(`/characters/${id}`);
    expect(res.status).toBe(200);
    const body = await res.json();
    expect(body.id).toBe(id);
    expect(typeof body.name).toBe("string");
  });

  it("returns 404 for a UUID not in the DB", async () => {
    const res = await app.request(
      "/characters/00000000-0000-0000-0000-000000000000",
    );
    expect(res.status).toBe(404);
    expect(await res.json()).toHaveProperty("error");
  });

  it("returns 400 for a non-UUID id", async () => {
    const res = await app.request("/characters/not-a-uuid");
    expect(res.status).toBe(400);
  });
});
