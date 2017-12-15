#!/usr/bin/env bash

# nginx
# install nginx in your machine
sudo yum install nginx -y

# start nginx service
sudo /etc/init.d/nginx start

# always on
sudo chkconfig nginx on

# set up nginx server
sudo cp /vagrant/shellSource/nginx.conf /etc/nginx/conf.d/site.conf
sudo chmod 644 /etc/nginx/conf.d/site.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/vagrant/data/php70/laravelDemo /usr/share/nginx/laravelDemo
