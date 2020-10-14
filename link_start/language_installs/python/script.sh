sudo ln -s /usr/bin/python3 /usr/bin/python
sudo apt-get install -y python3-pip
sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo mv 000-default.conf /etc/apache2/sites-enabled/

