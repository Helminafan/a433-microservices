#!/bin/bash

docker build -t helminafan/item-app:v1 .

docker images

docker tag helminafan/item-app:v1 docker.pkg.github.com/helminafan/a433-microservices/item-app:v1

docker login docker.pkg.github.com -u helminafan -p PAT

docker push docker.pkg.github.com/helminafan/a433-microservices/item-app:v1
