<?php

class BackController extends CmsController
{
	public $title='Backstage';
	public $subTitle='Administrar backstage';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}