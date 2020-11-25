sudo ln -s /usr/bin/python3 /usr/bin/python
sudo apt-get install -y python3-pip
sudo pip3 install pymysql

#To make this work with Django
sudo pip3 install django
sudo apt-get install libapache2-mod-wsgi-py3
sudo pip3 install virtualenv

sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo cp language_installs/python/000-default.conf /etc/apache2/sites-enabled/
