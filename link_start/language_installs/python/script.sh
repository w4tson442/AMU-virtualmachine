sudo ln -s /usr/bin/python3 /usr/bin/python
sudo apt-get install -y python3-pip
sudo pip3 install pymysql
sudo pip3 install django
sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo cp language_installs/python/000-default.conf /etc/apache2/sites-enabled/
