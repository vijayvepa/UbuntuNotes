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
