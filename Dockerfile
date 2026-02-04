FROM oven/bun:latest

WORKDIR /app

# Install postgresql-client for seed import
USER root
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

# Copy package files first for better layer caching
COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile --production

# Copy application code
COPY . .

# Make entrypoint executable
RUN chmod +x scripts/docker-entrypoint.sh

USER bun
EXPOSE 3000

ENTRYPOINT ["./scripts/docker-entrypoint.sh"]
CMD ["bun", "run", "src/index.ts"]
