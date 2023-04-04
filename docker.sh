#!/bin/sh

# Docker Install

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y
sudo apt install docker-ce -y   
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ${USER}
sudo systemctl restart docker
sudo systemctl status docker
docker --version

# Docker Compose Install
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo apt-get update -y
sudo apt-get upgrade -y
docker-compose --version
