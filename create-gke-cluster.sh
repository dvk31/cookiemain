#!/bin/bash
# Set the project and zone variables
export PROJECT_ID=kinetic-raceway-379203
export ZONE=us-central1-a
# Set the cluster name
export CLUSTER_NAME=my-cluster
# Create the cluster
gcloud container clusters create $CLUSTER_NAME --num-nodes=1 --zone=$ZONE --project=$PROJECT_ID
