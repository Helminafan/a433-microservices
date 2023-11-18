#!/bin/bash

docker build -t item-app:v1 .

docker images

docker tag item-app:v1 ghcr.io/helminafan/a433-microservices/item-app:v1

echo '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' | docker login ghcr.io -u USERNAME --password-stdin

docker push ghcr.io/helminafan/a433-microservices/item-app:v1
