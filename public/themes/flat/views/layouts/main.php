<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Retalapp is realy fast! www.retalapp.com">
    
    <link rel="shortcut icon" href="<?php echo $this->themeUrl(); ?>/ico/favicon.ico">
    <link href="<?php echo $this->themeUrl(); ?>/css/style.min.css" rel="stylesheet">
    <?php echo $this->builtHeader()?>
   
    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

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
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=r()->createUrl("/")?>?#portfolio">Portfolio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=r()->createUrl("/")?>?#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=r()->createUrl("/")?>?#contact">Contact</a>
                    </li>

                    <?php if(r('users')->check('admin','root')):?>
                    <li>
                      <a href="<?=r('admin')->url?>">CMS</a>
                    </li>
                    <?php endif;?>
                    
                    <li>
                      <a href="<?=r()->createUrl('/')?>"><?=Yii::t('app','Home')?></a>
                    </li>

                    <?php if(!r('users')->check()):?>
                    <li>
                      <a href="<?=r('users')->loginUrl?>"><?=Yii::t('app','Sign In')?></a>
                    </li>
                    <li>
                      <a href="<?=r('users')->registerUrl?>"><?=Yii::t('app','Sign Up')?></a>
                    </li>
                    <?php else:?>
                    <li>
                      <a href="<?=r('users')->profileUrl?>"><?=r('users')->name?></a>
                    </li>
                    <li>
                      <a href="<?=r('users')->logoutUrl?>"><?=Yii::t('app','Logout')?></a>
                    </li>
                    <?php endif;?>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <?php echo $content; ?>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2014
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visble-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?=r()->theme->baseUrl?>/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="<?=r()->theme->baseUrl?>/js/classie.js"></script>
    <script src="<?=r()->theme->baseUrl?>/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<?=r()->theme->baseUrl?>/js/jqBootstrapValidation.js"></script>
    <script src="<?=r()->theme->baseUrl?>/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?=r()->theme->baseUrl?>/js/freelancer.js"></script>
    <?php echo $this->builtEndBody()?>
</body>
</html>
