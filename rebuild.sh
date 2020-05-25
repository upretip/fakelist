#!/bin/sh
docker rm -f faker
docker rmi -f lamp
docker volume prune

docker build . -t lamp 

docker run -p 8000:80 -d --name faker lamp
