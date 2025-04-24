#!/bin/bash
# Autor: Marco Antonio Carascoza
# Data de criação: 24/04/2025
# Data de atualização: 24/04/2025
# Versão: 0.01
# Script Update Release Linux Ubuntu
#Atualizar Pacotes Existentes: Certifique-se de que seu sistema atual está atualizado. Execute os seguintes comandos no terminal:
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
#Instalar o Gerenciador de Atualizações: Caso não esteja instalado, você pode instalar o gerenciador de atualizações com:
sudo apt install update-manager-core
#Visualize o arquivo /etc/update-manager/release-upgrades, antes de editá-lo
#cat /etc/update-manager/release-upgrades
#Por exemplo, se o parâmetro ‘Prompt’ estiver como ‘normal’ ou ‘never’, precisa defini-lo como lts, usando uma das opções abaixo.
#sudo sed -i 's/Prompt=normal/Prompt=lts/g' /etc/update-manager/release-upgrades
#sudo sed -i 's/Prompt=never/Prompt=lts/g' /etc/update-manager/release-upgrades
#Iniciar a Atualização: Use o comando abaixo para iniciar o processo de atualização:
sudo do-release-upgrade
lsb_release -a