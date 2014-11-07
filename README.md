retalapp
========

A workflow to make the programmer's life more fun PHP, MySQL. Really fast Really fun!!

We're documenting, we will be back soon

# How to Install? #

# Via composer create project #
## 1. Run this command, this will create and install dependencies ##
```
composer create-project --prefer-dist retalapp/base yourprojectname
```

## 2. Import and configure core module's database ##
Import sql file located in config directory
Setup your databases according to the host where your app will run
```
nameyourownproyect/app/config/retalapp.sql
nameyourownproyect/app/config/database.php
```
# Via clone this repo or fork it #
## 1. Clone or Fork this repo to start your project from github  ##
```
git clone https://github.com/gsalgadotoledo/retalapp.git nameyourownproyect
```

## 2. Install dependencies ##
You need to install [composer](https://getcomposer.org/download/) like global on your machine
```
cd nameyourownproyect
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
On http://localhost/nameyourownproyect/public
Note: You need to have your mod_rewrite apache enabled

Role of programmer or PM, Settings might not see the admin
Username: root@email.com, Password: root

Role of customer business page, You can see the minimum options required to manage content
Username: admin@email.com, Password: admin

Role normal user (Front) entering the safe zone, User page (this does not have access to back)
Username: user@email.com, Password: user

# About Systems permissions #

If you are using Mac(OS) or Linux you need to give some permissions
```
sudo chmod -R 777 nameyourownproyect/app/storage
sudo chmod -R 777 nameyourownproyect/app/modules // this is just for develop stage for generator code
sudo chmod -R 777 nameyourownproyect/public/assets
sudo chmod -R 777 nameyourownproyect/public/uploads
```

If you want to be more careful use the group of apache process and just give 775
```
sudo chown -R nameyouruser:wwworapachegroup nameyourownproyect

# And then you just give 775 access
sudo chmod -R 775 nameyourownproyect/app/storage
sudo chmod -R 775 nameyourownproyect/app/modules // this is just for develop stage for generator code
sudo chmod -R 775 nameyourownproyect/public/assets
sudo chmod -R 775 nameyourownproyect/public/uploads
```
