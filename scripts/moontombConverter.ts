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

const getUpgradesMoveId = (upgradeFor: number) => {
  switch (upgradeFor) {
    case 0:
      return highGuardId;
    case 1:
      return fallingSwingId;
    case 2:
      return thrustId;
    case 3:
      return sweepingCutId;
    case 4:
      return risingAttackId;
    case 5:
      return lowGuardId;
    default:
      throw Error("Unrecognised upgradeFor value");
  }
};

const getMeleeOutcomes = (
  id: string,
  parryType: number,
  highGuardDamage: number | null,
  fallingSwingDamage: number | null,
  thrustDamage: number | null,
  sweepingCutDamage: number | null,
  risingAttackDamage: number | null,
  lowGuardDamage: number
) => {
  // parryType
  // 4 = Thrust
  // 47 = Rising attack
  // 22 = Falling Swing, Thrust, Rising Attack
  // 59 = Thrust
  // 45 = Falling swing, rising attack
  // 30 = Falling swing, thrust, sweeping cut, rising attack
  // 49 = Falling swing, thrust, sweeping cut
  //
  return [
    {
      damage: highGuardDamage,
      isCounter: false,
      meleeMoveId: id,
      opposingMoveId: highGuardId,
    },
    {
      damage: fallingSwingDamage,
      isCounter:
        parryType === 22 ||
        parryType === 45 ||
        parryType === 30 ||
        parryType === 49,
      meleeMoveId: id,
      opposingMoveId: fallingSwingId,
    },
    {
      damage: thrustDamage,
      isCounter:
        parryType === 4 ||
        parryType === 22 ||
        parryType === 59 ||
        parryType === 30 ||
        parryType === 49,
      meleeMoveId: id,
      opposingMoveId: thrustId,
    },
    {
      damage: sweepingCutDamage,
      isCounter: parryType === 30 || parryType === 49,
      meleeMoveId: id,
      opposingMoveId: sweepingCutId,
    },
    {
      damage: risingAttackDamage,
      isCounter:
        parryType === 47 ||
        parryType === 22 ||
        parryType === 45 ||
        parryType === 30,
      meleeMoveId: id,
      opposingMoveId: risingAttackId,
    },
    {
      damage: lowGuardDamage,
      isCounter: false,
      meleeMoveId: id,
      opposingMoveId: lowGuardId,
    },
  ];
};

const getSignatureMove = (signatureMove: any) => ({
  id: signatureMove.id,
  name: signatureMove.name,
  upgradesId: getUpgradesMoveId(signatureMove.upgradeFor),
  meleeOutcomes: getMeleeOutcomes(
    signatureMove.id,
    signatureMove.parryType,
    signatureMove.highGuardDamage,
    signatureMove.fallingSwingDamage,
    signatureMove.thrustDamage,
    signatureMove.sweepingCutDamage,
    signatureMove.risingAttackDamage,
    signatureMove.lowGuardDamage
  ),
  additionalEffects: signatureMove.extraText,
  endSteps: signatureMove.endStepEffect,
});

const getArcaneOutcomeCards = (cardValue: number, isCatastrophe: boolean) => {
  // Outcome values
  // 0 - ? Something odd here
  // 3 - X (red)
  // 5 - 2 (blue, red)
  // 10 - 3 (blue, red)
  // 12 - X (blue)
  // 16 - 2 (red, blue, green)
  // 17 - 2 (red, green)
  // 32 - 3 (red, blue, green)
  // 42 - 3 (red, blue, green)
  // 48 - X (green)
  // 51 - X (red, green)
  // 60 - X (blue, green)
  if (isCatastrophe) {
    return [{ catastrophe: true }];
  }

  switch (cardValue) {
    case 0:
      return [{ color: "Placeholder", value: "Placeholder" }];
    case 3:
      return [{ color: "red", value: "X" }];
    case 5:
      return [
        { color: "blue", value: "2" },
        { color: "red", value: "2" },
      ];
    case 10:
      return [
        { color: "blue", value: "3" },
        { color: "red", value: "3" },
      ];
    case 12:
      return [{ color: "blue", value: "X" }];
    case 16:
      return [
        { color: "red", value: "2" },
        { color: "blue", value: "2" },
        { color: "green", value: "2" },
      ];
    case 17:
      return [
        { color: "red", value: "2" },
        { color: "green", value: "2" },
      ];
    case 32:
      return [
        { color: "red", value: "3" },
        { color: "blue", value: "3" },
        { color: "green", value: "3" },
      ];
    case 42:
      return [
        { color: "red", value: "3" },
        { color: "blue", value: "3" },
        { color: "green", value: "3" },
      ];
    case 48:
      return [{ color: "green", value: "X" }];
    case 51:
      return [
        { color: "red", value: "X" },
        { color: "green", value: "X" },
      ];
    case 60:
      return [
        { color: "blue", value: "X" },
        { color: "green", value: "X" },
      ];
    default:
      throw new Error(`Unrecognised card value ${cardValue}`);
  }
};

const getArcaneOutcomes = (outcome: any) => {
  return {
    abilityId: outcome.abilityId,
    outcomeText: outcome.outcomeText,
    outcomeCards: getArcaneOutcomeCards(
      outcome.cardValueRequirement,
      outcome.catastropheOutcome
    ),
  };
};

const getAbilityType = (ability: any) => {
  if (ability.energyCost === null) {
    return "Passive";
  }

  if (ability.ArcaneOutcome.length > 0) {
    return "Arcane";
  }

  return "Active";
};

const getAbility = (characterId: string, ability: any) => ({
  characterId: characterId,
  id: ability.id,
  name: ability.name,
  description: ability.description,
  energyCost: ability.energyCost,
  oncePerGame: ability.oncePerGame,
  oncePerTurn: ability.oncePerTurn,
  pulse: ability.pulse,
  range: ability.range,
  type: getAbilityType(ability),
  arcaneOutcomes: ability.ArcaneOutcome.map(getArcaneOutcomes),
});

const results = characters.map((character: any) => {
  return {
    id: character.id,
    name: character.name,
    factions: character.faction
      .split(",")
      .map((faction: string) => faction.trim()),
    keywords: character.keywords
      .split(",")
      .map((faction: string) => faction.trim()),
    health: character.maxhp,
    energy: character.energyblips
      .split(",")
      .map((e: string) => parseInt(e.trim(), 10) - 1),
    melee: character.melee,
    range: character.range,
    arcane: character.arcane,
    evade: character.evade,
    baseSize: character.baseSize ? "40mm" : "30mm",
    headFilename: character.headFileName,
    signatureMove: getSignatureMove(character.SignatureMove),
    abilities: character.Ability.map((ability: any) =>
      getAbility(character.id, ability)
    ),
  };
});

await Bun.write("data/characters.json", JSON.stringify(results, null, 2));
console.log("Characters extracted to /data/characters.json");
