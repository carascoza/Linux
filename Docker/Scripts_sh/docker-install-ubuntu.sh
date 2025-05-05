#!/bin/bash
# Autor: Marco Antonio Carascoza
# Data de criação: 15/12/2023
# Data de atualização: 05/05/2025
# Versão: 0.01
# Script Instalar Docker Ubuntu

# Atualizar linux:
sudo apt -y update && sudo apt -y upgrade 
#instalar certificado
sudo apt-get install \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below. Learn about nightly and test channels:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#Install Docker Engine:
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#Permissão de sudo do docker:
sudo usermod -aG docker $USER 
sudo systemctl start docker && sudo systemctl enable docker
docker --version
docker compose version
docker network create --driver bridge docker_default