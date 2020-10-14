sudo ln -s /usr/bin/python3 /usr/bin/python
sudo apt-get install -y python3-pip
sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo cp language_installs/python/000-default.conf /etc/apache2/sites-enabled/
sudo cp language_installs/python/index.py /var/www/html/
