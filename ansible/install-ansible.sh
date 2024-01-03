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

command -v ansible

if [ $? -eq 1 ];then
    echo "ansible command is not exsit,install ansible."
    sudo apt-get -y update 
    sudo apt-get install -y software-properties-common 
    sudo apt-add-repository -y ppa:ansible/ansible 
    sudo apt-get -y update 
    sudo apt-get -y install ansible 
    else
    echo "ansible is installed"
fi

command -v sshpass;
if [ $? -eq 1 ];then
    echo "sshpass command is not exsit,install sshpass ......"
    sudo apt-get -y install sshpass
fi