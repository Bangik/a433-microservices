#!/bin/bash

# Build image
docker build -t karsajobs-ui:latest .

# show images
docker images

# rename image
docker tag karsajobs-ui:latest ghcr.io/bangik/a433-microservices/karsajobs-ui:latest

# login to github github packages
echo $TOKEN_GITHUB | docker login ghcr.io -u bangik --password-stdin

# push image to github packages
docker push ghcr.io/bangik/a433-microservices/karsajobs-ui:latest