#!/bin/bash

# Install Apache2
sudo apt update
sudo apt install apache2 -y

# Start and enable Apache2 service
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache2 installation and configuration completed."
