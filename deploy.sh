#!/bin/bash

# set -e

orig_ns=$( kubectl config get-contexts | awk -F" " '{print $5}' | tail -n 1)
echo $ns
kubectl create namespace galadriel

kubectl config set-context --current --namespace=$orig_ns
kubectl apply -f kube_yaml/mysql.yaml

echo "Done"