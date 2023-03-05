#!/bin/bash
# This script is used to build the symbol-bootstrap package.

# install nodejs
sudo apt update
sudo apt install git -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
# export NVM_DIR=$HOME/.nvm;
source $NVM_DIR/nvm.sh;
nvm install v16

# preinstall for docker
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker & docker-compose v1
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker ${USER}
su - ${USER}

# install symbol-bootstrap
mkdir ~/symbol-bootstrap
npm install -g symbol-bootstrap

echo "-----------------------------------"
echo "symbol-bootstrap install completed!"
echo "next step:"
echo "$> cd ~/symbol-bootstrap"
echo "$> symbol-bootstrap wizard"
exec $SHELL -l
