#!/bin/bash

# Install curl (if not already installed)
sudo apt update
sudo apt install curl -y

# Install npm
sudo apt install npm -y

# Install Node.js 12.22.9 using NodeSource repository
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y

# Check Node.js and npm versions
node -v
npm -v

echo "Node.js 12.22.9 and npm installation completed."
