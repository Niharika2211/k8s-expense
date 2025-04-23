#!/bin/bash


#eksctl delete cluster --name mini-eks



CLUSTER_NAME="mini-eks"

echo "Deleting EKS cluster..."
eksctl delete cluster --name=$CLUSTER_NAME
