#!/bin/bash

# parar all containers
docker stop $(docker ps -aq)

#remover all containers
docker rm $(docker ps -aq)


