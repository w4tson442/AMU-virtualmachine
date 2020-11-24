reference: https://www.digitalocean.com/community/tutorials/how-to-set-up-an-apache-mysql-and-python-lamp-server-without-frameworks-on-ubuntu-14-04

description:
- includes django
	- how to check: python -m django --version
        - link: https://www.djangoproject.com/start/overview/

before running:
- execute mysql CREATE TABLE numbers (num INT, word VARCHAR(20));
- cp test.py into /var/www/html
- nativate to test.py on browser and see the result
