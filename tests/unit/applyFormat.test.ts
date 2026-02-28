import { describe, expect, it } from "bun:test";
import { applyFormat } from "../../src/middleware/format";

const textSegment = (value: string) => ({ type: "text", value });

describe("applyFormat", () => {
  describe("format=rich", () => {
    it("returns the same object reference unchanged", () => {
      const data = { description: [textSegment("hello")] };
      expect(applyFormat(data, "rich")).toBe(data);
    });
  });

  describe("plain conversion (default / format=plain)", () => {
    it("converts description to plain string by default", () => {
      const data = { description: [textSegment("hello")] };
      const result = applyFormat(data) as { description: string };
      expect(result.description).toBe("hello");
    });

    it("converts description to plain string when format=plain", () => {
      const data = { description: [textSegment("hello")] };
      const result = applyFormat(data, "plain") as { description: string };
      expect(result.description).toBe("hello");
    });

    it("converts outcomeText field", () => {
      const data = { outcomeText: [textSegment("Draw a card")] };
      const result = applyFormat(data) as { outcomeText: string };
      expect(result.outcomeText).toBe("Draw a card");
    });

    it("converts additionalEffects field", () => {
      const data = { additionalEffects: [textSegment("Extra effect")] };
      const result = applyFormat(data) as { additionalEffects: string };
      expect(result.additionalEffects).toBe("Extra effect");
    });

    it("converts endStep field", () => {
      const data = { endStep: [textSegment("End step text")] };
      const result = applyFormat(data) as { endStep: string };
      expect(result.endStep).toBe("End step text");
    });

    it("leaves non-rich-text fields untouched", () => {
      const data = { name: "Troll", melee: 4, energy: [1, 2] };
      expect(applyFormat(data)).toEqual({ name: "Troll", melee: 4, energy: [1, 2] });
    });

    it("leaves null fields untouched", () => {
      const data = { description: null };
      expect(applyFormat(data)).toEqual({ description: null });
    });

    it("leaves undefined fields untouched", () => {
      const data = { description: undefined };
      expect(applyFormat(data)).toEqual({ description: undefined });
    });

    it("does not double-convert a field already holding a plain string", () => {
      const data = { description: "already plain" };
      expect(applyFormat(data)).toEqual({ description: "already plain" });
    });

    it("recursively converts description inside a nested abilities array", () => {
      const data = {
        name: "Troll",
        abilities: [
          { name: "Tough Skin", description: [textSegment("Reduce Dmg.")] },
        ],
      };
      const result = applyFormat(data) as {
        abilities: Array<{ name: string; description: string }>;
      };
      expect(result.abilities[0].description).toBe("Reduce Dmg.");
      expect(result.abilities[0].name).toBe("Tough Skin");
    });

    it("recursively converts rich text fields in nested arcane outcomes", () => {
      const data = {
        arcaneOutcomes: [
          { outcomeText: [textSegment("Draw 2 cards")] },
          { outcomeText: [textSegment("Lose 1 energy")] },
        ],
      };
      const result = applyFormat(data) as {
        arcaneOutcomes: Array<{ outcomeText: string }>;
      };
      expect(result.arcaneOutcomes[0].outcomeText).toBe("Draw 2 cards");
      expect(result.arcaneOutcomes[1].outcomeText).toBe("Lose 1 energy");
    });

    it("handles an array of objects at the top level", () => {
      const data = [
        { description: [textSegment("a")] },
        { description: [textSegment("b")] },
      ];
      const result = applyFormat(data) as Array<{ description: string }>;
      expect(result[0].description).toBe("a");
      expect(result[1].description).toBe("b");
    });

    it("does not convert unknown field names that hold rich-text-shaped arrays", () => {
      // Only known RICH_TEXT_FIELDS should be converted
      const segments = [textSegment("value")];
      const data = { unknownField: segments };
      const result = applyFormat(data) as { unknownField: unknown };
      // unknownField is an array of objects with "type", but it's not a known field
      // so it should pass through as-is (though each element gets recursed into)
      expect(Array.isArray(result.unknownField)).toBe(true);
    });
  });
});
