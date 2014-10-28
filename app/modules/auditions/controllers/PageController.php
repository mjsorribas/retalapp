<?php

class PageController extends FrontController
{
	public $title='Auditions';
	public $subTitle='Administrar auditions';
	
	public function actionIndex()
	{
		$this->render('index');
	}
}