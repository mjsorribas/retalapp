<?php

class PageController extends FrontController
{
	public $title='Services';
	public $subTitle='Administrar services';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}