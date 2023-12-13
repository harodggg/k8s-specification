>## 1, Install ansible on ubuntu system

```bash
sudo apt-get update 
sudo apt-get install software-properties-common 
sudo apt-add-repository ppa:ansible/ansible 
sudo apt-get update 
sudo apt-get install ansible
```

>## 2, Configure ansible
```bash
sudo rm -rf /etc/ansible
sudo mkdir /etc/ansible
sudo cp ./ansible.cfg /etc/ansible/ansible.cfg
```

>## 3, Configure k8s node or k3s node
>>[!TIP]
>> For cloud computers, password login is more common and can be adapted to more situations. Therefore, all cloud machines should first be configured with password login, and then password-free login.
>> In order to facilitate management, users should set the machine name to a unified name. Note that this is not the user name, master-[1:99], or node-[1:99].
>>1. Modify hosts file
  - no-password login
     * create ssh keys(ssh-keygen -t)
     * copy public keys to remote machine(ssh-copy-id) or set by cloud panel
  - password
  - setting domain for ip by cloudflare
  - modify /etc/hosts and ./ansible/hosts
>>2. Copy the modified hosts file to the ansible configuration directory
>>```bash
>>sudo cp ./hosts /etc/ansible/hosts
>>```
>>3. test

>## 4, Configure ansible-playbooks
