#    Copyright 2024 harodggg
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

#!/bin/bash

command -v yq

if [ $? -eq 1 ];then
    echo "yq command is not exsit,install yq."
    wget https://github.com/mikefarah/yq/releases/download/v4.40.5/yq_linux_amd64 \
    && chmod +x yq_linux_amd64 \
    && mv yq_linux_amd64 /usr/local/bin/yq
    else
    echo "yq is installed"
fi

count=3

for i in $(seq 1 $count)
do
    name=pink
    seq=$i
    yq -r .metadata.name ./k3s-pink.yaml
    while true
    do 
        app_name=$name$seq
        export app_name
        cp k3s-pink.yaml temp.yaml
        yq -i '.metadata.name=strenv(app_name)' temp.yaml
        unset app_name

        result=$(kubectl apply -f temp.yaml)
        rm temp.yaml
        # result="fdkj unchanged" # test data
        if [ "${result:0-9:9}" == "unchanged" ];then
            #count=$((${count} + 1))
            seq=$(($seq +1))
        else    
            break
        fi

    done

 done 
