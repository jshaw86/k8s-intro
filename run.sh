#!/bin/bash

HELM=${HELM:-helm}

# start minikube
minikube start

# enable nginx ingress
minikube addons enable ingress

# wait for nginx ingress to start
kubectl wait pods -lapp.kubernetes.io/component=controller --for=condition=Ready -n kube-system

# deploy echo server
$HELM upgrade -i hello-world chart/hello-world

