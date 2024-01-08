#!/bin/bash

set -eux
pods_name=$(/usr/local/bin/kubectl get pods | awk 'NR>1{print $1}')

for i in $pods_name
do 
    /usr/local/bin/kubectl cp $i:game-1.csv /root/account/game-$i.csv
done 
