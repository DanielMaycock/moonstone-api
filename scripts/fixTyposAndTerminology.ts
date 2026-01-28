import { db } from "../src/db/index.js";

type Change = {
  id: string;
  table: string;
  field: string;
  before: string;
  after: string;
};

const changes: Change[] = [];

function normalizeText(text: string): string {
  let result = text;

  // Trim and normalize whitespace first
  result = result.replace(/\s+/g, " ").trim();

  // Remove leading colons (with optional space after)
  result = result.replace(/^:\s*/, "");

  // Fix specific typos
  result = result.replace(/\bTaget\b/g, "Target");
  result = result.replace(/\bmodels suffers\b/g, "model suffers");
  result = result.replace(/\bProd\.\s*Boffinsworth\b/g, "Prof. Boffinsworth");
  result = result.replace(/\bFlinder Memphis\b/g, "Flinders Memphis");

  // Capitalize "target" only at start of sentence (after period, or at start of text)
  result = result.replace(/^target\b/, "Target");
  result = result.replace(/\. target\b/g, ". Target");

  // Normalize wound terminology
  // "Wd's" -> "wounds" (apostrophe plural)
  result = result.replace(/\bWd's\b/g, "wounds");
  // "Wds" -> "wounds" (abbreviated plural)
  result = result.replace(/\bWds\b/g, "wounds");
  // "Wd" -> "wound" (abbreviated singular) - but not if followed by 's' which we already handled
  result = result.replace(/\bWd\b/g, "wound");

  // Normalize capitalization
  // "stat" -> "Stat" (for Melee stat, Arcane stat, etc.)
  result = result.replace(/\b(Melee|Arcane|Evade)\s+stat\b/g, "$1 Stat");

  // Normalize "keywords" -> "Keywords"
  result = result.replace(/\bkeywords\b/g, "Keywords");

  // Ensure trailing period
  if (result.length > 0 && !/[.!?]$/.test(result)) {
    result += ".";
  }

  return result;
}

// Process abilities
console.log("Processing abilities...");
const abilities = await db
  .selectFrom("abilities")
  .select(["id", "name", "description"])
  .execute();

await db.transaction().execute(async (tx) => {
  for (const ability of abilities) {
    if (!ability.description) continue;

    const normalized = normalizeText(ability.description);

    if (normalized !== ability.description) {
      await tx
        .updateTable("abilities")
        .set({ description: normalized })
        .where("id", "=", ability.id)
        .execute();

      changes.push({
        id: ability.id,
        table: "abilities",
        field: `${ability.name}`,
        before: ability.description,
        after: normalized,
      });
    }
  }
});

// Process arcane outcomes
console.log("Processing arcane outcomes...");
const outcomes = await db
  .selectFrom("arcaneOutcomes")
  .select(["id", "outcomeText"])
  .execute();

await db.transaction().execute(async (tx) => {
  for (const outcome of outcomes) {
    const normalized = normalizeText(outcome.outcomeText);

    if (normalized !== outcome.outcomeText) {
      await tx
        .updateTable("arcaneOutcomes")
        .set({ outcomeText: normalized })
        .where("id", "=", outcome.id)
        .execute();

      changes.push({
        id: outcome.id,
        table: "arcane_outcomes",
        field: "outcome_text",
        before: outcome.outcomeText,
        after: normalized,
      });
    }
  }
});

// Summary
console.log(`\n${"=".repeat(60)}`);
console.log(`Total changes: ${changes.length}`);
console.log(`  - Abilities: ${changes.filter((c) => c.table === "abilities").length}`);
console.log(`  - Arcane outcomes: ${changes.filter((c) => c.table === "arcane_outcomes").length}`);
console.log(`${"=".repeat(60)}\n`);

// Group changes by type
const wdChanges = changes.filter(
  (c) => c.before.includes("Wd") && c.after.includes("wound"),
);
const typoChanges = changes.filter(
  (c) =>
    c.before.includes("Taget") ||
    c.before.includes("models suffers") ||
    c.before.includes("Prod.") ||
    c.before.includes("Flinder Memphis") ||
    c.before.startsWith(":"),
);
const capitalizationChanges = changes.filter(
  (c) =>
    (c.before.includes(" stat") && c.after.includes(" Stat")) ||
    (c.before.includes("keywords") && c.after.includes("Keywords")) ||
    (c.before.match(/^target\b/i) && c.after.startsWith("Target")),
);

console.log("Terminology changes (Wd -> wound):", wdChanges.length);
if (wdChanges.length > 0 && wdChanges.length <= 10) {
  for (const c of wdChanges) {
    console.log(`  [${c.table}] "${c.before}" -> "${c.after}"`);
  }
} else if (wdChanges.length > 10) {
  console.log("  (showing first 5)");
  for (const c of wdChanges.slice(0, 5)) {
    console.log(`  [${c.table}] "${c.before}" -> "${c.after}"`);
  }
}

console.log("\nTypo fixes:", typoChanges.length);
for (const c of typoChanges) {
  console.log(`  [${c.table}] "${c.before}" -> "${c.after}"`);
}

console.log("\nCapitalization fixes:", capitalizationChanges.length);
if (capitalizationChanges.length > 0 && capitalizationChanges.length <= 10) {
  for (const c of capitalizationChanges) {
    console.log(`  [${c.table}] "${c.before}" -> "${c.after}"`);
  }
} else if (capitalizationChanges.length > 10) {
  console.log("  (showing first 5)");
  for (const c of capitalizationChanges.slice(0, 5)) {
    console.log(`  [${c.table}] "${c.before}" -> "${c.after}"`);
  }
}

process.exit(0);
