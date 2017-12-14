#!/bin/sh
# reference [http://blog.coderhelper.cn/backend/centos6-9%E5%AE%89%E8%A3%85python3%E7%8E%AF%E5%A2%83.html]
# this shellScript only used for centos69 and install python35 in your machine -- enjoy it -_-
cd /usr/local
sudo yum install gcc -y
sudo yum groupinstall "Development tools" -y
sudo yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel -y

# 下载Python3.5的源码包并编译
wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz #其中3.5.2可修改成自己想要的版本
tar xf Python-3.5.2.tgz
cd Python-3.5.2
./configure --prefix=/usr/local --enable-shared  #把python3安装在此目录，这里注意下，后面有详解
make
make install

rm -rf Python-3.5.2.tgz # remove downloadFile

# 创建Python3.5软连接
ln –s /usr/local/bin/python3 /usr/bin/python3   # 



