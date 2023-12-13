## 1, Install ansible on ubuntu system

```bash
sudo apt-get update 
sudo apt-get install software-properties-common 
sudo apt-add-repository ppa:ansible/ansible 
sudo apt-get update 
sudo apt-get install ansible
```

## 2, Configure ansible
```bash
sudo rm -rf /etc/ansible
sudo mkdir /etc/ansible
sudo cp ./ansible.cfg /etc/ansible/ansible.cfg
```

## 3, Configure k8s node or k3s node
### 1, Modify hosts file
### 2, Copy the modified hosts file to the ansible configuration directory
```bash
sudo cp ./hosts /etc/ansible/hosts
```

## 4, Configure ansible-playbooks