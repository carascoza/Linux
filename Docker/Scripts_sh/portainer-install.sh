#!/bin/bash
# Autor: Marco Antonio Carascoza
# Data de criação: 5/05/2025
# Data de atualização: 05/05/2025
# Versão: 0.01
# Script Instalar Portainer

docker volume create portainer_data

## Download e instalação portainer server container
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

#Acessar https:// na porta 9443
#https://localhost:9443