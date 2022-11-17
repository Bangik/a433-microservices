#!/bin/bash

# build image
docker build -t item-app:v1 .

# show list images
docker images

# rename image for push to github package
docker tag item-app:v1 ghcr.io/bangik/a433-microservices/item-app:v1

# login to github package
echo $TOKEN_GITHUB | docker login ghcr.io -u bangik --password-stdin

# push image to github package
docker push ghcr.io/bangik/a433-microservices/item-app:v1