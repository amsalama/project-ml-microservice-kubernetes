#!/usr/bin/env bash
# Step 1:
# Create dockerpath
dockerpath=udacitymicroservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username amsalama
docker tag udacitymicroservice amsalama/udacitymicroservice:latest

# Step 3:
docker push amsalama/udacitymicroservice:latest
