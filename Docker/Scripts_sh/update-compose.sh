#!/bin/bash

# Busca todos os diretórios que contêm um arquivo compose.yml
dirs=$(find ~/containers -type f -name 'compose.yml' -exec dirname {} \; | sort -u)

# Converte a lista de diretórios para um array
dirs_array=()
while IFS= read -r line; do
    dirs_array+=("$line")
done <<< "$dirs"

# Loop sobre cada diretório e executa o comando
for dir in "${dirs_array[@]}"; do
    echo "Subindo containers em $dir"
    if [ -f "$dir/compose.yml" ]; then
        (cd "$dir" && docker-compose -f compose.yml up -d --build)
    else
        echo "Arquivo compose.yml não encontrado em $dir"
    fi
done
