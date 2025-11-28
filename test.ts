import { db } from "./src/db";

db.selectFrom("meleeOutcomes").selectAll().execute().then((results) => {
  console.log(results);
});