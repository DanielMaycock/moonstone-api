import { db } from "../src/db";

try {
  const result = await db
    .selectFrom("characters")
    .select((eb) => eb.fn.countAll().as("count"))
    .executeTakeFirst();
  console.log(result?.count ?? 0);
} catch {
  // Table doesn't exist yet
  console.log(0);
}
await db.destroy();
