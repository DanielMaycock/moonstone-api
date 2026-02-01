/**
 * Converts raw character data from Moontomb format to SQL for database import.
 *
 * Input: data/raw_characters.json (from Moontomb export)
 * Output: data/converted.sql
 *
 * Features:
 * - Deduplicates abilities (same ability shared by multiple characters)
 * - Deduplicates signature melee moves
 * - Outputs SQL in correct foreign key order
 * - Can be imported directly: psql -d moonstone < data/converted.sql
 */
import {
  fallingSwingId,
  highGuardId,
  lowGuardId,
  risingAttackId,
  sweepingCutId,
  thrustId,
} from "../data/basicMeleeData";

const file = Bun.file("./data/raw_characters.json");
const characters = await file.json();

// Helper to escape SQL strings
const esc = (val: string | null | undefined): string => {
  if (val === null || val === undefined) return "NULL";
  return `'${val.replace(/'/g, "''")}'`;
};

const escBool = (val: boolean | null | undefined): string => {
  if (val === null || val === undefined) return "false";
  return val ? "true" : "false";
};

const escNum = (val: number | null | undefined): string => {
  if (val === null || val === undefined) return "NULL";
  return String(val);
};

// Basic move ID mapping
const basicMoveIds: Record<number, string> = {
  0: highGuardId,
  1: fallingSwingId,
  2: thrustId,
  3: sweepingCutId,
  4: risingAttackId,
  5: lowGuardId,
};

const basicMoveNames: Record<string, string> = {
  [highGuardId]: "High guard",
  [fallingSwingId]: "Falling swing",
  [sweepingCutId]: "Sweeping cut",
  [thrustId]: "Thrust",
  [lowGuardId]: "Low guard",
  [risingAttackId]: "Rising attack",
};

// Damage type bitmask decoder
const getDamageTypes = (damageType: number): string[] => {
  const types: string[] = [];
  if ((damageType & 1) === 1) types.push("Slicing");
  if ((damageType & 2) === 2) types.push("Piercing");
  if ((damageType & 4) === 4) types.push("Impact");
  if ((damageType & 8) === 8) types.push("Magical");
  return types;
};

// Parry type decoder - which moves this signature move counters
const getCounteredMoves = (parryType: number): Set<string> => {
  const countered = new Set<string>();
  // Decoded from game data patterns
  if ([22, 45, 30, 49].includes(parryType)) countered.add(fallingSwingId);
  if ([4, 22, 59, 30, 49].includes(parryType)) countered.add(thrustId);
  if ([30, 49].includes(parryType)) countered.add(sweepingCutId);
  if ([47, 22, 45, 30].includes(parryType)) countered.add(risingAttackId);
  return countered;
};

// Card value decoder
const getArcaneOutcomeCards = (
  cardValue: number,
  isCatastrophe: boolean,
): Array<{ color: string | null; value: string | null; isCatastrophe: boolean }> => {
  if (isCatastrophe) {
    return [{ color: null, value: null, isCatastrophe: true }];
  }

  const cardMap: Record<number, Array<{ color: string; value: string }>> = {
    3: [{ color: "Pink", value: "X" }],
    4: [{ color: "Blue", value: "2" }],
    5: [
      { color: "Blue", value: "2" },
      { color: "Pink", value: "2" },
    ],
    8: [{ color: "Blue", value: "3" }],
    10: [
      { color: "Blue", value: "3" },
      { color: "Pink", value: "3" },
    ],
    12: [{ color: "Blue", value: "X" }],
    16: [
      { color: "Pink", value: "2" },
      { color: "Blue", value: "2" },
      { color: "Green", value: "2" },
    ],
    17: [
      { color: "Pink", value: "2" },
      { color: "Green", value: "2" },
    ],
    32: [
      { color: "Pink", value: "3" },
      { color: "Blue", value: "3" },
      { color: "Green", value: "3" },
    ],
    42: [
      { color: "Pink", value: "3" },
      { color: "Blue", value: "3" },
      { color: "Green", value: "3" },
    ],
    48: [{ color: "Green", value: "X" }],
    51: [
      { color: "Pink", value: "X" },
      { color: "Green", value: "X" },
    ],
    60: [
      { color: "Blue", value: "X" },
      { color: "Green", value: "X" },
    ],
  };

  const cards = cardMap[cardValue];
  if (!cards) {
    console.warn(`Unknown card value: ${cardValue}, skipping`);
    return [];
  }
  return cards.map((c) => ({ ...c, isCatastrophe: false }));
};

