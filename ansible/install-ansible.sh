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