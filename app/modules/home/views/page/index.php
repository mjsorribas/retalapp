<?php
/* @var $this BackController */

$this->breadcrumbs=array(
	$this->module->id,
);
?>
<header>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h1 class="header-title">Welcome to</h1>
                <p class="header-text"><?=r()->name?></p>
            </div>
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <a href="<?=$this->createUrl("/users/page/login")?>" class="btn btn-lg btn-outline">
                    <i class="fa fa-user"></i> Sign IN
                </a>
            </div>
        </div>
    </div>
</header>
