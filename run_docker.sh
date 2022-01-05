#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD
# Step 1:
# Build image and add a descriptive tag
docker build -t udacitycapstone .
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
#docker run -p 8000:80 udacitycapstone