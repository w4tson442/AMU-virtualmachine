# BY: Justin Ichiro Toyomitsu
#main script to install basic neccessities
# 1. installing Apache
# 2. installing a database (MYSQL)
echo "============ START ISEKAI ============"

sudo apt update
sudo apt upgrade -y



# install apache2(web server)
# link: (https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)
sudo apt install -y apache2 apache2-dev mysql-server
sudo apt install -y git curl



#moving contents of project_here into webroot
sudo cp -r /vagrant/* /home/vagrant
sudo cp -r /home/vagrant/project_here/* /var/www/html
sudo chown -R vagrant:vagrant /home/vagrant
sudo chown -R www-data:www-data /var/www/html



#give apache permission to run scripts
#sudo a2enmod mpm_prefork cgi



echo "---------- INSTALL LANGUAGE ----------"
#if you want to add a language, change it here
sh language_installs/python/script.sh
echo "-------------- FINISHED --------------"

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
