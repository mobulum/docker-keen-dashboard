#!/bin/sh

IMAGE="mobulum/keen-dashboard"
VERSION="$1"
IMAGE_NAME="${IMAGE}:${VERSION}"

docker build $2 -t $IMAGE_NAME .
docker tag -f "$IMAGE_NAME" "${IMAGE}:latest"