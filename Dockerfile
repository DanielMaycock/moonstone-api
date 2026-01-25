FROM oven/bun:latest
ARG NODE_ENV=production
ENV NODE_ENV=$NODE_ENV

WORKDIR /app

# Setup hono-server
COPY . .
RUN bun install --frozen-lockfile --production

USER bun
EXPOSE 3000
ENTRYPOINT [ "bun", "run", "src/index.ts" ]