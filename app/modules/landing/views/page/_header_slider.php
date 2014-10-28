<section>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <?php foreach(LandingElementsSlider::model()->findAll(array('order'=>'orden_id')) as $id => $data):?>
    <div class="item<?php echo ($id==0)?" active":"";?>">
      <img src="<?=$data->image_path?>" alt="...">
      <div class="carousel-caption">
        <h3><?=$data->title?></h3>
        <p><?=$data->text?></p>
      </div>
    </div>
    <?php endforeach;?>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
</section>