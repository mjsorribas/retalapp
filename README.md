retalapp
========

A workflow for make the programmer life more fun PHP, MySQL. Really fast Really fun!!

We we're documenting, will be back soon

# How to Install? #

## 1. Clone this repo or make a Fork for start on github your project ##
```
git clone https://github.com/gsalgadotoledo/retalapp.git nameyourownproyect
```

## 2. Install dependencies ##
You need to install [composer](https://getcomposer.org/download/) like global on your machine 
```
cd nameyourownproyect/app
composer install
```

## 3. Import and configure core module's database ##
Import sql file located on config directory
Config your databases according to your host that you have your app
```
nameyourownproyect/app/config/retalapp.sql
nameyourownproyect/app/config/database.php
```
# Them open your browser #
On http://localhost/nameyourownproyect
Note: You neet to have your mod_rewrite apache enabled

Role of programmer or PM, Settings might not see the admin
Username: root@email.com, Password: root

Role of customer business page, You can see the minimum options required to manage content
Username: admin@email.com, Password: admin

Role normal user (Front) entering the safe zone, User page (this does not have access to back) 
Username: user@email.com, Password: user

# About Systems permissoms #

If you are using Mac(OS) or Linux you need to give some permissions
```
sudo chmod -R 777 nameyourownproyect/app/logs 
sudo chmod -R 777 nameyourownproyect/assets
sudo chmod -R 777 nameyourownproyect/uploads
```

If you want to be more carefully use the group of apache process and give just 775
```
sudo chown -R nameyouruser:wwworapachegroup nameyourownproyect

# And then you just give 775 access 
sudo chmod -R 775 nameyourownproyect/app/logs 
sudo chmod -R 775 nameyourownproyect/assets
sudo chmod -R 775 nameyourownproyect/uploads
```

 
