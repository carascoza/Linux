#!/bin/bash
# Autor: Marco Antonio Carascoza
# Data de criação: 05/05/2025
# Data de atualização: 05/05/2025
# Versão: 0.1
# Script Instalar Docker Debian

sudo apt -y update && sudo apt -y upgrade 
[ -f /var/run/reboot-required ] && sudo reboot -f
sudo apt install lsb-release gnupg2 apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/debian.gpg
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl start docker && sudo systemctl enable docker
docker --version
docker compose version
docker network create --driver bridge docker_default

## no caso de erro repositorio alterar o /etc/apt/sources.list
#sudo nano /etc/apt/sources.list

#deb http://deb.debian.org/debian stable main
#deb http://security.debian.org/debian-security stable-security main