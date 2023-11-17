#!/bin/bash

docker build -t Helminafan/item-app:v1 .

docker images

docker tag Helminafan/item-app:v1 docker.pkg.github.com/Helminafan/a433-microservices/item-app:v1

docker login docker.pkg.github.com -u Helminafan -p PAT

docker push docker.pkg.github.com/Helminafan/a433-microservices/item-app:v1
