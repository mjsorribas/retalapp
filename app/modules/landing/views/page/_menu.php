<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#page-top"><?=r()->name?></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden"><a href="#page-top"></a></li>
                <li class="page-scroll"><a href="<?=r()->createUrl("/")?>?#portfolio">Portfolio</a></li>
                <li class="page-scroll"><a href="<?=r()->createUrl("/")?>?#about">About</a></li>
                <li class="page-scroll"><a href="<?=r()->createUrl("/")?>?#contact">Contact</a></li>

                <?php if(r('users')->check('admin','root')):?>
                <li><a href="<?=r('admin')->url?>">CMS</a></li>
                <?php endif;?>
                
                <?php if(!r('users')->check()):?>
                    <li><a href="<?=r('users')->loginUrl?>"><?=Yii::t('app','Sign In')?></a></li>
                    <li><a href="<?=r('users')->registerUrl?>"><?=Yii::t('app','Sign Up')?></a></li>
                <?php else:?>
                    <li><a href="<?=r('users')->profileUrl?>"><?=r('users')->name?></a></li>
                    <li><a href="<?=r('users')->logoutUrl?>"><?=Yii::t('app','Logout')?></a></li>
                <?php endif;?>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
