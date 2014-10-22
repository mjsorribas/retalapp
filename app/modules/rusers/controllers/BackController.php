<?php

class BackController extends CmsController
{
	public $title='Rusers';
	public $subTitle='Administrar rusers';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}