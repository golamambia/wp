<?php
function register_my_menus() {  
     register_nav_menus(  
          array(  
              'primary'   => __( 'Primary Menu', 'myfirsttheme' ),
    'secondary' => __( 'Secondary Menu', 'myfirsttheme' )
               )  
          );  
}  
 
add_action( 'init', 'register_my_menus' );


add_theme_support( 'custom-logo' );


function hex2rgb($hex) {
	//$hex = str_replace("#", "", $hex);
	//$hex = 'dd9933';
	

	if(strlen($hex) == 3) {
		$r = hexdec(substr($hex,0,1).substr($hex,0,1));
		$g = hexdec(substr($hex,1,1).substr($hex,1,1));
		$b = hexdec(substr($hex,2,1).substr($hex,2,1));
	} else {
		$r = hexdec(substr($hex,0,2));
		$g = hexdec(substr($hex,2,2));
		$b = hexdec(substr($hex,4,2));
	}
	$rgb = array($r, $g, $b);
	//print_r($rgb);
	echo implode(",", $rgb);
   //return implode(",", $rgb); // returns the rgb values separated by commas
   //return $rgb; // returns an array with the rgb values
}
add_action('convert','hex2rgb');


//enabling short code for text widget

add_filter('widget_text','do_shortcode');



//enabling the featured image section

add_theme_support( 'post-thumbnails' );


add_post_type_support( 'page', 'excerpt' );

?>