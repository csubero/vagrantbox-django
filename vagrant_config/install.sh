#!/usr/bin/env bash

# Update repositories

echo "|-----------------------------|"
echo "|                             |"
echo "|       Updating system       |"
echo "|                             |"
echo "|-----------------------------|"
apt-get update

#Installing Backends Components

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling Git        |"
echo "|                             |"
echo "|-----------------------------|"
apt-get install -y git

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling PIP        |"
echo "|  (Python Installer Package) |" 
echo "|                             |"
echo "|-----------------------------|"
sudo apt-get install -y  python3-pip


echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling Python     |"
echo "|      development packages   |" 
echo "|                             |"
echo "|-----------------------------|"
apt-get install -y python-dev libmysqlclient-dev python3.4-venv


echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling MySQL      |"
echo "|                             |"
echo "|-----------------------------|"
apt-get install -y debconf-utils 
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt-get -y install mysql-server
mysql -proot --execute="grant all privileges on *.* to 'root'@'%' identified by '1234';"


echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling RabbitMQ   |"
echo "|                             |"
echo "|-----------------------------|"
sudo apt-get -y install rabbitmq-server

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling REDIS      |"
echo "|                             |"
echo "|-----------------------------|"
sudo apt-get -y install redis-server

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling Supervisor |"
echo "|                             |"
echo "|-----------------------------|"
sudo apt-get -y install supervisor

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling MySQL      |"
echo "|       module for Python     |"
echo "|      					    |"
echo "|-----------------------------|"
pip3 install pymysql
pip3 install mysqlclient

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling            |"
echo "|    VirtualEnvWrapper     	 "
echo "|      					    |"
echo "|-----------------------------|"
pip3 install virtualenvwrapper

echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling Django     |"
echo "|      					    |"
echo "|-----------------------------|"
pip3 install django
