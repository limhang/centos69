#!/bin/sh
# reference [https://www.tecmint.com/install-php-7-in-centos-6/]
# this shellScript only used for centos69 and install php70 in your machine -- enjoy it -_-
cd /usr/local
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm -y 
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-6.rpm -y 
sudo yum install yum-utils -y 
sudo yum-config-manager --enable remi-php70   [Install PHP 7.0] -y 
sudo yum install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo -y 

