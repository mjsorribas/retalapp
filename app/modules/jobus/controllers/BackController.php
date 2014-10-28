<?php

class BackController extends CmsController
{
	public $title='Jobus';
	public $subTitle='Administrar jobus';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}