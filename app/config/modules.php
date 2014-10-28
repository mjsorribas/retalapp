<?php
return array(

    /*
     * Modulo para mostrar el dashboard
     * y al que se redirecciona al logearce en el back
     * 
     * En este módulo podemos publicar reportes desde
     * cualquier módulo utilizando algunas funciones
     * predeterminadas
     * 
     */
    'admin' => array(
        'class' => 'core.modules.admin.AdminModule',
        // Este parametro lo reciben todos los módulos
        // y es para ocultar el menu lateral en el cms
        // 'showMenuFromAdmin'=>false,
    ),
    /*
    'landing'=>array(
        'class'=>'application.modules.landing.LandingModule',
        //'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
    ),

    'portfolio'=>array(
        'class'=>'application.modules.portfolio.PortfolioModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
    ),


    'team'=>array(
        'class'=>'application.modules.team.TeamModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),

     'backstage'=>array(
        'class'=>'application.modules.backstage.BackstageModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),


     'customers'=>array(
        'class'=>'application.modules.customers.CustomersModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),


    'location'=>array(
        'class'=>'application.modules.location.LocationModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),

    'contact'=>array(
        'class'=>'application.modules.contact.ContactModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),
     'job'=>array(
        'class'=>'application.modules.job.JobModule',
        // 'showMenuFromAdmin'=>false, // If you want hide your module on CMS left menu
     ),
    */

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
        'class' => 'core.modules.users.UsersModule',
        'redirectLogin' => array('/'),
        'enableOAuth' => true,
        // 'showMenuFromAdmin'=>false,
        // 'labelMenu' => 'Users',
    ),
    
    /**
     * Modulo para almacenar las variables de configuración 
     * general de la applicacion y que siempre debe estar incluido en 
     * la configuración para ver las opciones que acepta para personalizarlo
     * puedes ver los atributos publicos de la clase SettingsModule
     */
    'settings' => array(
        'class' => 'core.modules.settings.SettingsModule',
        // 'showMenuFromAdmin'=>false,
    ),

    /**
     * Este es el módulo encargado del envío de 
     * correos y como de la configuración de email 
    */
    'email'=>array(
        'class'=>'core.modules.email.EmailModule',
        'colorTemplate'=>'#1f535c',
        'colorFontTemplate'=>'#8ea9ae',
        // 'showMenuFromAdmin'=>false,
    ),

    /**
     * Modulo para generar código este solo 
     * se muestra en ambiente 
     * local no en producción
     */
    'gii' => array(
        'class' => 'core.modules.gii.GiiModule',
        // If removed, Gii defaults to localhost only. Edit carefully to taste.
        'ipFilters' => array('127.0.0.1', '::1'),
        'showMenuFromAdmin'=>YII_DEBUG,
    ),
);