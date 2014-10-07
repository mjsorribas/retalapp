A work flow for make the programmer life more fun PHP, MySQL, Yiiframework, Slim. Really fast Really fun!! 
[http://retalapp.com/](http://retalapp.com/)

[![An example here](http://img.youtube.com/vi/cmhadEStBAw/0.jpg)](http://www.youtube.com/watch?v=cmhadEStBAw)

# How to Install? #

## Step 1 Download ##
Download files [here](http://retalapp.com/uploads/retalapp.zip)
And uncompress on your public directory of your apache installed, if you use xampp on Windows for example your public directory is on C:\\xampp\htdocs\

Put your files there and rename directory with you project name this will look like this:

C:\\xampp\htdocs\myprojectname

Or even wampp
put your files there and rename directory with you project name this will look like this:

C:\\wampp\www\myprojectname


## Step 2 Setting database ##
- Create a MYSQL database from your favorite database admin and run the sql file located in:
/protected/data/retalapp.sql 

- Them we're gonna to 
/protected/config/db.php

Here's config database for each host that you use
```
#!php

$db=array(
// if you have an virtual host created on your local machine you
// must put it here instead of localhost for example
// 	'miproyect.local'=>array(
	
    'localhost'=>array(
        'connectionString' => 'mysql:host=localhost;dbname=retalapp_db',
        'emulatePrepare' => true,
        'username' => 'root',
        'password' => '',
        'charset' => 'utf8',
    ),
    // or for finally server maybe
    'myproyect.com'=>array(
        'connectionString' => 'mysql:host=localhost;dbname=yourdbnameonmyproyect.com',
        'emulatePrepare' => true,
        'username' => 'yourusernameonmyproyect.com',
        'password' => 'yourpasswordonmyproyect.com',
        // 'schemaCachingDuration' => (3600*24*8), // guarda los metadatas en cache
        'charset' => 'utf8',
    ),
);

```


## Step 3 Open your browser ##
Open your browser on http://localhost/myprojectname 


<h6> Role of programmer or PM

root@email.com <em style = "text-muted"> settings might not see the admin <br> 
root <br> 

<h6> Role of customer business page

admin@email.com <em style = "text-muted"> You can see the minimum options required to manage content <br> 
admin <br> 

<h6> Role normal user (Front) entering the safe zone

user@email.com <em style = "text-muted"> User page (this does not have access to back) <br> 
user <br>

# Documentation [here](http://retalapp.com/doc) #
@TODO

# Modules [here](http://retalapp.com/modules) #
@TODO

# Questions [here](https://stackoverflow.com/questions) #

# Mor about permissoms #


PD: If you are using Mac(OS) or Linux you need to give some permissions
```
#!bash
sudo chmod -R 777 myprojectname/protected/runtime 
sudo chmod -R 777 myprojectname/assets
sudo chmod -R 777 myprojectname/uploads
```


If you want to be more carefully use the group of apache process
```
#!bash
sudo chown -R nameyouruser:wwworapachegroup myprojectname

# And then you just give 775 access 
sudo chmod -R 775 myprojectname/protected/runtime 
sudo chmod -R 775 myprojectname/assets
sudo chmod -R 775 myprojectname/uploads
```


# License #
Retalapp is open source
