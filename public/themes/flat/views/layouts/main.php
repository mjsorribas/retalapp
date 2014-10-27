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

<?php foreach(LandingElements::model()->findAll(array('order'=>'orden_id','condition'=>'landing_elements_positions_id=1')) as $data):?>
<?php 
    $blocks=r($data->module)->getTypesBlocks();
    $method=$blocks[$data->type];
    echo r($data->module)->{$method}();
?>
<?php endforeach;?>

    <?php echo $content; ?>

<?php foreach(LandingElements::model()->findAll(array('order'=>'orden_id','condition'=>'landing_elements_positions_id=3')) as $data):?>
<?php 
    $blocks=r($data->module)->getTypesBlocks();
    $method=$blocks[$data->type];
    echo r($data->module)->{$method}();
?>
<?php endforeach;?>
   
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