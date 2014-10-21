<?php
return array(

    /*
     * Modulo para mostrar el dashboard
     * y al que se redirecciona al logearce en el back
     */
    'admin' => array(
        'class' => 'core.extensions.modules.admin.AdminModule',
        // Este parametro lo reciben todos los módulos
        // y es para ocultar el menu lateral en el cms
        // 'showMenuFromAdmin'=>false,
    ),
    
    /*
     * Modulo que se llama por defecto cuando
     * se accede al la petición / 
     * este módulo esta unicado en la carpeta modules del proyecto
     * inicial pero pued ser rremplazado por el módulo que tu quieras
    */
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
    
    /**
     * Modulo para almacenar las variables de configuración 
     * general de la applicacion y que siempre debe estar incluido en 
     * la configuración para ver las opciones que acepta para personalizarlo
     * puedes ver los atributos publicos de la clase SettingsModule
     */
    'settings' => array(
        'class' => 'core.extensions.modules.settings.SettingsModule',
        // 'showMenuFromAdmin'=>false,
    ),

    /**
     * Este es el módulo encargado del envío de 
     * correos y como de la configuración de smtp 
    */
    'smtp'=>array(
        'class'=>'core.extensions.modules.smtp.SmtpModule',
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
        'class' => 'core.extensions.modules.gii.GiiModule',
        // If removed, Gii defaults to localhost only. Edit carefully to taste.
        'ipFilters' => array('127.0.0.1', '::1'),
        'showMenuFromAdmin'=>YII_DEBUG,
    ),
);