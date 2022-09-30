#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=frenkell/prediction_app:latest
echo "Docker ID and Image: $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app --image=$dockerpath --port=8000 --labels app=frenkell

# Step 3:
# List kubernetes pods
sleep 20
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app 8000:8000