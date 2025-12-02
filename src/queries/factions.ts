import { db } from "../db";

export const factionsQuery = () => {
  return db.selectFrom("factions").select("faction as name");
};
