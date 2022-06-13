#!/usr/bin/env bash
# author: Johann N. Loefflmann, https://johann.loefflmann.net

source docker.conf

docker login
docker push ${IMAGE_NAME}:${VERSION}
docker push ${IMAGE_NAME}:latest
docker logout
