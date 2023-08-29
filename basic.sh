#!/bin/bash

# Install curl (if not already installed)
sudo apt update
sudo apt install curl -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc

# Install Node.js 12.1.0 using NodeSource repository
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y

# Check Node.js and npm versions
node -v

echo "Node.js 12.22.9 and npm installation completed."
