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
                <a class="navbar-brand" href="<?=$this->createUrl("/")?>"><?=r()->name?></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden"><a href="#page-top"></a></li>
                  
                    <li><a href="#info">info</a></li>
                    <?php if(r()->user->isGuest):?>
                    <li><a href="<?=$this->createUrl("/users/page/login")?>">Login</a></li>
                    <?php else:?>
                    <li><a href="<?=$this->createUrl("/users/page/logout")?>">Logout</a></li>
                    <li><a href="<?=$this->createUrl("/users/page/profile")?>">Profile</a></li>
                    <?php endif;?>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <?= $content; ?>

    <!-- Footer -->
    <footer id="info" class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="test-center footer-col col-md-12">

                        <h3>LET'S GET STARTED</h3>
                    
                        <p>(571) 999-999-999</p>
                        
                        <a href="mailto:info@yourcompani.com">info@yourcompani.com</a>
                        
                        <ul class="list-inline">
                            <li>
                                <a href="https://www.facebook.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="https://plus.google.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="https://twitter.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com" class="btn-social btn-outline"><i class="fa fa-fw fa-youtube"></i></a>
                            </li>
                            <li>
                                <a href="https://www.github.com" class="btn-social btn-outline"><i class="fa fa-fw fa-github"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4"></div>
                </div>
            </div>
        </div>
    </footer>

    <footer class="text-center">
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


    <!-- Custom Theme JavaScript -->
    <script src="<?=r()->theme->baseUrl?>/js/freelancer.js"></script>
    <?php echo $this->builtEndBody()?>
</body>
</html>