// Get ability type based on properties
const getAbilityType = (ability: any): string => {
  if (ability.energyCost === null) return "Passive";
  if (ability.ArcaneOutcome?.length > 0) return "Arcane";
  return "Active";
};

// ============================================================================
// Build signatures for deduplication
// ============================================================================

interface MeleeOutcome {
  opposingMoveId: string;
  damage: number | null;
  isCounter: boolean;
}

interface SignatureMove {
  id: string;
  name: string;
  upgradesId: string;
  additionalEffects: string | null;
  endStep: string | null;
  damageTypes: string[];
  outcomes: MeleeOutcome[];
  signature: string;
}

interface ArcaneOutcomeCard {
  color: string | null;
  value: string | null;
  isCatastrophe: boolean;
}

interface ArcaneOutcome {
  outcomeText: string;
  cards: ArcaneOutcomeCard[];
}

interface Ability {
  id: string;
  name: string;
  description: string | null;
  type: string;
  energyCost: number | null;
  range: number | null;
  pulse: boolean;
  oncePerTurn: boolean;
  oncePerGame: boolean;
  needsReloading: boolean;
  arcaneOutcomes: ArcaneOutcome[];
  signature: string;
}

// Build signature move signature for deduplication
const buildMoveSignature = (move: Omit<SignatureMove, "signature">): string => {
  const parts = [
    move.name,
    move.additionalEffects || "",
    move.endStep || "",
    move.upgradesId,
    move.damageTypes.sort().join(","),
    move.outcomes
      .map((o) => `${o.opposingMoveId}:${o.damage}:${o.isCounter}`)
      .sort()
      .join("|"),
  ];
  return parts.join("||");
};

// Build ability signature for deduplication
const buildAbilitySignature = (ability: Omit<Ability, "signature">): string => {
  const outcomesSig = ability.arcaneOutcomes
    .map((ao) => {
      const cardsSig = ao.cards
        .map((c) => `${c.color}:${c.value}:${c.isCatastrophe}`)
        .sort()
        .join(",");
      return `${ao.outcomeText}||${cardsSig}`;
    })
    .sort()
    .join(";;");

  const parts = [
    ability.name,
    ability.description || "",
    ability.type,
    String(ability.energyCost ?? ""),
    String(ability.range ?? ""),
    String(ability.pulse),
    String(ability.oncePerTurn),
    String(ability.oncePerGame),
    String(ability.needsReloading),
    outcomesSig,
  ];
  return parts.join("||");
};

// ============================================================================
// Process characters and build deduplicated data
// ============================================================================

const signatureMoves = new Map<string, SignatureMove>(); // signature -> canonical move
const moveIdToCanonical = new Map<string, string>(); // original ID -> canonical ID

const abilities = new Map<string, Ability>(); // signature -> canonical ability
const abilityIdToCanonical = new Map<string, string>(); // original ID -> canonical ID

const allKeywords = new Set<string>();
const characterAbilities: Array<{ characterId: string; abilityId: string }> = [];

