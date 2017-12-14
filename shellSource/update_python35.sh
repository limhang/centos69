#!/bin/sh
# reference [http://blog.coderhelper.cn/backend/centos6-9%E5%AE%89%E8%A3%85python3%E7%8E%AF%E5%A2%83.html]
# this shellScript only used for centos69 and install python35 in your machine -- enjoy it -_-
cd /usr/local
sudo yum install gcc -y
sudo yum groupinstall "Development tools" -y
sudo yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel -y

# download Python3.5.2 rar
wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz #3.5.2 is i choosed version you can change
tar xf Python-3.5.2.tgz
cd Python-3.5.2
./configure --prefix=/usr/local --enable-shared  #let the programe installed in /usr/local folder
make
sudo make install

