#!/bin/bash

mkdir -p $HOME/.local/bin/.arkai && cd $_
curl -OOO https://raw.githubusercontent.com/massimopavoni/Arkadias-DiscordBot/master/scripts/{docker-clean+pull.sh,docker-deploy-env.sh,arkai_docker-compose.yml}
cd .. && curl -O https://raw.githubusercontent.com/massimopavoni/Arkadias-DiscordBot/master/scripts/arkai
chmod +x arkai
vim .arkai/docker-deploy-env.sh
cd $HOME && printf "\nMake sure the variables you set are correct and run \"arkai\"\n"
