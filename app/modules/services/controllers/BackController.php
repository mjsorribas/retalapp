<?php

class BackController extends CmsController
{
	public $title='Services';
	public $subTitle='Administrar services';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}