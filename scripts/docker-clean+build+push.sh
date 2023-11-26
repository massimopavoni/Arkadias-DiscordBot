#!/bin/bash

. scripts/docker-build-env.sh
docker stop arkai arkai-mongo
docker rm arkai arkai-mongo
docker volume rm arkai_mongodata
docker network rm arkai_database
docker rmi $DOCKERHUB_USER/$DOCKERHUB_REPOSITORY:arkadias-discordbot
docker buildx create --name arkai_multiarch --use --bootstrap
docker buildx build --push --platform linux/amd64,linux/arm64 -t $DOCKERHUB_USER/$DOCKERHUB_REPOSITORY:arkadias-discordbot .
docker stop buildx_buildkit_arkai_multiarch
docker rm buildx_buildkit_arkai_multiarch
docker buildx rm arkai_multiarch
