#!/bin/bash

NAMESPACE="wordpress"

# Step 1: Delete the namespace (if it exists)
kubectl delete namespace $NAMESPACE --ignore-not-found

# Step 2: Wait until the namespace is completely deleted
while kubectl get namespace $NAMESPACE &> /dev/null; do
  echo "Waiting for namespace $NAMESPACE to be deleted..."
  sleep 5
done

echo "Namespace deleted successfully."
