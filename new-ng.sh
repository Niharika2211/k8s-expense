#!/bin/bash


CLUSTER_NAME="mini-eks"
REGION="us-east-1"
NODEGROUP_NAME="qa"
NODE_TYPE="t3a.medium"
NODES=3
NODES_MIN=3
NODES_MAX=6
NODE_VOLUME_SIZE=20
SSH_PUBLIC_KEY="nirvanan.online"

echo "Creating managed nodegroup with best practices..."

eksctl create nodegroup \
  --cluster=$CLUSTER_NAME \
  --region=$REGION \
  --name=$NODEGROUP_NAME \
  --node-type=$NODE_TYPE \
  --nodes=$NODES \
  --nodes-min=$NODES_MIN \
  --nodes-max=$NODES_MAX \
  --node-volume-size=$NODE_VOLUME_SIZE \
  --managed \
  --ssh-access \
  --ssh-public-key=$SSH_PUBLIC_KEY \
  --asg-access \
  --external-dns-access \
  --full-ecr-access \
  --alb-ingress-access

