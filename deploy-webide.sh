#!/bin/bash

helm install --namespace $1 \
--set ide.password=$3 \
--set ingress.hosts[0].host=webide-$1.$2 \
--set ingress.tls[0].hosts[0]=webide-$1.$2 \
--set ingress.tls[0].secretName=webide-$1 \
--set ingress.hosts[0].paths[0]=/  \
firstrel ./