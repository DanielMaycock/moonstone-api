import { db } from "../src/db/index.js";

const file = Bun.file("./data/characters.json");

const characters = await file.json();

await db.transaction().execute(async (tx) => {
  for (const character of characters) {
    console.log("Inserting character ", character.name);

    if (character.signatureMove !== undefined) {
      await tx
        .insertInto("meleeMoves")
        .values({
          id: character.signatureMove.id,
          name: character.signatureMove.name,
          additionalEffects: character.signatureMove.additionalEffects,
          endStep: character.signatureMove.endSteps,
          upgradesId: character.signatureMove.upgradesId,
        })
        .executeTakeFirstOrThrow();

      await tx.insertInto("meleeOutcomes").values(
        character.signatureMove.meleeOutcomes
      ).execute();

      for (const damageType of character.signatureMove.damageTypes) {
        await tx
          .insertInto("meleeMovesToDamageTypes")
          .values({
            meleeMoveId: character.signatureMove.id,
            damageType: damageType,
          })
          .execute();
      }
    } 

    await tx
      .insertInto("characters")
      .values({
        id: character.id,
        name: character.name,
        baseSize: character.baseSize,
        health: character.health,
        energy: character.energy,
        melee: character.melee,
        meleeRange: character.range,
        arcane: character.arcane,
        evade: character.evade,
        signatureMoveId: character.signatureMove?.id,
        headFilename: character.headFilename,
      })
      .executeTakeFirstOrThrow();

    for (const faction of character.factions) {
      await tx
        .insertInto("charactersToFactions")
        .values({
          characterId: character.id,
          faction: faction,
        })
        .execute();
    }

    for (const keyword of character.keywords) {
      await tx
        .insertInto("keywords")
        .values({ keyword: keyword })
        .onConflict((oc) => oc.doNothing())
        .execute();

      await tx
        .insertInto("charactersToKeywords")
        .values({
          characterId: character.id,
          keyword: keyword,
        })
        .execute();
    }

    for (const ability of character.abilities) {
      const { id: abilityId } = await tx
        .insertInto("abilities")
        .values({
          characterId: character.id,
          name: ability.name,
          energyCost: ability.energyCost,
          pulse: ability.pulse,
          range: ability.range,
          description: ability.description,
          oncePerGame: ability.oncePerGame,
          oncePerTurn: ability.oncePerTurn,
          type: ability.type,
          needsReloading: ability.needsReloading || false,
        })
        .returning("id")
        .executeTakeFirstOrThrow();

      for (const outcome of ability.arcaneOutcomes) {
        const outcomeId = crypto.randomUUID();
        await tx
          .insertInto("arcaneOutcomes")
          .values({
            id: outcomeId,
            abilityId: abilityId,
            outcomeText: outcome.outcomeText,
          })
          .execute();

        for (const outcomeCard of outcome.outcomeCards) {
          await tx
            .insertInto("arcaneOutcomeCards")
            .values({
              id: crypto.randomUUID(),
              arcaneOutcomeId: outcomeId,
              color: outcomeCard.color,
              isCatastrophe: outcomeCard.catastrophe ?? false,
              value: outcomeCard.value,
            })
            .execute();
        }
      }
    }
  }
});
