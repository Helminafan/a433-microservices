#!/bin/bash

# Nama Docker image untuk frontend
DOCKER_IMAGE_NAME=helminafan23/karsajobs-ui:latest

# Menggunakan environment variable untuk password Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u helminafan23 --password-stdin

# Build Docker image dari Dockerfile (gantilah dengan perintah build yang sesuai untuk frontend)
docker build -t $DOCKER_IMAGE_NAME .

# Push image ke Docker Hub
docker push $DOCKER_IMAGE_NAME
