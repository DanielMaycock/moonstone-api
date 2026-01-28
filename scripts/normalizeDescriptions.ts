import { db } from "../src/db/index.js";

function normalizeText(text: string | null): string | null {
  if (text === null || text === "") {
    return text;
  }

  let normalized = text
    // Replace newlines and multiple spaces with single space
    .replace(/\s+/g, " ")
    // Trim leading/trailing whitespace
    .trim();

  // Ensure trailing period (if text has content and doesn't end with punctuation)
  if (normalized.length > 0 && !/[.!?]$/.test(normalized)) {
    normalized += ".";
  }

  return normalized;
}

type Change = { id: string; before: string | null; after: string | null };

function printChanges(changes: Change[], label: string) {
  console.log(`\nNormalized ${changes.length} ${label}.\n`);

  if (changes.length > 0 && changes.length <= 20) {
    console.log("Changes made:");
    for (const change of changes) {
      console.log(`  ID: ${change.id}`);
      console.log(`    Before: "${change.before}"`);
      console.log(`    After:  "${change.after}"`);
      console.log();
    }
  } else if (changes.length > 20) {
    console.log("Sample of changes (first 10):");
    for (const change of changes.slice(0, 10)) {
      console.log(`  ID: ${change.id}`);
      console.log(`    Before: "${change.before}"`);
      console.log(`    After:  "${change.after}"`);
      console.log();
    }
  }
}

// Normalize ability descriptions
const abilities = await db
  .selectFrom("abilities")
  .select(["id", "description"])
  .execute();

const abilityChanges: Change[] = [];

await db.transaction().execute(async (tx) => {
  for (const ability of abilities) {
    const normalized = normalizeText(ability.description);

    if (normalized !== ability.description) {
      await tx
        .updateTable("abilities")
        .set({ description: normalized })
        .where("id", "=", ability.id)
        .execute();

      abilityChanges.push({
        id: ability.id,
        before: ability.description,
        after: normalized,
      });
    }
  }
});

printChanges(abilityChanges, "ability descriptions");

// Normalize arcane outcome texts
const arcaneOutcomes = await db
  .selectFrom("arcaneOutcomes")
  .select(["id", "outcomeText"])
  .execute();

const outcomeChanges: Change[] = [];

await db.transaction().execute(async (tx) => {
  for (const outcome of arcaneOutcomes) {
    const normalized = normalizeText(outcome.outcomeText);

    if (normalized !== outcome.outcomeText) {
      await tx
        .updateTable("arcaneOutcomes")
        .set({ outcomeText: normalized })
        .where("id", "=", outcome.id)
        .execute();

      outcomeChanges.push({
        id: outcome.id,
        before: outcome.outcomeText,
        after: normalized,
      });
    }
  }
});

printChanges(outcomeChanges, "arcane outcome texts");

process.exit(0);
