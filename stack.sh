#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

COMMAND="$1"
TARGET="$2"

if [[ "$COMMAND $TARGET" == "up all" ]]; then
    echo "Running: docker compose up -d"
    sleep 2
    docker compose -f     ./proxy/docker-compose.yml up -d
    docker compose -f  ./database/docker-compose.yml up -d
    docker compose -f ./portainer/docker-compose.yml up -d
#    docker compose up -d

elif [[ "$COMMAND $TARGET" == "down all" ]]; then
    echo "Running: docker compose down"
    sleep 2
    docker compose -f ./portainer/docker-compose.yml down
    docker compose -f  ./database/docker-compose.yml down
    docker compose -f     ./proxy/docker-compose.yml down
    sleep 2

else
    echo "Usage:"
    echo "  $0 up all     # Runs docker compose up -d"
    echo "  $0 down all   # Runs docker compose down"
    exit 1
fi