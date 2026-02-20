# VPS Setup Guide

This guide covers the one-time setup required to deploy MoonstoneAPI on a VPS.

## Architecture

```
VPS (/opt/)
├── traefik/                    # Reverse proxy (shared across apps)
│   ├── docker-compose.yml
│   ├── traefik.yml
│   └── acme.json
│
└── moonstoneapi/               # This app
    ├── docker-compose.prod.yml
    └── .env
```

**Networks:**
- `traefik-public` - Shared external network for HTTP routing
- `moonstoneapi-internal` - Internal network for app-to-DB communication

---

## Prerequisites

- VPS with Docker installed
- Domain pointing to VPS IP
- SSH access configured

---

## 1. Install Docker

```bash
curl -fsSL https://get.docker.com | sh
```

## 2. Create Shared Network

```bash
docker network create traefik-public
```

## 3. Set Up Traefik (Reverse Proxy)

Traefik handles HTTPS termination and routing for all apps on the VPS.

```bash
mkdir -p /opt/traefik && cd /opt/traefik
touch acme.json && chmod 600 acme.json
```

Create `/opt/traefik/docker-compose.yml`:

```yaml
services:
  traefik:
    image: traefik:v3.0
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./traefik.yml:/etc/traefik/traefik.yml:ro
      - ./acme.json:/acme.json
    networks:
      - traefik-public

networks:
  traefik-public:
    external: true
```

Create `/opt/traefik/traefik.yml`:

```yaml
entryPoints:
  web:
    address: ":80"
    http:
      redirections:
        entryPoint:
          to: websecure
          scheme: https
  websecure:
    address: ":443"

providers:
  docker:
    exposedByDefault: false
    network: traefik-public

certificatesResolvers:
  letsencrypt:
    acme:
      email: your-email@example.com  # Change this
      storage: /acme.json
      httpChallenge:
        entryPoint: web
```

Start Traefik:

```bash
cd /opt/traefik
docker compose up -d
```

## 4. Set Up MoonstoneAPI

```bash
mkdir -p /opt/moonstoneapi && cd /opt/moonstoneapi
```

Copy `docker-compose.prod.yml` from the repository to `/opt/moonstoneapi/`.

Create `/opt/moonstoneapi/.env`:

```bash
# Generate a strong password
POSTGRES_PASSWORD=your-secure-password-here

# GitHub username/org for pulling images
GITHUB_REPOSITORY_OWNER=your-github-username

# Docker image tag
IMAGE_TAG=latest

# Domain for API (must point to this VPS)
API_DOMAIN=api.yourdomain.com
```

## 5. Configure GitHub Secrets

Add these secrets to your GitHub repository (Settings > Secrets and variables > Actions):

| Secret | Description |
|--------|-------------|
| `VPS_HOST` | VPS IP address or hostname |
| `VPS_USERNAME` | SSH username (e.g., `root` or `deploy`) |
| `VPS_SSH_KEY` | Private SSH key for authentication |
| `GHCR_TOKEN` | GitHub Personal Access Token with `read:packages` scope |

### Creating the GHCR Token

1. Go to GitHub Settings > Developer settings > Personal access tokens > Tokens (classic)
2. Generate new token with `read:packages` scope
3. Copy the token and add it as `GHCR_TOKEN` secret

### Setting Up SSH Key

1. Generate a key pair (if needed): `ssh-keygen -t ed25519 -C "github-actions"`
2. Add public key to VPS: `~/.ssh/authorized_keys`
3. Add private key as `VPS_SSH_KEY` secret in GitHub

## 6. First Deployment

Once secrets are configured, either:

- Push to `main` branch (triggers automatic deployment)
- Manually trigger workflow from GitHub Actions tab

## 7. Verification

After deployment, verify everything is working:

```bash
# On VPS - check containers
docker ps

# Health check
curl https://api.yourdomain.com/health

# API test
curl https://api.yourdomain.com/characters
```

---

## Troubleshooting

### View container logs

```bash
cd /opt/moonstoneapi
docker compose -f docker-compose.prod.yml logs -f api
docker compose -f docker-compose.prod.yml logs -f db
```

### Restart services

```bash
cd /opt/moonstoneapi
docker compose -f docker-compose.prod.yml restart
```

### Check Traefik logs

```bash
cd /opt/traefik
docker compose logs -f
```

### Manual image pull

```bash
cd /opt/moonstoneapi
echo "YOUR_GHCR_TOKEN" | docker login ghcr.io -u YOUR_USERNAME --password-stdin
docker compose -f docker-compose.prod.yml pull api
docker compose -f docker-compose.prod.yml up -d
```
