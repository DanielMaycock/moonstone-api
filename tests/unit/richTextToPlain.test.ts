import { describe, expect, it } from "bun:test";
import { richTextToPlain } from "../../src/queries/helpers";

describe("richTextToPlain", () => {
  it("returns null for null input", () => {
    expect(richTextToPlain(null)).toBeNull();
  });

  it("returns empty string for empty array", () => {
    expect(richTextToPlain([])).toBe("");
  });

  it("handles a single text segment", () => {
    expect(richTextToPlain([{ type: "text", value: "Hello world" }])).toBe(
      "Hello world",
    );
  });

  it("concatenates multiple text segments without separator", () => {
    expect(
      richTextToPlain([
        { type: "text", value: "Hello " },
        { type: "text", value: "world" },
      ]),
    ).toBe("Hello world");
  });

  it("uses name for ability segments", () => {
    expect(
      richTextToPlain([{ type: "ability", name: "Swift", id: "some-uuid" }]),
    ).toBe("Swift");
  });

  it("uses value override for keyword segments when present", () => {
    expect(
      richTextToPlain([
        { type: "keyword", name: "Soldier", value: "Soldiers" },
      ]),
    ).toBe("Soldiers");
  });

  it("uses name for keyword segments when no value override", () => {
    expect(richTextToPlain([{ type: "keyword", name: "Goblin" }])).toBe(
      "Goblin",
    );
  });

  it("uses name for damageType segments", () => {
    expect(richTextToPlain([{ type: "damageType", name: "Slicing" }])).toBe(
      "Slicing",
    );
  });

  it("uses name for character segments", () => {
    expect(
      richTextToPlain([
        { type: "character", name: "The Troll", id: "some-uuid" },
      ]),
    ).toBe("The Troll");
  });

  it("formats a regular arcane card as colour initial + value", () => {
    expect(
      richTextToPlain([{ type: "arcaneCard", color: "Green", value: "2" }]),
    ).toBe("G2");
  });

  it("formats a catastrophe arcane card as 'Catastrophe'", () => {
    expect(
      richTextToPlain([{ type: "arcaneCard", catastrophe: true }]),
    ).toBe("Catastrophe");
  });

  it("handles multiple catastrophe segments in sequence", () => {
    expect(
      richTextToPlain([
        { type: "text", value: "When any character suffers a " },
        { type: "arcaneCard", catastrophe: true },
        { type: "text", value: ", draw a card for each " },
        { type: "arcaneCard", catastrophe: true },
        { type: "text", value: " suffered." },
      ]),
    ).toBe(
      "When any character suffers a Catastrophe, draw a card for each Catastrophe suffered.",
    );
  });

  it("correctly concatenates a mixed realistic segment array", () => {
    expect(
      richTextToPlain([
        { type: "text", value: "If this character deals " },
        { type: "damageType", name: "Slicing" },
        {
          type: "text",
          value: " Melee Dmg, increase the Dmg dealt by +1.",
        },
      ]),
    ).toBe(
      "If this character deals Slicing Melee Dmg, increase the Dmg dealt by +1.",
    );
  });

  it("formats arcane card with single-character colour", () => {
    expect(
      richTextToPlain([{ type: "arcaneCard", color: "Purple", value: "X" }]),
    ).toBe("PX");
  });
});
