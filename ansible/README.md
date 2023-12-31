>## 1, Install ansible on ubuntu system

```bash
  sudo apt-get -y update 
  sudo apt-get install -y software-properties-common 
  sudo apt-add-repository -y ppa:ansible/ansible 
  sudo apt-get -y update 
  sudo apt-get -y install ansible
```

>## 2, Configure ansible
```bash
  sudo rm -rf /etc/ansible
  sudo mkdir /etc/ansible
  sudo cp ./ansible.cfg /etc/ansible/ansible.cfg
```

>## 3, Configure k8s node or k3s node
>>>   For cloud computers, password login is more common and can be adapted to more situations. Therefore, all cloud machines should first be configured with password login, and then password-free login.
>>> </br>
>>> In order to facilitate management, users should set the machine name to a unified name. Note that this is not the user name, master-[1:99], or node-[1:99].

>>1. Modify hosts file

>>>    - no-password login
>>>      *  create ssh keys(ssh-keygen -t)
>>>      *  copy public keys to remote machine(ssh-copy-id) or set by cloud panel
>>>    - password
>>>    - setting domain for ip by cloudflare
>>>    - modify /etc/hosts and ./ansible/hosts
>>3. Copy the modified hosts file to the ansible configuration directory
>>```bash
>>  sudo cp ./hosts /etc/ansible/hosts
>>```
>>3. test

>## 4, Configure ansible-playbooks
    4.1 install master
    ```bash
      ansible -i ./playbooks/install-master.yml
    ```
    4.2 get master keys and url,and install node
    ```bash
      vim ./playbooks/install-node.yml # modify K3S_URL and K3S_TOKEN
      ansible -i ./playbooks/install-node.yml
    ```
