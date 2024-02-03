#!/bin/bash
sudo sed -i "/PermitRootLogin/d" /etc/ssh/sshd_config
sudo sed -i "/PasswordAuthentication/d" /etc/ssh/sshd_config 
sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
sudo echo "PasswordAuthentication yes " >> /etc/ssh/sshd_config
sudo systemctl restart sshd.service 
sudo echo -e "harold\nharold" |sudo passwd root