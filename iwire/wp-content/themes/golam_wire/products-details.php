
<?php
/**
* Template Name: Productdetails-old
*/
?>

<?php

get_header(); 
?>
<div class="page-header">
    <div class="container">
        <div class="col-left">
            <h1>Products </h1>
        </div>
        <div class="breadcrumb">
            <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Home</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Products</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><span property="name">Switchboard Cable</span><meta property="position" content="2"></span>
            </div>
    </div>  
</div>
<!--Header End-->
<?php $post_17 = get_post($_GET['pid']); ?>
<!--Main Contaner Start-->
<div class="site-content-contain">
    <div id="content" class="site-content">
        <div class="container">
                
            <div class="row">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main" role="main">                    
                          <h2 class="product-name"><?php echo $post_17->post_title; ?></h2>
                        <div class="productDetails">
                            <div class="productThumb"><?php $feat_image = wp_get_attachment_url( get_post_thumbnail_id($_GET['pid'])); ?>
                                <img src="<?php echo $feat_image; ?>" alt="">
                            </div>
                            <div class="productDec">
                                <h2>CONDUCTOR</h2>
                                <p><?php echo get_field('CONDUCTOR', $_GET['pid']);?></p>
                                <!--<p>5 EN 60228, IEC 60228</p>-->
                                <h3>INSULATION</h3>
                                <p><?php echo get_field('INSULATION', $_GET['pid']);?></p>
                                
                                <h3>INSULATION COLOR</h3>
                                <p><?php echo get_field('INSULATION COLOR', $_GET['pid']);?></p>
                                
                                    <?php
                         $pdf = get_field('UPLOAD  FILE',$_GET['pid']);
                        if($pdf){
                        ?>
                            <a href="<?php echo $pdf ?>" class="imgIco" download>
                                <img src="<?php bloginfo( 'template_url' ); ?>/images/pdfIco.jpg" alt="">
                                </a>
                                <?php }?>
                                
                            </div>
                            <div class="productSpec">
                                <h3>APPLICATION</h3>
                                <p><?php echo get_field('APPLICATION', $_GET['pid']);?></p>
                                <table>
                                    <tr>
                                        <th><h3>VOLTAGE RATING</h3></th>
                                        <th><h3>TEST VOLTAGE</h3></th>
                                        <th><h3>OPERATING TEMPERATURE</h3></th>
                                    </tr>
                                    <tr>
                                        <td><p><?php echo get_field('VOLTAGE RATING', $_GET['pid']);?></p></td>
                                        <td><p><?php echo get_field('TEST VOLTAGE', $_GET['pid']);?></p></td>
                                        <td><p><?php echo get_field('OPERATING TEMPERATURE', $_GET['pid']);?></p></td>
                                    </tr>
                                    
                                </table>
                                <h3>SHORT CIRCUIT TEMPERATURE</h3>
                                <p><?php echo get_field('SHORT CIRCUIT TEMPERATURE', $_GET['pid']);?></p>
                                <h3>STANDARDS</h3>
                                <p><?php echo get_field('STANDARDS', $_GET['pid']);?></p>
                                <?php
                        $delimage = get_field('Product Details Image',$_GET['pid']);
                        ?>
                                <img src="<?php echo $delimage['url']; ?>" alt="" class="tableImg">
                            </div>
                        </div>
                    </main>
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
                            <li>
                            <a href="<?php echo site_url(); ?>/protype/?getid=<?php echo $term->term_id; ?>"><?php echo $term->name; ?></a>
                            </li>
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