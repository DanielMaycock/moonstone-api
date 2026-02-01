import type { Kysely } from "kysely";
import { sql } from "kysely";

export async function up(db: Kysely<unknown>): Promise<void> {
  // Step 1: Get all signature moves with their full signature (including outcomes)
  const signatureMoves = await sql<{
    id: string;
    name: string;
    signature: string;
  }>`
    WITH move_signature AS (
      SELECT
        mm.id,
        mm.name,
        CONCAT(
          COALESCE(mm.name, ''), '|',
          COALESCE(mm.additional_effects, ''), '|',
          COALESCE(mm.end_step, ''), '|',
          COALESCE(bm.name, ''), '|',
          COALESCE(
            (SELECT STRING_AGG(damage_type, ',' ORDER BY damage_type)
             FROM melee_moves_to_damage_types WHERE melee_move_id = mm.id),
            ''
          ), '|',
          COALESCE(
            (SELECT STRING_AGG(
              CONCAT(om.name, ':', COALESCE(mo.damage::text, 'N'), ':', mo.is_counter::text),
              '|' ORDER BY om.name
             )
             FROM melee_outcomes mo
             JOIN melee_moves om ON om.id = mo.opposing_move_id
             WHERE mo.melee_move_id = mm.id),
            ''
          )
        ) as signature
      FROM melee_moves mm
      LEFT JOIN melee_moves bm ON bm.id = mm.upgrades_id
      WHERE mm.upgrades_id IS NOT NULL
    )
    SELECT id, name, signature FROM move_signature
    ORDER BY id
  `.execute(db);

  // Step 2: Group by signature to find duplicates, pick first as canonical
  const signatureToCanonical = new Map<string, string>();
  const moveToCanonical = new Map<string, string>();

  for (const row of signatureMoves.rows) {
    if (!signatureToCanonical.has(row.signature)) {
      signatureToCanonical.set(row.signature, row.id);
    }
    moveToCanonical.set(
      row.id,
      signatureToCanonical.get(row.signature) as string,
    );
  }

  // Step 3: Update characters to point to canonical moves
  const updates: { characterMoveId: string; canonicalId: string }[] = [];
  for (const row of signatureMoves.rows) {
    const canonicalId = moveToCanonical.get(row.id) as string;
    if (canonicalId !== row.id) {
      updates.push({ characterMoveId: row.id, canonicalId });
    }
  }

  for (const update of updates) {
    await sql`
      UPDATE characters
      SET signature_move_id = ${update.canonicalId}::uuid
      WHERE signature_move_id = ${update.characterMoveId}::uuid
    `.execute(db);
  }

  // Step 4: Delete non-canonical moves (cascades to melee_outcomes and melee_moves_to_damage_types)
  const canonicalIds = new Set(signatureToCanonical.values());
  const idsToDelete = signatureMoves.rows
    .map((r) => r.id)
    .filter((id) => !canonicalIds.has(id));

  if (idsToDelete.length > 0) {
    await db
      .deleteFrom("melee_moves" as never)
      .where("id" as never, "in", idsToDelete as never)
      .execute();
  }

  console.log(
    `Deduplicated signature moves: ${signatureMoves.rows.length} -> ${canonicalIds.size}`,
  );
  console.log(`Updated ${updates.length} character references`);
  console.log(`Deleted ${idsToDelete.length} duplicate moves`);
}

export async function down(db: Kysely<unknown>): Promise<void> {
  // This is a destructive migration - down requires restoring from backup
  console.log(
    "This migration cannot be fully reversed. Restore from backup if needed.",
  );
}
