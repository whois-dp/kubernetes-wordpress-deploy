#!/bin/bash

kubectl create -f mariadb.yaml
kubectl create -f wordpress.yaml
kubectl create -f ingress.yaml
