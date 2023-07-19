#!/bin/sh

set -e

DOCKER_TAG="vscode-tunnel"
VSCODE_COMMIT_ID="74f6148eb9ea00507ec113ec51c489d6ffb4b771"

docker build \
    -t "$DOCKER_TAG" \
    -f ./Dockerfile.Alpine \
    --build-arg "VSCODE_COMMIT_ID=${VSCODE_COMMIT_ID}" \
    .

docker run --rm -it "$DOCKER_TAG" sh
