# push image to registory by github workflow action

## Install docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
sudo docker cp pinkv4:/app/game-1.csv ./
```
## Install podman(debian)
```bash
  sudo apt-get -y install podman
```
## Install caddy
```bash
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
```

## Install yq 
github: https://github.com/mikefarah/yq
```bash 
wget https://github.com/mikefarah/yq/releases/download/v4.16.2/yq_linux_amd64 \
  && chmod +x yq_linux_amd64 \
  && mv yq_linux_amd64 /usr/local/bin/yq
```
## Install jq
github: 
```bash
wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
chmod a+x jq-linux64 && mv jq-linux64 /usr/bin/jq
```

## Install nginx
```bash
    sudo apt install -y nginx
```

## Using sed
```bash
    sed 's/old_text/new_text/g'
```

## Using cut 
```bash
    cut -f 2,4 file.txt > new_file.txt
```

## Using paster
```bash
    paste file1.txt file2.txt > merge.txt
```