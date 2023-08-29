#!/bin/bash

# Set the MySQL root password
MYSQL_ROOT_PASSWORD="password"

# Install MySQL Server
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD"
sudo apt update
sudo apt install mysql-server -y

# Start and enable MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

echo "MySQL installation and configuration completed. Root password set to: $MYSQL_ROOT_PASSWORD"
