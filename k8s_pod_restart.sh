#!/bin/bash
NAMESPACE="default"
POD_NAME=$1

if [ -z "$POD_NAME" ]; then
  echo "Usage: $0 <pod-name>"
  exit 1
fi

kubectl delete pod $POD_NAME -n $NAMESPACE
echo "Pod $POD_NAME restarted in namespace $NAMESPACE"
