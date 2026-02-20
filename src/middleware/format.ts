import { richTextToPlain } from "../queries/helpers";
import type { RichTextSegment } from "../types/richText";

/**
 * Known JSONB rich text field paths that should be converted to plain text.
 * Maps the JSON key name to whether it's an array item field.
 */
const RICH_TEXT_FIELDS = new Set([
  "description",
  "outcomeText",
  "additionalEffects",
  "endStep",
]);

function isRichTextArray(value: unknown): value is RichTextSegment[] {
  return (
    Array.isArray(value) &&
    value.length > 0 &&
    typeof value[0] === "object" &&
    value[0] !== null &&
    "type" in value[0]
  );
}

function convertToPlain(obj: unknown): unknown {
  if (obj === null || obj === undefined) return obj;
  if (Array.isArray(obj)) return obj.map(convertToPlain);

  if (typeof obj === "object") {
    const result: Record<string, unknown> = {};
    for (const [key, value] of Object.entries(obj as Record<string, unknown>)) {
      if (RICH_TEXT_FIELDS.has(key) && isRichTextArray(value)) {
        result[key] = richTextToPlain(value);
      } else {
        result[key] = convertToPlain(value);
      }
    }
    return result;
  }

  return obj;
}

export function applyFormat<T>(data: T, format?: string): T {
  if (format === "rich") return data;
  return convertToPlain(data) as T;
}
