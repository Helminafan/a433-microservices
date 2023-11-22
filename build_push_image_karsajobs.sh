#!/bin/bash

# Nama Docker image untuk backend
DOCKER_IMAGE_NAME=helminafan23/karsajobs:latest

# Build Docker image dari Dockerfile
docker build -t $DOCKER_IMAGE_NAME .

# Login ke Docker Hub (gantilah <username-docker> dan <password-docker> dengan informasi login Docker Hub Anda)

echo $PASSWORD_DOCKER_HUB | docker login -u helminafan23 --password-stdin

# Push image ke Docker Hub
docker push $DOCKER_IMAGE_NAME
