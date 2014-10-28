<?php
/* @var $this BackController */

$this->breadcrumbs=array(
	$this->module->id,
);

?>
<?php foreach(LandingElements::model()->findAll(array('order'=>'orden_id','condition'=>'landing_elements_positions_id=2')) as $data):?>
<?php 
    $blocks=r($data->module)->getTypesBlocks();
    $method=$blocks[$data->type];
    echo r($data->module)->{$method}();
?>
<?php endforeach;?>