<?php

class BackController extends CmsController
{
	public $title='Auditions';
	public $subTitle='Administrar auditions';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}