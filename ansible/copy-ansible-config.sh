#!/bin/bash

sudo rm -rf /etc/ansible
sudo mkdir /etc/ansible
cp ./ansible.cfg /etc/ansible
cp ./hosts /etc/ansible