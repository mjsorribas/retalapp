<?php
return array(
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
        'username' => 'menteswe_root',
        'password' => 'mypassword',
        // 'schemaCachingDuration' => (3600*24*8), // guarda los metadatas en cache
        'charset' => 'utf8',
    ),
);