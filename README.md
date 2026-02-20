# MoonstoneAPI

A RESTful API for the Moonstone tabletop game, providing data on characters, abilities, factions, keywords, and melee combat mechanics.

## Running Locally with Docker

### 1. Start the containers

```bash
docker-compose up
```

This starts PostgreSQL and the API server. The API server waits for Postgres to be healthy before starting.

### 2. Apply migrations

```bash
DATABASE_URL=postgres://postgres:p4ssw0rd@localhost:5432/postgres bun run apply-migrations
```

### 3. Seed the database

If you have `psql` installed:

```bash
psql postgres://postgres:p4ssw0rd@localhost:5432/postgres -f data/seed.sql
```

Otherwise, use the running Docker container:

```bash
docker exec -i $(docker ps -qf name=db) psql -U postgres < data/seed.sql
```

### 4. Verify

```bash
curl http://localhost:3000/characters
```

## Development

```bash
bun run dev                # Start dev server with hot reload
bun run apply-migrations   # Run database migrations
bun run migrate-down       # Rollback migrations
bun run generate-types     # Regenerate TypeScript types from DB schema
bun run biome              # Lint and format with Biome
```
