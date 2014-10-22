<?php
$ipTest=array(
	'localhost',
	// 'Your other hosts or ip test'
);
// define if you are in production mode or not, 
// this maybe more beautiful? tell me please
if(in_array($_SERVER['HTTP_HOST'],$ipTest))
{
	error_reporting(E_ALL);
	defined('YII_DEBUG') or define('YII_DEBUG',true);
}
$retalapp=dirname(__FILE__).'/../vendor/retalapp/core/bootstrap.php';
require_once($retalapp);
