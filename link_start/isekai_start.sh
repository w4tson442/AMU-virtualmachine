# BY: Justin Ichiro Toyomitsu
#main script to install basic neccessities
# 1. installing Apache
# 2. installing a database (MYSQL)
echo "============ START ISEKAI ============"

# install apache2(web server)
# link: (https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)
sudo apt install -y apache2 mysql-server

sudo apt update
sudo apt upgrade -y

sudo apt install -y git
sudo apt install -y curl

#moving check.html into the document root
sudo cp -r /vagrant/* /home/vagrant
sudo cp -r /home/vagrant/project_here/* /var/www/html

sudo service apache2 restart

echo "---------- INSTALL LANGUAGE ----------"
sh language_installs/php_script.sh
echo "-------------- FINISHED --------------"

echo "============= END ISEKAI ============="
