#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce

sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt update
sudo apt install -y fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

echo "fisher add oh-my-fish/theme-agnoster" | fish

echo 'set DOCKER_HOST tcp://0.0.0.0:2375 $DOCKER_HOST' >> ~/.config/fish/config.fish
chsh -s /usr/bin/fish
