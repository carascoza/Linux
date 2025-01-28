# Use uma imagem base do Python
FROM python:3.9-slim

# Define as variáveis de ambiente
ENV ANSIBLE_VERSION=2.10.7

# Atualiza os pacotes e instala as dependências necessárias
RUN apt-get update && \
    apt-get install -y sshpass && \
    pip install ansible==$ANSIBLE_VERSION && \
    rm -rf /var/lib/apt/lists/*

# Adiciona um volume para os arquivos do Ansible
VOLUME /ansible

# Define o diretório de trabalho
WORKDIR /ansible

# Define o ponto de entrada para o contêiner
ENTRYPOINT ["ansible-playbook"]