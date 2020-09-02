#!/bin/bash
# BY: Justin Ichiro Toyomitsu
#main script to install basic neccessities
# 1. installing Apache
# 2. installing a database (MYSQL)
# 3. 

echo "============ START ISEKAI ============"
# install apache2(web server)
# link: (https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)
sudo apt update
sudo apt install -y apache2

#moving check.html into the document root
sudo cp -r /vagrant/* /home/vagrant
sudo cp -r /home/vagrant/project_here/* /var/www/html

#install which language(default php)?
#sh language_installs/php.sh
#sudo service apache2 restart
echo "============= END ISEKAI ============="
