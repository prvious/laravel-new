# Laravel Installer Docker Image

🚀 **Self-updating** Docker image with Laravel installer pre-installed for creating new Laravel projects.

> This image automatically updates every hour when new Laravel installer versions are released.

## Usage

### Pull the image

```bash
docker pull ghcr.io/prvious/laravel-new
```

### Create a new Laravel project

```bash
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example
```

### With additional options

```bash
# With pnpm
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --pnpm

# With database
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --database=mysql

# Combined options
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --pnpm --database=pgsql --git

# With Breeze starter kit
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --breeze

# All Laravel new options are supported
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --jet --stack=livewire --teams
```

## Building Locally

```bash
docker build -t laravel-installer .
docker run --rm -v $(pwd):/app laravel-installer my-project
```

## Features

-   🍆 Based on official Composer image
-   🍆 Laravel installer pre-installed globally
-   🍆 **Multi-architecture**: Supports AMD64 (Intel/AMD) and ARM64 (Apple Silicon)
-   🍆 Pass-through all `laravel new` arguments
-   🍆 **Auto-updating**: Checks for new Laravel installer versions every 6 hours
-   🍆 **Smart builds**: Only pushes when there's a new version
-   🍆 **Auto-releases**: GitHub releases created automatically with Laravel changelogs
-   🍆 Published to GitHub Container Registry (GHCR)

## Available Tags

-   `latest` - Always the newest Laravel installer version (auto-updated)
-   `5.21.0` - Specific Laravel installer version (e.g., 5.21.0)
-   `v5.21.0` - Specific Laravel installer version with 'v' prefix
-   `main` - Latest build from main branch
-   `sha-abc123` - Specific commit builds

## Supported Architectures

This image supports multiple architectures and Docker will automatically pull the correct version for your platform:

-   `linux/amd64` - Intel/AMD processors (x86_64)
-   `linux/arm64` - ARM processors (Apple Silicon M1/M2/M3/M4, AWS Graviton, Raspberry Pi 4+)

## Requirements

-   Docker
-   Volume mount to access created project files

## Example Output

```bash
$ docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new example --pnpm

   _                               _
  | |                             | |
  | |     __ _ _ __ __ ___   _____| |
  | |    / _` | '__/ _` \ \ / / _ \ |
  | |___| (_| | | | (_| |\ V /  __/ |
  |______\__,_|_|  \__,_| \_/ \___|_|

Creating a "laravel/laravel" project at "./my-app"
Installing laravel/laravel (v10.x-dev)
  - Downloading laravel/laravel (v10.x-dev)
  - Installing laravel/laravel (v10.x-dev): Extracting archive
Created project in /app/my-app
...
```
