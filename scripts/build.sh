#!/bin/bash

git clone https://github.com/massimopavoni/Arkadias-DiscordBot.git
cd Arkadias-DiscordBot
vim scripts/docker-build-env.sh
printf "\nMake sure the variables you set are correct and run \". scripts/docker-clean+build+push.sh\"\n"
