# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MoonstoneAPI is a RESTful API server for the Moonstone tabletop game. It provides game data including characters, abilities, factions, keywords, and melee combat mechanics.

The api is designed to be publicly accessible and read only so no authentication should be needed. 

- **Runtime**: Bun
- **Framework**: Hono (web framework)
- **Database**: PostgreSQL with Kysely (type-safe query builder)
- **Validation**: Valibot for schema validation
- **Linting/Formatting**: Biome

## Common Commands

```bash
bun run dev                # Start dev server with hot reload
bun run apply-migrations   # Run database migrations
bun run migrate-down       # Rollback migrations
bun run seed-characters    # Seed character data from JSON
bun run generate-types     # Generate TypeScript types from DB schema (kysely-codegen)
bun run biome              # Run Biome linter/formatter with auto-fix
```

Docker setup:
```bash
docker-compose up          # Start PostgreSQL + API server
```

## Architecture

The codebase follows a layered architecture:

```
src/
├── index.ts       # Hono app entry point, middleware, route mounting
├── db/            # Database config (Kysely instance, auto-generated types)
├── routes/        # HTTP handlers with request validation
└── queries/       # Reusable Kysely query builders
```

**Request flow**: Route (validation) → Query builder → Database → JSON response

### Key Patterns

- **Type generation**: Run `bun run generate-types` after schema changes to regenerate `src/db/db.d.ts`
- **Case conversion**: Kysely's `CamelCasePlugin` converts DB snake_case to camelCase automatically
- **Nested data**: Complex queries use `jsonArrayFrom()` and `jsonObjectFrom()` for nested JSON aggregation
- **Filtering**: Query parameters use case-insensitive LIKE searches (see `queries/helpers.ts` for SQL helpers)

### Database Schema

Core tables: `characters`, `abilities`, `arcaneOutcomes`, `meleeMoves`, `meleeOutcomes`, `factions`, `keywords`

Junction tables for many-to-many: `charactersToFactions`, `charactersToKeywords`, `meleeMovesToDamageTypes`

Migrations are in `migrations/` using Kysely's FileMigrationProvider pattern.

## API Endpoints

- `GET /characters` - Characters with filtering (name, faction, keyword)
- `GET /abilities` - Abilities with filtering (name, character, type)
- `GET /factions` - All factions
- `GET /keywords` - All keywords
- `GET /meleeMoves/:id` - Melee moves for a character
- `GET /images/*` - Static image serving

## Git commit guidelines

All commits should start with a summary, this should be prefix with one of the below depending on the changes in the commit
- feat - the commit is a new feature
- fix - the commit fixes a bug or issue

Below this should be a list of more details of the changes made.

Do not add co-authored text to commit messages
