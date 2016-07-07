#!/usr/bin/env bash



# Remove old version of Python
echo "|-----------------------------|"
echo "|                             |"
echo "|   Removing old version      |"
echo "|   of Python                 |"
echo "|                             |"
echo "|-----------------------------|"
rm /usr/bin/python


echo "|-----------------------------|"
echo "|                             |"
echo "|  Use Python3 by Default     |"
echo "|                             |"
echo "|-----------------------------|"
ln -s /usr/bin/python3 /usr/bin/python


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
apt-get install -y python-dev libmysqlclient-dev


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
echo "|       Insatlling MySQL      |"
echo "|       module for Python     |"
echo "|      					    |"
echo "|-----------------------------|"
pip3 install pymysql
pip3 install mysqlclient


echo "|-----------------------------|"
echo "|                             |"
echo "|       Insatlling Django     |"
echo "|      					    |"
echo "|-----------------------------|"
pip3 install django
