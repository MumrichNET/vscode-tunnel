#!/bin/bash

DOCKER_TAG="vscode-tunnel"

docker build -t "$DOCKER_TAG" -f ./Dockerfile.Alpine .
docker run --rm "$DOCKER_TAG"
