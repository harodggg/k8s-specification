#!/bin/bash

set -eux
pods_name=$(kubectl get deployment | awk 'NR>1{print$1}')

for i in $pods_name
do 
    /usr/local/bin/kubectl delete  deployment/$i
done 
