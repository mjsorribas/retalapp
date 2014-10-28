<?php

class PageController extends FrontController
{
	public $title='Jobus';
	public $subTitle='Administrar jobus';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}