#!/bin/bash

. $HOME/.local/bin/.arkai/docker-deploy-env.sh
docker stop arkai arkai-mongo
docker rm arkai arkai-mongo
docker network rm arkai_database
docker rmi $DOCKERHUB_USER/$DOCKERHUB_REPOSITORY:arkadias-discordbot
docker pull $DOCKERHUB_USER/$DOCKERHUB_REPOSITORY:arkadias-discordbot
