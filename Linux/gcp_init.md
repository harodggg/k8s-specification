# gcp init
```bash
sudo echo "PermitRootLogin yes" >> /etc/ssh/ssh_config
sudo echo "PasswordAuthentication yes" >> /etc/ssh/ssh_config
```
curl -sfL https://get.k3s.io | K3S_URL=https://34.80.210.160:6443 K3S_TOKEN=K10faec0bf27532d1cfa369a98335a14d44e940f14e1e48cb9a08343428d4f78633::server:886913bd7af334042a99af15a1953b26 sh -s - --node-ip=10.140.0.44 --node-external-ip=35.194.214.127