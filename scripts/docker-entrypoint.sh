#!/bin/bash
set -e

# Wait for database to be ready
echo "Waiting for database..."
until PGPASSWORD="$POSTGRES_PASSWORD" psql -h db -U postgres -d moonstone -c '\q' 2>/dev/null; do
  sleep 1
done

echo "Running database migrations..."
bun run apply-migrations

# Check if seeding is needed (characters table empty = fresh DB)
COUNT=$(bun run scripts/checkSeedNeeded.ts 2>/dev/null || echo "0")
if [ "$COUNT" = "0" ]; then
  echo "Database empty, importing seed data..."
  PGPASSWORD="$POSTGRES_PASSWORD" psql -h db -U postgres -d moonstone < /app/data/seed.sql
  echo "Seed data imported successfully"
else
  echo "Database already has $COUNT characters, skipping seed"
fi

echo "Starting application..."
exec "$@"
