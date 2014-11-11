<?php
return array(
    
    'user' => array(
        'class' => 'core.extensions.components.auth.GSWebUser',
        'allowAutoLogin' => true,
        'loginUrl' => array('/users/page/login'),
        'loginRequiredAjaxResponse' => 'YII_LOGIN_REQUIRED',
    ),
    
    'cache' => array(
        'class' => 'CFileCache',
        'enabled'=>!YII_DEBUG,
    ),

    'authManager' => array(
        "class" => "CDbAuthManager",
        "connectionID" => "db",
        "itemTable" => 'users_authitem',
        "itemChildTable" => 'users_authitemchild',
        "assignmentTable" => 'users_authassignment',
    ),

    'coreMessages' => array(
        'class'=>'CDbMessageSource',
        'language'=>'en_us',
        "connectionID" => "db",
        "sourceMessageTable" => 'translation_source_message',
        "translatedMessageTable" => 'translation_message',
        "cachingDuration" => 0,
    ),
    'messages' => array(
        'class'=>'CDbMessageSource',
        "connectionID" => "db",
        "sourceMessageTable" => 'translation_source_message',
        "translatedMessageTable" => 'translation_message',
        "cachingDuration" => 0,
    ),
    'errorHandler' => array(
        // use 'site/error' action to display errors
        'errorAction' => '/site/error',
    ),
);