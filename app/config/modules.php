<?php
return array(

    /*
     * Modulo para mostrar el dashboard
     * y al que se redirecciona al logearce en el back
     */
    'admin' => array(
        'class' => 'core.extensions.modules.admin.AdminModule',
        // 'showMenuFromAdmin'=>false,
    ),
    
    'home'=>array(
        'class'=>'app.modules.home.HomeModule',
        // 'showMenuFromAdmin'=>false,
    ),
    
    // 'test'=>array(
    //     'class'=>'app.vendor.modules.test.Test',
    //     // 'showMenuFromAdmin'=>false,
    // ),

    /**
     * Modulo para le manejo de usuarios
     * session, reistro, recuperar contraseña etc
     * este módulo se puede ir mejorando segun
     * las necesidades, en su núcleo está
     * desarrollado con el nombre de las variables
     * en ingles, porque es posible que algun proyecto
     * sea requerido en ingles
     *
     * Si quieres hacer relaciones o modificar el modelo
     * y la tabla de usuarios solo para tu proyecto
     * debes redefinir el modelo extendiendo Users
     */
    'users' => array(
        'class' => 'core.extensions.modules.users.UsersModule',
        'redirectLogin' => array('/home'),
        'enableOAuth' => true,
        // 'enableModals' => false,
        // 'usersModalsPath' => 'webroot.themes.yourtheme.views.layouts._users_modals',

        // 'showMenuFromAdmin'=>false,
        // 'labelMenu' => 'Usuarios',
    ),
    
    /*
     * Modulo para almacenar las variables de cofigursción general de la applicacion
     */
    'settings' => array(
        'class' => 'core.extensions.modules.settings.SettingsModule',
        // 'showMenuFromAdmin'=>false,
    ),

    'smtp'=>array(
        'class'=>'core.extensions.modules.smtp.SmtpModule',
        // 'showMenuFromAdmin'=>false,
    ),

    /*
     * Modulo para generar código
     * este solo se muestra en ambiente local no en 
     * producción
     */
    'gii' => array(
        'class' => 'core.extensions.modules.gii.GiiModule',
        // If removed, Gii defaults to localhost only. Edit carefully to taste.
        'ipFilters' => array('127.0.0.1', '::1'),
        'showMenuFromAdmin'=>YII_DEBUG,
    ),

    /*
     * Modulo para generar código
     * este solo se muestra en ambiente local no en 
     * producción
     */
    // 'database' => array(
    //     'class' => 'core.extensions.modules.database.DatabaseModule',
    //     // If removed, Gii defaults to localhost only. Edit carefully to taste.
    //     'hosts' => array(
    //         'localhost'=>array(
    //             'connectionString' => 'mysql:host=localhost;dbname=retalapp',
    //             'emulatePrepare' => true,
    //             'username' => 'root',
    //             'password' => 'decipher10',
    //             'charset' => 'utf8',
    //         ),
    //         'yourdomain.com'=>array(
    //             'connectionString' => 'mysql:host=localhost;dbname=retalapp',
    //             'emulatePrepare' => true,
    //             'username' => 'myusername',
    //             'password' => 'mypassword',
    //             // 'schemaCachingDuration' => (3600*24*8), // guarda los metadatas en cache
    //             'charset' => 'utf8',
    //         ),
    //     )
    // ),
);