const file = Bun.file("./data/raw_characters.json");

const characters = await file.json();

const outcomes = characters.flatMap((character: any) =>
  character.Ability.flatMap((ability: any) =>
    ability.ArcaneOutcome.map((outcome: any) => ({
      name: character.name,
      ability: ability.name,
      cardValue:
        outcome.catastropheOutcome === true ? -1 : outcome.cardValueRequirement,
      cardColor:
        outcome.catastropheOutcome === true
          ? -1
          : outcome.cardColourRequirement,
    })),
  ),
);

outcomes.sort((a: any, b: any) => a.cardValue - b.cardValue);

const out_file = Bun.file("data/outcomes.txt");
const writer = out_file.writer();

outcomes.forEach((outcome: any) => {
  console.log(outcome);
  writer.write(
    `${outcome.cardColor} ${outcome.cardValue} : ${outcome.name} - ${outcome.ability} \n`,
  );
});
