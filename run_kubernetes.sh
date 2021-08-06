#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=amsalama/udacitymicroservice

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run $dockerpath --image=udacitymicroservice:latest --port=80
kubectl run udacitymicroservice --image=$dockerpath

echo "Wait 2 minute for starting pod "
sleep 2m

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacitymicroservice --type=LoadBalancer --port=80


