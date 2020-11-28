# TOYO's ISEKAI(Virtual Box) <br/>
##### last updated: August 27th, 2020 (mm, dd, yyyy) <br/>
###### We will walk you through how you can access your personal isekai for both (Windows) and (Mac) Users. This will be utalizing virtual machine, vagrant and localhost to create a free and useful enviroment for development. Please enjoy.

1. Download [vagrant](https://www.vagrantup.com/downloads)
2. Download [VIrtualBox](https://www.virtualbox.org/)
3. GITCLONE TOYO's ISEKAI && go to the directory in command prompt
4. Start up Vagrant!: ``` vagrant up ```
5. Destroy Vagrant!: ``` vagrant destroy ```
6. Check if Vagrant is Up!: ``` vagrant status ```
7. ok now you understand the basic commands for vagrant.
8. Now start up vagrant and go to: [localhost](http://127.0.0.1:8080/check.html)
9. If you see the messages from check.html congratz! You can start!

---

### TLDR of Where Your Files Are
1. I have moved the contents of ISEKAI in /home/vagrant
2. I have moved the contents of project_here into /var/www/html

---

### Setting Up DATABASE Connection
1. create user and identification for future access
2. example will be the following  
``` sudo mysql -e "create database isekai;" ```  
``` sudo mysql -e "create user 'isekai'@'localhost' identified by 'test123';" ```  
``` sudo mysql -e "grant all privileges on isekai.* to 'isekai'@'localhost';" ```  
``` sudo mysql -e "flush privileges;" ```  
3. access by ``` mysql -u ____ -h _____ -p ```
4. -u is the user
5. -h is the host (if localhost then leave empty)
6. hit enter and type in the password

---
**created by:** Justin Ichiro Toyomitsu <br/>
**email:** ichitsurume@gmail.com
