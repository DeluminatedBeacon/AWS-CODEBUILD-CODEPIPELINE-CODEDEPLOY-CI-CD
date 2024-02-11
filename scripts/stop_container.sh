#!/bin/bash

# Define part of the image name to identify the container
IMAGE_PART="salmanmalik98/simple-python-flask-app"

# Fetch the container ID using docker ps and awk
CONTAINER_ID=$(docker ps -q --filter "ancestor=$IMAGE_PART")

# Check if the container ID is not empty
if [ ! -z "$CONTAINER_ID" ]; then
    # Stop the container
    docker stop $CONTAINER_ID

    # Remove the container
    docker rm $CONTAINER_ID
else
    echo "No running container found for image part: $IMAGE_PART"
fi