// Process each character
for (const character of characters) {
  // Collect keywords
  const keywords = character.keywords
    .split(",")
    .map((k: string) => k.trim())
    .filter((k: string) => k.length > 0);
  for (const kw of keywords) {
    allKeywords.add(kw);
  }

  // Process signature move
  const rawMove = character.SignatureMove;
  if (rawMove && rawMove.name !== "None" && rawMove.name !== "No Signature") {
    const upgradesId = basicMoveIds[rawMove.upgradeFor];
    if (!upgradesId) {
      throw new Error(`Unknown upgradeFor value: ${rawMove.upgradeFor}`);
    }

    const counteredMoves = getCounteredMoves(rawMove.parryType);
    const outcomes: MeleeOutcome[] = [
      { opposingMoveId: highGuardId, damage: rawMove.highGuardDamage, isCounter: false },
      { opposingMoveId: fallingSwingId, damage: rawMove.fallingSwingDamage, isCounter: counteredMoves.has(fallingSwingId) },
      { opposingMoveId: thrustId, damage: rawMove.thrustDamage, isCounter: counteredMoves.has(thrustId) },
      { opposingMoveId: sweepingCutId, damage: rawMove.sweepingCutDamage, isCounter: counteredMoves.has(sweepingCutId) },
      { opposingMoveId: risingAttackId, damage: rawMove.risingAttackDamage, isCounter: counteredMoves.has(risingAttackId) },
      { opposingMoveId: lowGuardId, damage: rawMove.lowGuardDamage, isCounter: false },
    ];

    const moveData: Omit<SignatureMove, "signature"> = {
      id: rawMove.id,
      name: rawMove.name,
      upgradesId,
      additionalEffects: rawMove.extraText || null,
      endStep: rawMove.endStepEffect || null,
      damageTypes: getDamageTypes(rawMove.damageType),
      outcomes,
    };

    const sig = buildMoveSignature(moveData);
    if (!signatureMoves.has(sig)) {
      signatureMoves.set(sig, { ...moveData, signature: sig });
    }
    moveIdToCanonical.set(rawMove.id, signatureMoves.get(sig)!.id);
  }

  // Process abilities
  for (const rawAbility of character.Ability) {
    const arcaneOutcomes: ArcaneOutcome[] = (rawAbility.ArcaneOutcome || []).map(
      (ao: any) => ({
        outcomeText: ao.outcomeText,
        cards: getArcaneOutcomeCards(ao.cardValueRequirement, ao.catastropheOutcome),
      }),
    );

    const abilityData: Omit<Ability, "signature"> = {
      id: rawAbility.id,
      name: rawAbility.name,
      description: rawAbility.description || null,
      type: getAbilityType(rawAbility),
      energyCost: rawAbility.energyCost,
      range: rawAbility.range,
      pulse: rawAbility.pulse || false,
      oncePerTurn: rawAbility.oncePerTurn || false,
      oncePerGame: rawAbility.oncePerGame || false,
      needsReloading: rawAbility.needsReloading || false,
      arcaneOutcomes,
    };

    const sig = buildAbilitySignature(abilityData);
    if (!abilities.has(sig)) {
      abilities.set(sig, { ...abilityData, signature: sig });
    }
    const canonicalId = abilities.get(sig)!.id;
    abilityIdToCanonical.set(rawAbility.id, canonicalId);

    // Record character-ability relationship
    characterAbilities.push({
      characterId: character.id,
      abilityId: canonicalId,
    });
  }
}

// Deduplicate character-ability relationships
const uniqueCharacterAbilities = [
  ...new Map(
    characterAbilities.map((ca) => [`${ca.characterId}:${ca.abilityId}`, ca]),
  ).values(),
];

// ============================================================================
// Generate SQL output
// ============================================================================

const sql: string[] = [];

sql.push("-- Generated by moontombConverter.ts");
sql.push(`-- Generated at: ${new Date().toISOString()}`);
sql.push("");
sql.push("BEGIN;");
sql.push("");

// Reference data
sql.push("-- Reference data: damage_types");
sql.push("INSERT INTO damage_types (damage_type) VALUES");
sql.push("  ('Slicing'), ('Piercing'), ('Impact'), ('Magical');");
sql.push("");

sql.push("-- Reference data: factions");
sql.push("INSERT INTO factions (faction) VALUES");
sql.push("  ('Commonwealth'), ('Dominion'), ('Leshavult'), ('Shades');");
sql.push("");

sql.push("-- Reference data: ability_type");
sql.push("INSERT INTO ability_type (ability_type) VALUES");
sql.push("  ('Passive'), ('Active'), ('Arcane');");
sql.push("");

sql.push("-- Reference data: arcane_outcome_card_colors");
sql.push("INSERT INTO arcane_outcome_card_colors (color) VALUES");
sql.push("  ('Pink'), ('Blue'), ('Green');");
sql.push("");

sql.push("-- Reference data: arcane_outcome_card_values");
sql.push("INSERT INTO arcane_outcome_card_values (value) VALUES");
sql.push("  ('1'), ('2'), ('3'), ('X');");
sql.push("");

sql.push("-- Reference data: keywords");
const keywordsSorted = [...allKeywords].sort();
if (keywordsSorted.length > 0) {
  sql.push("INSERT INTO keywords (keyword) VALUES");
  sql.push(keywordsSorted.map((k) => `  (${esc(k)})`).join(",\n") + ";");
}
sql.push("");

