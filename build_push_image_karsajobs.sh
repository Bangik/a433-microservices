#!/bin/bash

# build image
docker build -t karsajobs:latest .

# show list images
docker images

# rename image for push to github packages
docker tag karsajobs:latest ghcr.io/bangik/a433-microservices/karsajobs:latest

# login to github packages
echo $TOKEN_GITHUB | docker login ghcr.io -u bangik --password-stdin

# push image to github packages
docker push ghcr.io/bangik/a433-microservices/karsajobs:latest