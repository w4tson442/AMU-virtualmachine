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

#give apache permission to run scripts
sudo a2enmod mpm_prefork cgi

sudo service apache2 restart

echo "---------- INSTALL LANGUAGE ----------"
#if you want to add a language, change it here
sh language_installs/python/script.sh
echo "-------------- FINISHED --------------"

#if you don't want to use the fontawesome file comment this line out
sudo cp -r /home/vagrant/font-awesome /var/www/html

sudo chown -R vagrant /var/www/html
sudo sed -i 's/www-data/vagrant/g' /etc/apache2/envvars

sudo service apache2 restart

#setting up DATABASE
# 1. create user and identification for future access
# 2. example will be the following
sudo mysql -e "create database isekai;
create user 'isekai'@'localhost' identified by 'test123';
grant all privileges on isekai.* to 'isekai'@'localhost';
flush privileges;"
# 3. access by mysql -u ____ -h _____ -p
# 4. -u is the user
# 5. -h is the host (if localhost then leave empty)
# 6. hit enter and type in the password

echo "============= END ISEKAI ============="
