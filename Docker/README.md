---
Title: Docker - Stacks
Description: Ambiente de Docker - Stacks.
Author: Carascoza
Date: 15/12/2023
---

### [![Total size](https://packagephobia.com/badge?p=@material-design-icons/font)](https://badge-size.herokuapp.com/macarascoza/Docker/containers)

# Tutorial: Ambiente de Docker.

>[!IMPORTANT]
>Criação de arquivos compose.yml e scripts para Docker.
>Copiar Repositório com os passos abaixo:
>Criar network padrão containers

# Clonar Repositório
```powershell
git clone https://github.com/carascoza/Linux
```
# Criar network padrão containers
```powershell
docker network create --driver bridge docker_default
```
# Criar containers com compose
 ```powershell
docker compose up -d
```

# Remover containers com compose
 ```powershell
docker compose down
```

## nginx proxy manager

>[!NOTE]
> Apos criar o container nginx proxy manager logar com o email cadastrado e senha abaixo.

```powershell
Email: admin@example.com
Password: changeme
```
[Site oficial:](https://nginxproxymanager.com/setup/#running-on-raspberry-pi-arm-devices) 