// Basic melee moves
sql.push("-- Basic melee moves");
sql.push("INSERT INTO melee_moves (id, name) VALUES");
const basicMoves = [
  { id: highGuardId, name: "High guard" },
  { id: fallingSwingId, name: "Falling swing" },
  { id: sweepingCutId, name: "Sweeping cut" },
  { id: thrustId, name: "Thrust" },
  { id: lowGuardId, name: "Low guard" },
  { id: risingAttackId, name: "Rising attack" },
];
sql.push(basicMoves.map((m) => `  ('${m.id}', ${esc(m.name)})`).join(",\n") + ";");
sql.push("");

// Basic move damage types
sql.push("-- Basic move damage types");
sql.push("INSERT INTO melee_moves_to_damage_types (melee_move_id, damage_type) VALUES");
const basicMoveDamageTypes = [
  { moveId: fallingSwingId, type: "Impact" },
  { moveId: fallingSwingId, type: "Slicing" },
  { moveId: thrustId, type: "Piercing" },
  { moveId: sweepingCutId, type: "Slicing" },
  { moveId: risingAttackId, type: "Slicing" },
  { moveId: risingAttackId, type: "Piercing" },
  { moveId: risingAttackId, type: "Impact" },
];
sql.push(basicMoveDamageTypes.map((d) => `  ('${d.moveId}', '${d.type}')`).join(",\n") + ";");
sql.push("");

// Basic move outcomes (6x6 = 36 outcomes)
sql.push("-- Basic move outcomes");
sql.push("INSERT INTO melee_outcomes (melee_move_id, opposing_move_id, damage, is_counter) VALUES");
const basicOutcomes = [
  // High guard vs all
  { move: highGuardId, opp: highGuardId, dmg: null, counter: false },
  { move: highGuardId, opp: fallingSwingId, dmg: null, counter: true },
  { move: highGuardId, opp: sweepingCutId, dmg: null, counter: false },
  { move: highGuardId, opp: thrustId, dmg: null, counter: false },
  { move: highGuardId, opp: lowGuardId, dmg: null, counter: false },
  { move: highGuardId, opp: risingAttackId, dmg: null, counter: false },
  // Falling swing vs all
  { move: fallingSwingId, opp: highGuardId, dmg: null, counter: false },
  { move: fallingSwingId, opp: fallingSwingId, dmg: 0, counter: false },
  { move: fallingSwingId, opp: sweepingCutId, dmg: 3, counter: false },
  { move: fallingSwingId, opp: thrustId, dmg: 0, counter: false },
  { move: fallingSwingId, opp: lowGuardId, dmg: 2, counter: false },
  { move: fallingSwingId, opp: risingAttackId, dmg: 3, counter: false },
  // Thrust vs all
  { move: thrustId, opp: highGuardId, dmg: 0, counter: false },
  { move: thrustId, opp: fallingSwingId, dmg: 2, counter: false },
  { move: thrustId, opp: sweepingCutId, dmg: null, counter: false },
  { move: thrustId, opp: thrustId, dmg: 3, counter: false },
  { move: thrustId, opp: lowGuardId, dmg: 1, counter: false },
  { move: thrustId, opp: risingAttackId, dmg: 2, counter: false },
  // Sweeping cut vs all
  { move: sweepingCutId, opp: highGuardId, dmg: null, counter: false },
  { move: sweepingCutId, opp: fallingSwingId, dmg: 2, counter: false },
  { move: sweepingCutId, opp: sweepingCutId, dmg: 0, counter: false },
  { move: sweepingCutId, opp: thrustId, dmg: 0, counter: true },
  { move: sweepingCutId, opp: lowGuardId, dmg: null, counter: false },
  { move: sweepingCutId, opp: risingAttackId, dmg: 2, counter: false },
  // Low guard vs all
  { move: lowGuardId, opp: highGuardId, dmg: null, counter: false },
  { move: lowGuardId, opp: fallingSwingId, dmg: null, counter: false },
  { move: lowGuardId, opp: sweepingCutId, dmg: null, counter: false },
  { move: lowGuardId, opp: thrustId, dmg: null, counter: false },
  { move: lowGuardId, opp: lowGuardId, dmg: null, counter: false },
  { move: lowGuardId, opp: risingAttackId, dmg: null, counter: true },
  // Rising attack vs all
  { move: risingAttackId, opp: highGuardId, dmg: 2, counter: false },
  { move: risingAttackId, opp: fallingSwingId, dmg: 1, counter: false },
  { move: risingAttackId, opp: sweepingCutId, dmg: 2, counter: false },
  { move: risingAttackId, opp: thrustId, dmg: 1, counter: false },
  { move: risingAttackId, opp: lowGuardId, dmg: null, counter: false },
  { move: risingAttackId, opp: risingAttackId, dmg: 1, counter: false },
];
sql.push(
  basicOutcomes
    .map((o) => `  ('${o.move}', '${o.opp}', ${escNum(o.dmg)}, ${escBool(o.counter)})`)
    .join(",\n") + ";",
);
sql.push("");

