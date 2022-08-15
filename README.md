# Ubuntu Notes

## Install deb files

Reference: https://linuxize.com/post/how-to-install-deb-packages-on-ubuntu/

```
sudo apt install ./file.deb
```

## Install AWS CLI

See [aws-cli-install.sh](./AWS/aws-cli-install.sh)

## Install Oh my Zsh

- https://www.tecmint.com/install-oh-my-zsh-in-ubuntu/
- https://www.tecmint.com/install-zsh-in-ubuntu/
- [Configure in VSCode](https://omidfarhang.com/2019/06/05/install-and-configure-oh-my-zsh-and-use-it-in-vscode-in-linux/#:~:text=Now%20we%20can%20configure%20VSCode%20to%20use%20Zsh%2C,settings%20and%20apply%20them%3A%20%22terminal.integrated.defaultProfile.linux%22%3A%20%22%2Fusr%2Fbin%2Fzsh%22%2C%20%22terminal.integrated.defaultProfile.osx%22%3A%20%22%2Fusr%2Fbin%2Fzsh%22%2C)

```
sudo apt-get install zsh
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

VSCode Settings.json

```json
{
  "terminal.integrated.defaultProfile.linux": "zsh"
}
```

## Install Docker

- [Reference](https://docs.docker.com/desktop/install/linux-install/)

```sh
sudo modprobe kvm
sudo modprobe kvm_intel
sudo modprobe kvm_amd
lsmod | grep kvm
```

- [Install on Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)

### Setup Package Repository
- [Setup Package Repository](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

1. update apt package index and allow apt to use a repository over https

```sh
sudo apt-get update
sudo apt-get install \
	ca-certificates \
	curl \
	gnupg \
	lsb-release

```

2. Add Dockers' official GPG key ring
```sh
 sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

3. Setup Repository

```sh
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

4. Install Docker Engine

```sh
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

5. Verify install

```sh
sudo docker run hello-world
```

### Quick Install

```sh
 curl -fsSL https://get.docker.com -o get-docker.sh
 DRY_RUN=1 sh ./get-docker.sh
```

### Start Docker

```sh
systemctl start docker
```

```sh
systemctl status docker
```

### Connect from VSCode

- [Manage docker as non-root user](https://docs.docker.com/engine/install/linux-postinstall/)

- create docker group
```sh
sudo groupadd docker
```
- add user to docker group

```sh
sudo usermod -aG docker $USER
```

- activate group changes

```sh
newgrp docker
```

- change ownership (?)

```sh
sudo chown $USER /var/run/docker.sock
```