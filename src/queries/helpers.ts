import { type Expression, type Simplify, sql } from "kysely";
import type { RichTextSegment } from "../types/richText";

export const lower = (expr: Expression<string>) => sql<string>`lower(${expr})`;

export const concat = (...exprs: Expression<string>[]) =>
  sql.join<string>(exprs, sql`||`);

export const jsonStringArrayFrom = <O>(expr: Expression<O>, field: string) =>
  sql<
    Simplify<O>[]
  >`(select json_agg(to_json(agg)->${field}) from ${expr} as agg)`;

export function richTextToPlain(
  segments: RichTextSegment[] | null,
): string | null {
  if (segments === null) return null;
  return segments
    .map((s) => {
      if (s.type === "arcaneCard" && "catastrophe" in s) return "Catastrophe";
      if (s.type === "arcaneCard") return `${s.color[0]}${s.value}`;
      if ("value" in s && s.value !== undefined) return s.value;
      return "name" in s ? s.name : "";
    })
    .join("");
}
