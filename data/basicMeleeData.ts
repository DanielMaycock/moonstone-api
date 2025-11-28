// Basic melee data
// export const slicingId = "e91b85e8-bfeb-4daa-9fb9-a8005620f6b0";
// export const piercingId = "9d8150d9-f75b-49f8-9653-40860cc78257";
// export const impactId = "521aff2d-a791-4b00-bf0a-fe4f26a0a1c8";
// export const magicalId = "62f315d2-963e-4730-bc1f-28cf7ae6584b";

export const damageTypeList = [
  {
    damage_type: "Slicing",
  },
  {
    damage_type: "Piercing",
  },
  {
    damage_type: "Impact",
  },
  {
    damage_type: "Magical",
  },
];

export const highGuardId = "1f885eaf-5970-4947-addf-5dd4320152ca";
export const fallingSwingId = "10916f22-e020-4161-bade-ca227a3db51e";
export const sweepingCutId = "67dab184-4881-4710-b486-0b22594b0649";
export const thrustId = "20b29022-920e-40f5-bb31-81bf895bb6f3";
export const lowGuardId = "7f40c8fe-d847-4694-a09a-acf689fd5d2d";
export const risingAttackId = "f3ff3c3a-5aa6-4092-ab66-be277b9294a1";

export const basicMoves = [
  {
    id: highGuardId,
    name: "High guard",
  },
  {
    id: fallingSwingId,
    name: "Falling swing",
  },
  {
    id: sweepingCutId,
    name: "Sweeping cut",
  },
  {
    id: thrustId,
    name: "Thrust",
  },
  {
    id: lowGuardId,
    name: "Low guard",
  },
  {
    id: risingAttackId,
    name: "Rising attack",
  },
];

export const basicMovesToDamageTypes = [
  { melee_move_id: fallingSwingId, damage_type: "Impact" },
  { melee_move_id: fallingSwingId, damage_type: "Slicing" },
  { melee_move_id: thrustId, damage_type: "Piercing" },
  { melee_move_id: sweepingCutId, damage_type: "Slicing" },
  { melee_move_id: risingAttackId, damage_type: "Slicing" },
  { melee_move_id: risingAttackId, damage_type: "Piercing" },
  { melee_move_id: risingAttackId, damage_type: "Impact" },
];

export const basicMovesOutcomes = [
  {
    melee_move_id: highGuardId,
    opposing_move_id: highGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: highGuardId,
    opposing_move_id: fallingSwingId,
    damage: null,
    is_counter: true,
  },
  {
    melee_move_id: highGuardId,
    opposing_move_id: sweepingCutId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: highGuardId,
    opposing_move_id: thrustId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: highGuardId,
    opposing_move_id: lowGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: highGuardId,
    opposing_move_id: risingAttackId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: highGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: fallingSwingId,
    damage: 0,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: sweepingCutId,
    damage: 3,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: thrustId,
    damage: 0,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: lowGuardId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: fallingSwingId,
    opposing_move_id: risingAttackId,
    damage: 3,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: highGuardId,
    damage: 0,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: fallingSwingId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: sweepingCutId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: thrustId,
    damage: 3,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: lowGuardId,
    damage: 1,
    is_counter: false,
  },
  {
    melee_move_id: thrustId,
    opposing_move_id: risingAttackId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: highGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: fallingSwingId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: sweepingCutId,
    damage: 0,
    is_counter: false,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: thrustId,
    damage: 0,
    is_counter: true,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: lowGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: sweepingCutId,
    opposing_move_id: risingAttackId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: highGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: fallingSwingId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: sweepingCutId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: thrustId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: lowGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: lowGuardId,
    opposing_move_id: risingAttackId,
    damage: null,
    is_counter: true,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: highGuardId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: fallingSwingId,
    damage: 1,
    is_counter: false,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: sweepingCutId,
    damage: 2,
    is_counter: false,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: thrustId,
    damage: 1,
    is_counter: false,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: lowGuardId,
    damage: null,
    is_counter: false,
  },
  {
    melee_move_id: risingAttackId,
    opposing_move_id: risingAttackId,
    damage: 1,
    is_counter: false,
  },
];