// Signature melee moves
sql.push("-- Signature melee moves (deduplicated)");
const sigMoves = [...signatureMoves.values()];
if (sigMoves.length > 0) {
  sql.push("INSERT INTO melee_moves (id, name, upgrades_id, additional_effects, end_step) VALUES");
  sql.push(
    sigMoves
      .map(
        (m) =>
          `  ('${m.id}', ${esc(m.name)}, '${m.upgradesId}', ${esc(m.additionalEffects)}, ${esc(m.endStep)})`,
      )
      .join(",\n") + ";",
  );
  sql.push("");

  // Signature move damage types
  sql.push("-- Signature move damage types");
  const sigMoveDamageTypes: Array<{ moveId: string; type: string }> = [];
  for (const m of sigMoves) {
    for (const dt of m.damageTypes) {
      sigMoveDamageTypes.push({ moveId: m.id, type: dt });
    }
  }
  if (sigMoveDamageTypes.length > 0) {
    sql.push("INSERT INTO melee_moves_to_damage_types (melee_move_id, damage_type) VALUES");
    sql.push(
      sigMoveDamageTypes.map((d) => `  ('${d.moveId}', '${d.type}')`).join(",\n") + ";",
    );
  }
  sql.push("");

  // Signature move outcomes
  sql.push("-- Signature move outcomes");
  const sigMoveOutcomes: Array<{
    moveId: string;
    oppId: string;
    damage: number | null;
    isCounter: boolean;
  }> = [];
  for (const m of sigMoves) {
    for (const o of m.outcomes) {
      sigMoveOutcomes.push({
        moveId: m.id,
        oppId: o.opposingMoveId,
        damage: o.damage,
        isCounter: o.isCounter,
      });
    }
  }
  if (sigMoveOutcomes.length > 0) {
    sql.push("INSERT INTO melee_outcomes (melee_move_id, opposing_move_id, damage, is_counter) VALUES");
    sql.push(
      sigMoveOutcomes
        .map((o) => `  ('${o.moveId}', '${o.oppId}', ${escNum(o.damage)}, ${escBool(o.isCounter)})`)
        .join(",\n") + ";",
    );
  }
}
sql.push("");

// Abilities (deduplicated)
sql.push("-- Abilities (deduplicated)");
const abilityList = [...abilities.values()];
if (abilityList.length > 0) {
  sql.push(
    "INSERT INTO abilities (id, name, type, description, energy_cost, range, pulse, once_per_turn, once_per_game, needs_reloading) VALUES",
  );
  sql.push(
    abilityList
      .map(
        (a) =>
          `  ('${a.id}', ${esc(a.name)}, '${a.type}', ${esc(a.description)}, ${escNum(a.energyCost)}, ${escNum(a.range)}, ${escBool(a.pulse)}, ${escBool(a.oncePerTurn)}, ${escBool(a.oncePerGame)}, ${escBool(a.needsReloading)})`,
      )
      .join(",\n") + ";",
  );
}
sql.push("");

// Arcane outcomes
sql.push("-- Arcane outcomes");
const arcaneOutcomes: Array<{ id: string; abilityId: string; outcomeText: string }> = [];
const arcaneCards: Array<{
  id: string;
  outcomeId: string;
  color: string | null;
  value: string | null;
  isCatastrophe: boolean;
}> = [];

for (const ability of abilityList) {
  for (const ao of ability.arcaneOutcomes) {
    const outcomeId = crypto.randomUUID();
    arcaneOutcomes.push({
      id: outcomeId,
      abilityId: ability.id,
      outcomeText: ao.outcomeText,
    });
    for (const card of ao.cards) {
      arcaneCards.push({
        id: crypto.randomUUID(),
        outcomeId,
        color: card.color,
        value: card.value,
        isCatastrophe: card.isCatastrophe,
      });
    }
  }
}

