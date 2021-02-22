<h1 align="center">
  Apache MYSQL Ubuntu VM
</h1>
<p align="center">
  VM build with <a href="https://www.virtualbox.org" target="_blank">Oracle Virtual Box</a> and <a href="https://www.vagrantup.com" target="_blank">Vagrant</a> 
</p>
<p align="center">
  "I want to have an TEMPOARY and FREE, easy, customizable enviroment for any web-development"
</p>

## 🛠 SETUP
1. Download [vagrant](https://www.vagrantup.com/downloads)
2. Download [VIrtualBox](https://www.virtualbox.org/)
3. GITCLONE TOYO's ISEKAI && go to the directory in command prompt
4. Start up Vagrant!
    ```sh
    vagrant up
    ```
6. Now start up vagrant and go to [localhost](http://127.0.0.1:8080/check.html)
7. If you see the messages from check.html congratz! You can start!

### TLDR of Where Your Files Are
1. I have moved the contents of ISEKAI in /home/vagrant
2. I have moved the contents of project_here into /var/www/html

---

## :gear: USEFUL COMMANDS
1. Destroy Vagrant Box "I want to start over"
   ```sh
   vagrant destroy
   ```
2. Check Vagrant Box Status "do I have a box running"
   ```sh
   vagrant status
   ```
3. Creating DB(MYSQL) connection "I want a SQL database"
   ```sh
   sudo mysql -e "create database isekai;"
   sudo mysql -e "create user 'isekai'@'localhost' identified by 'test123';"
   sudo mysql -e "grant all privileges on isekai.* to 'isekai'@'localhost';"
   sudo mysql -e "flush privileges;"
   ```  
3. Access Database Manually "I want to check something in the DB"
   ```sh
   mysql -u isekai -h isekai -p
   ``` 
---
**created by:** Justin Ichiro Toyomitsu <br/>
**email:** ichitsurume@gmail.com
