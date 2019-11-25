<?php
/**
* Template Name: Productpage
*/
?>


<?php

get_header(); 

?>

<div class="page-header">
    <div class="container">
        <div class="col-left">
            <h1>Products</h1>
        </div>
        <div class="breadcrumb">
            <span property="itemListElement" typeof="ListItem"><a href="#" class="home"><span property="name">Home</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><span property="name">Products</span><meta property="position" content="2"></span>
            </div>
    </div>	
</div>
<!--Header End-->

<!--Main Contaner Start-->
<div class="site-content-contain">
    <div id="content" class="site-content">
    	<div class="container">
                
            <div class="row">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main" role="main">
                    
                          <ul class="product-grid clearfix">
<?php $loop = new WP_Query( array( 'post_type' => 'post','posts_per_page' => -1 ) ); 
    if ( $loop->have_posts() ) : 
        while ( $loop->have_posts() ) : $loop->the_post(); ?> 

    
 

                            <li class="item">
                                <div class="pbox">
                                    <div class="thumb"><a href="#"><?php the_post_thumbnail(); ?></a></div>
                                    <div class="dec">
                                        <h3><?php echo get_the_title(); ?></h3>
                                        <p><?php the_content(); ?></p>
                                    </div>
                                    <a class="btn btn-primary btn-more" href="http://localhost/iwire/product-details?pid=<?php echo $post->ID; ?>">Read More</a>
                                </div>
                            </li>
   <?php endwhile; 
    endif; 
    wp_reset_postdata(); 
?>

  
                        </ul>
                    
                    </main>
                </div>
                <aside id="secondary" class="widget-area">
                    <div class="widget widget-categories">
                        <h3 class="widget-title">Product</h3>
                        <ul>
                        <?php
 $categories = get_categories();
foreach($categories as $category) {
   echo '<li><a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a></li>';
}
?>

                            <!--<li><a href="#">Switchboard Cable</a></li>
                            <li><a href="#">Hook Up</a></li>
                            <li><a href="#">Flexible Power Cable</a></li>
                            <li><a href="#">VCT-F MVV -S</a></li>
                            <li><a href="#">Marine Cable</a></li>
                            <li><a href="#">AS AP</a></li>
                            <li><a href="#">Others Product</a></li>-->
                        </ul>
                    </div>
                </aside>
            </div>
            
        </div>
    </div>
</div>
<!--Main Contaner Start-->
<?php

get_footer(); 
?>