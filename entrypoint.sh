#!/bin/sh
set -e

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Project name required"
    echo "Usage: docker run <image> <project-name> [options]"
    echo "Example: docker run <image> my-app --pnpm --database=mysql"
    exit 1
fi

# Execute laravel new with all provided arguments
exec laravel new "$@"