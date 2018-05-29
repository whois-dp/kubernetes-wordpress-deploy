#!/bin/bash

kubectl create configmap varnish-vcl --from-file=configs/default.vcl
kubectl create -f varnish.yaml
kubectl create -f mariadb.yaml
kubectl create -f wordpress.yaml
kubectl create -f ingress.yaml
