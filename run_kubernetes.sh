#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=malak3ysa/capstineformalak

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run latest --image=$dockerpath:1.0 --port=6000


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward latest 9000:6000
