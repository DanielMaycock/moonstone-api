import { type Expression, sql } from "kysely";

export const lower = (expr: Expression<string>) => sql<string>`lower(${expr})`;

export const concat = (...exprs: Expression<string>[]) =>
  sql.join<string>(exprs, sql`||`);
