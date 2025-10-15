# Laravel Installer Docker Image

Docker image with Laravel installer pre-installed for creating new Laravel projects.

## Usage

### Pull the image

```bash
docker pull ghcr.io/prvious/laravel-new
```

### Create a new Laravel project

```bash
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project
```

### With additional options

```bash
# With pnpm
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project --pnpm

# With database
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project --database=mysql

# Combined options
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project --pnpm --database=pgsql --git

# With Breeze starter kit
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project --breeze

# All Laravel new options are supported
docker run --rm -v $(pwd):/app ghcr.io/prvious/laravel-new my-project --jet --stack=livewire --teams
```

## Building Locally

```bash
docker build -t laravel-installer .
docker run --rm -v $(pwd):/app laravel-installer my-project
```

## Features

-   ✅ Based on official Composer image
-   ✅ Laravel installer pre-installed globally
-   ✅ Pass-through all `laravel new` arguments
-   ✅ Automatic builds via GitHub Actions
-   ✅ Published to GitHub Container Registry (GHCR)

## Available Tags

-   `latest` - Latest stable build with current Laravel installer version
-   `5.21.0` - Specific Laravel installer version (e.g., 5.21.0)
-   `v5.21.0` - Specific Laravel installer version with 'v' prefix
-   `main` - Latest build from main branch
-   `sha-abc123` - Specific commit builds

## Requirements

-   Docker
-   Volume mount to access created project files

## Example Output

```bash
$ docker run --rm -v $(pwd):/app ghcr.io/username/laravel-new my-app --pnpm

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
