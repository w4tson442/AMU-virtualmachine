#Required so that python is python3
sudo ln -s /usr/bin/python3 /usr/bin/python

#Installing required library for running Django
sudo apt-get install -y python3-pip libapache2-mod-wsgi-py3
sudo pip3 install pymysql
sudo pip3 install virtualenv

#sudo pip3 install django

#sudo rm /etc/apache2/sites-enabled/000-default.conf
#sudo cp language_installs/python/000-default.conf /etc/apache2/sites-enabled/
