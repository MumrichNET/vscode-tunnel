#!/bin/sh

set -e

DOCKER_TAG="vscode-tunnel"

docker build \
    -t "$DOCKER_TAG" \
    -f ./Dockerfile.Ubuntu \
    .

docker run --rm -it "$DOCKER_TAG" sh
