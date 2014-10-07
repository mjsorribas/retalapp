<?php
$db=array(
	'localhost'=>array(
        'connectionString' => 'mysql:host=localhost;dbname=retalapp',
        'emulatePrepare' => true,
        'username' => 'root',
        'password' => '',
        'charset' => 'utf8',
    ),
    'yourdomain.com'=>array(
        'connectionString' => 'mysql:host=localhost;dbname=retalapp',
        'emulatePrepare' => true,
        'username' => 'myusername',
        'password' => 'mypassword',
        // 'schemaCachingDuration' => (3600*24*8), // guarda los metadatas en cache
        'charset' => 'utf8',
    ),
);

if(isset($db[$_SERVER['HTTP_HOST']]))
	return $db[$_SERVER['HTTP_HOST']];
return $db['localhost'];
