<?php


function twentythirteen_widgets_init() {
	register_sidebar(
		array(
			'name'          => __( 'Main Widget Area', 'twentythirteen' ),
			'id'            => 'sidebar-1',
			'description'   => __( 'Appears in the footer section of the site.', 'twentythirteen' ),
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);

	register_sidebar(
		array(
			'name'          => __( 'Secondary Widget Area', 'twentythirteen' ),
			'id'            => 'sidebar-2',
			'description'   => __( 'Appears on posts and pages in the sidebar.', 'twentythirteen' ),
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);

	register_sidebar(
		array(
			'name'          => __( 'Golam Area', 'twentythirteen' ),
			'id'            => 'sidebar-3',
			'description'   => __( 'Appears on posts and pages in the sidebar.', 'twentythirteen' ),
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		)
	);
}
add_action( 'widgets_init', 'twentythirteen_widgets_init' );


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



// Numbered Pagination
if ( !function_exists( 'wpex_pagination' ) ) {
	
	function wpex_pagination() {
		
		$prev_arrow = is_rtl() ? '→' : '←';
		$next_arrow = is_rtl() ? '←' : '→';
		
		global $wp_query, $wpex_query;
if ( $wpex_query ) {
    $total = $wpex_query->max_num_pages;
} else {
    $total = $wp_query->max_num_pages;
}
		$big = 999999999; // need an unlikely integer
		if( $total > 1 )  {
			 if( !$current_page = get_query_var('paged') )
				 $current_page = 1;
			 if( get_option('permalink_structure') ) {
				 $format = 'page/%#%/';
			 } else {
				 $format = '&paged=%#%';
			 }
			echo paginate_links(array(
				'base'			=> str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
				'format'		=> $format,
				'current'		=> max( 1, get_query_var('paged') ),
				'total' 		=> $total,
				'mid_size'		=> 3,
				'type' 			=> 'list',
				'prev_text'		=> $prev_arrow,
				'next_text'		=> $next_arrow,
			 ) );
		}
	}
	
}






?>