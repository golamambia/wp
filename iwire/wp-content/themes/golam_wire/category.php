<?php

get_header(); 

?>
<!--category-->
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
<?php 
$cat_id = get_queried_object_id();
$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
$wpex_query  = new WP_Query( array( 'post_type' => 'allproduct','cat' => $cat_id,'posts_per_page' =>-1,'paged' => $paged ) ); 
    if ( $wpex_query ->have_posts() ) : 
        while ( $wpex_query ->have_posts() ) : $wpex_query ->the_post(); ?> 


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
     //wpex_pagination();
    wp_reset_postdata(); 

?>
  
                        </ul>
                    
                    
                    </main>
                    <?php wpex_pagination(); ?>

                </div>
                <aside id="secondary" class="widget-area">
                    <div class="widget widget-categories">
                        <h3 class="widget-title">Product</h3>
                        <ul>
                            <?php
                           // $categories = get_categories( array(
                                                            //'orderby' => 'name',
                                                            //'order'   => 'ASC',
                                                           // 'hide_empty' => 0
                                                       // ) );
                            $terms = get_terms( array(
                                    'taxonomy' => 'category',
                                    'hide_empty' => false,
                                    'exclude'=>1,
                                ) );
                            //print_r($terms);
                            //exit;
                            foreach( $terms as $term ) {
                        ?>
                            <li><a href="<?php echo site_url(); ?>/category/<?php echo $term->slug;?>"><?php echo $term->name; ?></a></li>
                        <?php } ?>
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