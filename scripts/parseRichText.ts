import type { RichTextSegment } from "../src/types/richText";

interface EntityLookup {
  abilities: Map<string, string>; // name -> id (lowercase key)
  keywords: Set<string>; // lowercase
  characters: Map<string, string>; // name -> id (lowercase key)
  damageTypes: Set<string>; // lowercase
}

const ARCANE_CARD_COLORS: Record<string, string> = {
  P: "Pink",
  G: "Green",
  B: "Blue",
};

const DAMAGE_TYPE_NAMES = ["Slicing", "Piercing", "Impact", "Magical"];

/**
 * Parse a plain text string into an array of RichTextSegments.
 *
 * Parsing order (most specific first):
 * 1. Bracket notation [Name: definition]
 * 2. Arcane card shorthand (G2, PX, etc.)
 * 3. Ability name references
 * 4. Character name references
 * 5. Keyword references
 * 6. Damage type references
 * 7. Catastrophe references
 * 8. Everything else → text segments
 */
export function parseRichText(
  text: string,
  entities: EntityLookup,
): RichTextSegment[] {
  if (!text) return [{ type: "text", value: text }];

  // First pass: replace bracket notation with placeholders
  const placeholders: { placeholder: string; segment: RichTextSegment }[] = [];
  let processedText = text;
  let placeholderIndex = 0;

  // Match bracket notation: [Name: definition] or [Reload] or [Reload ...] or [#]
  // But NOT Reload[...] (no space before bracket = part of ability name reference)
  const bracketRegex = /\[([^\]]+)\]/g;
  let match: RegExpExecArray | null;

  // biome-ignore lint/suspicious/noAssignInExpressions: regex exec loop
  while ((match = bracketRegex.exec(processedText)) !== null) {
    const fullMatch = match[0];
    const inner = match[1];

    // [#] is a variable placeholder, leave as text
    if (inner === "#") continue;

    // Check if this is [Name: definition] pattern
    const colonIndex = inner.indexOf(":");
    if (colonIndex !== -1) {
      const name = inner.substring(0, colonIndex).trim();
      const abilityId = entities.abilities.get(name.toLowerCase());

      if (abilityId) {
        const placeholder = `\x00RICH${placeholderIndex}\x00`;
        placeholders.push({
          placeholder,
          segment: { type: "ability", name, id: abilityId },
        });
        processedText =
          processedText.substring(0, match.index) +
          placeholder +
          processedText.substring(match.index + fullMatch.length);
        bracketRegex.lastIndex = match.index + placeholder.length;
        placeholderIndex++;
        continue;
      }
    }

    // Check if this is [AbilityName] (no colon) like [Reload] or [Reload ...]
    // But not [#] or [...] which are just text
    if (inner !== "..." && inner !== "#") {
      const abilityId = entities.abilities.get(inner.toLowerCase());
      if (abilityId) {
        const placeholder = `\x00RICH${placeholderIndex}\x00`;
        placeholders.push({
          placeholder,
          segment: { type: "ability", name: inner, id: abilityId },
        });
        processedText =
          processedText.substring(0, match.index) +
          placeholder +
          processedText.substring(match.index + fullMatch.length);
        bracketRegex.lastIndex = match.index + placeholder.length;
        placeholderIndex++;
        continue;
      }
    }
  }

  // Second pass: tokenize remaining text for entity matching
  // Split on placeholders first, then process each text chunk
  const segments: RichTextSegment[] = [];

  const parts = processedText.split(/(\x00RICH\d+\x00)/);

  for (const part of parts) {
    // Check if this part is a placeholder
    const placeholderMatch = placeholders.find(
      (p) => p.placeholder === part,
    );
    if (placeholderMatch) {
      segments.push(placeholderMatch.segment);
      continue;
    }

    if (part === "") continue;

    // Process this text chunk for entity references
    const parsed = parseTextChunk(part, entities);
    segments.push(...parsed);
  }

  return mergeAdjacentText(segments);
}

