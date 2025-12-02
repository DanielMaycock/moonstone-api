import { db } from "../db";

export const keywordsQuery = () => {
  return db.selectFrom("keywords").select("keyword");
};