if (arcaneOutcomes.length > 0) {
  sql.push("INSERT INTO arcane_outcomes (id, ability_id, outcome_text) VALUES");
  sql.push(
    arcaneOutcomes
      .map((ao) => `  ('${ao.id}', '${ao.abilityId}', ${esc(ao.outcomeText)})`)
      .join(",\n") + ";",
  );
}
sql.push("");

// Arcane outcome cards
sql.push("-- Arcane outcome cards");
if (arcaneCards.length > 0) {
  sql.push(
    "INSERT INTO arcane_outcome_cards (id, arcane_outcome_id, color, value, is_catastrophe) VALUES",
  );
  sql.push(
    arcaneCards
      .map(
        (c) =>
          `  ('${c.id}', '${c.outcomeId}', ${esc(c.color)}, ${esc(c.value)}, ${escBool(c.isCatastrophe)})`,
      )
      .join(",\n") + ";",
  );
}
sql.push("");

// Characters
sql.push("-- Characters");
sql.push(
  "INSERT INTO characters (id, name, health, energy, melee, melee_range, arcane, evade, base_size, signature_move_id, head_filename) VALUES",
);
const characterRows = characters.map((c: any) => {
  const energy = c.energyblips
    .split(",")
    .map((e: string) => parseInt(e.trim(), 10) - 1);
  const energyArray = `'{${energy.join(",")}}'`;

  const rawMove = c.SignatureMove;
  let signatureMoveId = "NULL";
  if (rawMove && rawMove.name !== "None" && rawMove.name !== "No Signature") {
    const canonicalId = moveIdToCanonical.get(rawMove.id);
    if (canonicalId) {
      signatureMoveId = `'${canonicalId}'`;
    }
  }

  return `  ('${c.id}', ${esc(c.name)}, ${c.maxhp}, ${energyArray}, ${escNum(c.melee)}, ${escNum(c.range)}, ${escNum(c.arcane)}, ${c.evade}, ${esc(c.baseSize ? "40mm" : "30mm")}, ${signatureMoveId}, ${esc(c.headFileName)})`;
});
sql.push(characterRows.join(",\n") + ";");
sql.push("");

// Characters to factions
sql.push("-- Characters to factions");
const charFactions: Array<{ charId: string; faction: string }> = [];
for (const c of characters) {
  const factions = c.faction
    .split(",")
    .map((f: string) => f.trim())
    .filter((f: string) => f.length > 0);
  for (const faction of factions) {
    charFactions.push({ charId: c.id, faction });
  }
}
if (charFactions.length > 0) {
  sql.push("INSERT INTO characters_to_factions (character_id, faction) VALUES");
  sql.push(
    charFactions.map((cf) => `  ('${cf.charId}', ${esc(cf.faction)})`).join(",\n") + ";",
  );
}
sql.push("");

// Characters to keywords
sql.push("-- Characters to keywords");
const charKeywords: Array<{ charId: string; keyword: string }> = [];
for (const c of characters) {
  const keywords = c.keywords
    .split(",")
    .map((k: string) => k.trim())
    .filter((k: string) => k.length > 0);
  for (const keyword of keywords) {
    charKeywords.push({ charId: c.id, keyword });
  }
}
if (charKeywords.length > 0) {
  sql.push("INSERT INTO characters_to_keywords (character_id, keyword) VALUES");
  sql.push(
    charKeywords.map((ck) => `  ('${ck.charId}', ${esc(ck.keyword)})`).join(",\n") + ";",
  );
}
sql.push("");

// Characters to abilities (junction table)
sql.push("-- Characters to abilities (junction table)");
if (uniqueCharacterAbilities.length > 0) {
  sql.push("INSERT INTO characters_to_abilities (character_id, ability_id) VALUES");
  sql.push(
    uniqueCharacterAbilities
      .map((ca) => `  ('${ca.characterId}', '${ca.abilityId}')`)
      .join(",\n") + ";",
  );
}
sql.push("");

sql.push("COMMIT;");

// Write output
const output = sql.join("\n");
await Bun.write("data/converted.sql", output);

console.log("Conversion complete!");
console.log(`  Characters: ${characters.length}`);
console.log(`  Abilities: ${abilityList.length} (deduplicated from ${characterAbilities.length} total)`);
console.log(`  Signature moves: ${sigMoves.length} (deduplicated)`);
console.log(`  Arcane outcomes: ${arcaneOutcomes.length}`);
console.log(`  Output: data/converted.sql`);
