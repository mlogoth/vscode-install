# vscode-install
Installation and configuration of vscode

[![Install VS Code Extensions](https://github.com/mlogoth/vscode-install/actions/workflows/install-extensions.yml/badge.svg)](https://github.com/mlogoth/vscode-install/actions/workflows/install-extensions.yml)

## Installation

### Vscode
```sh
sudo apt update && sudo apt upgrade -y
sudo apt install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y
rm -f packages.microsoft.gpg
```
### ROS dependencies

```sh
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo rosdep init
rosdep update
```

### Docker
```sh
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
newgrp docker
```

### Clang
```sh
sudo apt install clang-format -y
```

### Python
```sh
sudo apt install python3 python3-pip -y
pip install pylint black
```

### Git
```sh
sudo apt install git -y
```

### shellcheck
```sh
sudo apt install shellcheck -y
```

## Extensions Installation
```
chmod +x vscode-configuration.sh
./vscode-configuration.sh
```