function parseTextChunk(
  text: string,
  entities: EntityLookup,
): RichTextSegment[] {
  // Build a regex that matches all entity patterns
  const patterns: {
    regex: RegExp;
    factory: (match: RegExpExecArray) => RichTextSegment;
  }[] = [];

  // Arcane card shorthand: G2, P2, PX, B3, etc.
  patterns.push({
    regex: /\b([PGB])([123X])\b/g,
    factory: (m) => ({
      type: "arcaneCard",
      color: ARCANE_CARD_COLORS[m[1]],
      value: m[2],
    }),
  });

  // Ability names (sorted by length descending so longer names match first)
  const abilityNames = [...entities.abilities.entries()].sort(
    (a, b) => b[0].length - a[0].length,
  );
  for (const [lowerName, id] of abilityNames) {
    // Find the original casing - we'll use a case-insensitive match
    const escapedName = escapeRegex(lowerName);
    patterns.push({
      regex: new RegExp(`\\b${escapedName}\\b`, "gi"),
      factory: (m) => ({
        type: "ability",
        name: m[0],
        id,
      }),
    });
  }

  // Character names (sorted by length descending)
  const characterNames = [...entities.characters.entries()].sort(
    (a, b) => b[0].length - a[0].length,
  );
  for (const [lowerName, id] of characterNames) {
    const escapedName = escapeRegex(lowerName);
    patterns.push({
      regex: new RegExp(`\\b${escapedName}\\b`, "gi"),
      factory: (m) => ({
        type: "character",
        name: m[0],
        id,
      }),
    });
  }

  // Keyword names (sorted by length descending, match plural "s" forms too)
  const keywordNames = [...entities.keywords].sort(
    (a, b) => b.length - a.length,
  );
  for (const lowerName of keywordNames) {
    const escapedName = escapeRegex(lowerName);
    const canonicalName = lowerName[0].toUpperCase() + lowerName.slice(1);
    patterns.push({
      regex: new RegExp(`\\b${escapedName}s?\\b`, "gi"),
      factory: (m) => {
        const seg: RichTextSegment = { type: "keyword", name: canonicalName };
        if (m[0].toLowerCase() !== lowerName) {
          seg.value = m[0];
        }
        return seg;
      },
    });
  }

  // Damage types
  for (const dt of DAMAGE_TYPE_NAMES) {
    patterns.push({
      regex: new RegExp(`\\b${dt}\\b`, "gi"),
      factory: () => ({
        type: "damageType",
        name: dt,
      }),
    });
  }

  // Catastrophe
  patterns.push({
    regex: /\bCatastrophe\b/gi,
    factory: () => ({ type: "catastrophe" }),
  });

  // Find all matches with their positions
  interface MatchInfo {
    index: number;
    length: number;
    segment: RichTextSegment;
  }

  const allMatches: MatchInfo[] = [];

  for (const pattern of patterns) {
    let m: RegExpExecArray | null;
    // biome-ignore lint/suspicious/noAssignInExpressions: regex exec loop
    while ((m = pattern.regex.exec(text)) !== null) {
      allMatches.push({
        index: m.index,
        length: m[0].length,
        segment: pattern.factory(m),
      });
    }
  }

  // Sort by position, then by length descending (prefer longer matches)
  allMatches.sort((a, b) => a.index - b.index || b.length - a.length);

  // Remove overlapping matches (keep the first/longest at each position)
  const filtered: MatchInfo[] = [];
  let lastEnd = 0;
  for (const match of allMatches) {
    if (match.index >= lastEnd) {
      filtered.push(match);
      lastEnd = match.index + match.length;
    }
  }

  // Build segments
  const segments: RichTextSegment[] = [];
  let cursor = 0;

  for (const match of filtered) {
    if (match.index > cursor) {
      segments.push({ type: "text", value: text.substring(cursor, match.index) });
    }
    segments.push(match.segment);
    cursor = match.index + match.length;
  }

  if (cursor < text.length) {
    segments.push({ type: "text", value: text.substring(cursor) });
  }

  return segments;
}

function mergeAdjacentText(segments: RichTextSegment[]): RichTextSegment[] {
  const result: RichTextSegment[] = [];
  for (const seg of segments) {
    const last = result[result.length - 1];
    if (seg.type === "text" && last?.type === "text") {
      last.value += seg.value;
    } else {
      result.push(seg);
    }
  }
  return result;
}

function escapeRegex(str: string): string {
  return str.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}
