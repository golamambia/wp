

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>i-WIRE Cable and Wire</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"> 
<link href="<?php bloginfo( 'template_url' ); ?>/css/font-awesome.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="<?php bloginfo( 'template_url' ); ?>/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php bloginfo( 'template_url' ); ?>/css/owl.carousel.css" rel="stylesheet">
<link href="<?php bloginfo( 'template_url' ); ?>/css/owl.theme.default.css" rel="stylesheet">
<link href="<?php bloginfo( 'template_url' ); ?>/wordpress.css" rel="stylesheet">
<link href="<?php bloginfo( 'template_url' ); ?>/style.css" rel="stylesheet">
<link href="<?php bloginfo( 'template_url' ); ?>/responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<?php bloginfo( 'template_url' ); ?>/js/bootstrap.min.js"></script>
<script src="<?php bloginfo( 'template_url' ); ?>/js/owl.carousel.min.js"></script>
<script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.extra.js"></script>


</head>
<body>
<!--Header Start-->
<header class="header">
	<div class="container">
    	<div class="logo"><a href="<?php echo site_url(); ?>">

<?php $custom_logo_id = get_theme_mod( 'custom_logo' );
$image = wp_get_attachment_image_src( $custom_logo_id , 'full' );
?>
<img  src="<?php echo $image[0];?>">
        </a></div>
        <div class="header-right">
            <ul class="top-link">
            	<li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i> +65 6358 0784</a></li>
            	<li><a href="#"><i class="fa fa-fax" aria-hidden="true"></i> +65 6259 9282</a></li>
            	<li><a href="mailto:sales@i-wire.asia"><i class="fa fa-envelope" aria-hidden="true"></i> Sales@i-wire.asia</a></li>
            </ul>
        </div>
    </div>
</header>
<div class="top-menu-holder">
<div class="top-menu-wrapper">
   <div class="container">
        <a id="menu" class="btn-menu" href="javascript:void(0)"><i class="fa fa-bars" aria-hidden="true"></i></a> 
        <div id="MainMenu" class="top-menu">
                <nav id="navMenu"> 
                <?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => '','menu_class' => '','container' => '') ); ?>
                    <!--<ul>  

                        <li class="current-menu-item"><a href="index.php"></a></li>
                       <li><a href="products.html">PRODUCTS</a></li>
                        <li><a href="#">SERVICES</a></li>
                        <li><a href="certification.html">CERTIFICATIONS</a></li>
                        <li><a href="#">Customer feedback</a></li>
                    </ul>-->
                </nav>
            </div>
        
        <a class="btn btn-getintouch" href="<?php echo site_url(); ?>/getin-touch/">Get in Touch</a>
    </div>
</div>
</div>

<!--Header End-->
