#!/bin/bash

set -euox pipefail

# Set .bashrc
cat ./.bashrc >> $HOME/.bashrc
touch $HOME/.bash_profile

# Install required packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y vim git curl docker docker-compose vim fuse libfuse2

# Install Python 
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.10 python3-pip


# Install Go
curl -OL https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf ./go1.19.3.linux-amd64.tar.gz

# Install Node 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18

# Install Java
sudo apt install -y openjdk-11-jre openjdk-11-jdk

# Install Terraform, Packer & Vagrant
sudo apt install -y gnupg
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform packer vagrant

# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
mv ./nvim.appimage $HOME/nvim.appimage
chmod u+x $HOME/nvim.appimage

# Add in Neovim config
mkdir -p $HOME/.config/
mv ./nvim/ $HOME/.config/nvim/

# Install external Neovim dependencies
sudo apt install -y ripgrep fd-find
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
npm install -g tree-sitter tree-sitter-cli typescript typescript-language-server

