#!/bin/bash



CLUSTER_NAME="mini-eks"
REGION="us-east-1"
ZONES="us-east-1a,us-east-1b"



echo "Creating EKS cluster..."
eksctl create cluster --name $CLUSTER_NAME \
                      --region $REGION \
                      --zones $ZONES \
                      --without-nodegroup

echo "Associating IAM OIDC provider..."
eksctl utils associate-iam-oidc-provider \
    --region $REGION \
    --cluster $CLUSTER_NAME \
    --approve

