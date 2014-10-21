<?php
return array(
    'defaultModule'=>'home',
    'themeBack'=>'adminlte',
    'themeFront'=>'flat',
    'debugWeb'=>true,
    'profileWeb'=>true,
    'debugEmail'=>true,
    'urlRoutes'=>array(
	    '<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
	    '<controller:\w+>/<id:\d+>' => '<controller>/view',
	    '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
	    '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
	),
);