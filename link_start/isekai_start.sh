# BY: Justin Ichiro Toyomitsu
# main script to install basic neccessities
# 1. installing Apache
# 2. installing a database (MYSQL)
echo "============ START ISEKAI ============"

sudo apt update
sudo apt upgrade -y



# install apache2(web server)
# link: (https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)
sudo apt install -y apache2 apache2-dev mysql-server
sudo apt install -y git curl
git config --global core.editor "vim"



# moving contents of project_here into webroot
# understanding permissions: read=4, write=2, execute=1. [ ex) 7=all permission, 4=only read ]
# understanding ownerships: User, Group, Others [ 3 letters for each ex) rwxr-xr-- = User has all access, Group doesn't have Write, Others only read ]
# link: (https://www.guru99.com/file-permissions.html)
sudo cp -r /vagrant/* /home/vagrant
sudo cp -r /home/vagrant/project_here/* /var/www/html
sudo chown -R vagrant:vagrant /home/vagrant
sudo chown -R www-data:vagrant /var/www/html
sudo chmod -R +774 /var/www/html


#give apache permission to run scripts
#sudo a2enmod mpm_prefork cgi



echo "---------- INSTALL LANGUAGE ----------"
#if you want to add a language, change it here
sh language_installs/python/script.sh
echo "-------------- FINISHED --------------"

sudo sed -i 's/www-data/vagrant/g' /etc/apache2/envvars
sudo service apache2 restart

echo "============= END ISEKAI ============="
