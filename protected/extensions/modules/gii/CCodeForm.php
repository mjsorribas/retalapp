<?php
/**
 * CCodeForm class file.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @link http://www.yiiframework.com/
 * @copyright 2008-2013 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

/**
 * CCodeForm represents the form for collecting code generation parameters.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @package system.gii
 * @since 1.1.2
 */
class CCodeForm extends CActiveForm
{
	/**
	 * @var CCodeModel the code model associated with the form
	 */
	public $model;

	/**
	 * Initializes the widget.
	 * This renders the form open tag.
	 */
	public function init()
	{
		echo <<<EOD
<div class="form gii">
EOD;
		parent::init();
	}

	/**
	 * Runs the widget.
	 */
	public function run()
	{
		$templates=array();
		foreach($this->model->getTemplates() as $i=>$template)
			$templates[$i]=basename($template).' template';

		$this->renderFile(Yii::getPathOfAlias('gii.views.common.generator').'.php',array(
			'justPreview'=>isset($this->model->justPreview),
			'model'=>$this->model,
			'templates'=>$templates,
		));

		parent::run();

		echo "</div>";
		echo "</div>";
	}
}