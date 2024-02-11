#!/bin/bash

# Define your Docker image and container name
IMAGE_NAME="salmanmalik98/simple-python-flask-app"
CONTAINER_NAME="simple-python-flask-app"

# Pull the latest version of the image
docker pull $IMAGE_NAME:latest

# Start a new container using the latest image
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME:latest

# Additional run options can be added to the docker run command as needed

