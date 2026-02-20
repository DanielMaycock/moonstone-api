#!/bin/bash
set -e

# Parse connection details from DATABASE_URL
# Expected format: postgres://user:password@host:port/dbname
DB_USER=$(echo "$DATABASE_URL" | sed -E 's|postgres://([^:]+):.*|\1|')
DB_PASS=$(echo "$DATABASE_URL" | sed -E 's|postgres://[^:]+:([^@]+)@.*|\1|')
DB_HOST=$(echo "$DATABASE_URL" | sed -E 's|.*@([^:]+):.*|\1|')
DB_PORT=$(echo "$DATABASE_URL" | sed -E 's|.*:([0-9]+)/.*|\1|')
DB_NAME=$(echo "$DATABASE_URL" | sed -E 's|.*/([^?]+).*|\1|')

# Wait for database to be ready
echo "Waiting for database..."
until PGPASSWORD="$DB_PASS" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -c '\q' 2>/dev/null; do
  sleep 1
done

echo "Running database migrations..."
bun run apply-migrations

# Check if seeding is needed (characters table empty = fresh DB)
COUNT=$(bun run scripts/checkSeedNeeded.ts 2>/dev/null || echo "0")
if [ "$COUNT" = "0" ]; then
  echo "Database empty, importing seed data..."
  PGPASSWORD="$DB_PASS" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" < /app/data/seed.sql
  echo "Seed data imported successfully"
else
  echo "Database already has $COUNT characters, skipping seed"
fi

echo "Starting application..."
exec "$@"
