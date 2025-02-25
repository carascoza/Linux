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

## Container Gitlab
>[!NOTE]
> Apos a criação do container acessar a pagina https://"ip":7443 executar no shell usuário root e senha no comando abaixo:
 ```powershell
#executar no shell usuario root e senha no comando abaixo
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```

## Container nginx proxy manager
>[!NOTE]
> Apos criar o container nginx proxy manager logar com o email cadastrado e senha abaixo.

```powershell
Email: admin@example.com
Password: changeme
```

[Site oficial:](https://nginxproxymanager.com/setup/#running-on-raspberry-pi-arm-devices) 