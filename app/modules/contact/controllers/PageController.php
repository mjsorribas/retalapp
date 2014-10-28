<?php

class PageController extends FrontController
{
	public $title='Contact';
	public $subTitle='Administrar contact';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}