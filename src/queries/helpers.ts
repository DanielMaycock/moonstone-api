import { type Expression, sql, type Simplify } from "kysely";

export const lower = (expr: Expression<string>) => sql<string>`lower(${expr})`;

export const concat = (...exprs: Expression<string>[]) =>
  sql.join<string>(exprs, sql`||`);

export const jsonStringArrayFrom = <O>(expr: Expression<O>, field: string) =>
  sql<
    Simplify<O>[]
  >`(select json_agg(to_json(agg)->${field}) from ${expr} as agg)`;
