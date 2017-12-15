#!/bin/sh
# install mysql software
cd /usr/local
sudo yum install -y mysql mysql-server

# start mysql service
sudo /etc/init.d/mysqld start

# configure mysql to be started when machine open
sudo chkconfig mysqld on

# copy mysql configure file to `etc` folder
sudo cp /usr/share/mysql/my-medium.cnf /etc/my.cnf
