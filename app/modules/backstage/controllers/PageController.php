<?php

class PageController extends FrontController
{
	public $title='Backstage';
	public $subTitle='Administrar backstage';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}