# gcp init
```bash
sudo echo "PermitRootLogin yes" >> /etc/ssh/ssh_config
sudo echo "PasswordAuthentication yes" >> /etc/ssh/ssh_config
```

```bash
curl -sfL https://get.k3s.io | K3S_URL=https://34.81.95.217:6443 K3S_TOKEN=K10712e52593da80edfeb1691dbb2e47e367a8fa8407c1101759deab02263fa71aa::server:824df6940f72cf8064273c047ca63d2a sh -s - --node-ip=10.140.0.50 --node-external-ip=35.194.214.127

curl -sfL https://get.k3s.io | \
    K3S_URL=https://34.81.95.217:6443 \
    K3S_TOKEN=K10712e52593da80edfeb1691dbb2e47e367a8fa8407c1101759deab02263fa71aa::server:824df6940f72cf8064273c047ca63d2a \
    sh -s - \
    --disable servicelb \
    --disable traefik \
    --disable metrics-server \
    --disable local-storage \
    --node-external-ip 140.112.111.111 \
    --advertise-address 10.112.0.1 \
    --flannel-iface wg0
```