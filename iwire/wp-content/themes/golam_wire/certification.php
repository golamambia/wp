<?php
/**
* Template Name: Certificationpage
*/
?>

<?php

get_header(); 
?>

<style>


.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
   
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 2s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}

</style>




<div class="page-header">
    <div class="container">
        <div class="col-left">
            <h1>Customer Feedback</h1>
        </div>
        <div class="breadcrumb">
            <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Home</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Products</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><span property="name">Switchboard Cable</span><meta property="position" content="2"></span>
            </div>
    </div>	
</div>
<!--Header End-->

<!--Main Contaner Start-->
<div class="site-content-contain">
    <div id="content" class="site-content">
    	<div class="container">
            
                <div class="content-area">
                    <main id="main" class="site-main" role="main">                    
                        
                        
                        <?php 
$i=0;
                        $loop = new WP_Query( array( 'post_type' => 'certificate', 'order' => 'ASC','posts_per_page' => -1 ) ); 
    if ( $loop->have_posts() ) : 
        while ( $loop->have_posts() ) : $loop->the_post(); 
$i++; ?> 
<?php if($i>1){?><hr><?php } ?>
                        <h2 class="certiName"><?php echo get_the_title(); ?></h2>
                        <ul class="certiList clearfix">
                        	<?php 
                                    $image1 = get_field('Image 1', $post->ID);
                                     $image2 = get_field('Image 2', $post->ID);
                                      $image3 = get_field('Image 3', $post->ID);
                                       $image4 = get_field('Image 4', $post->ID);
if( $image1 ) {
                                    ?>
                            <li>
                            <div id="popup1<?=$i;?>" class="overlay ">
                                <div class="popup">
                                    <!--<h2>Here i am</h2>-->
                                    <a style="margin-top: -23px;margin-right: -20px;" class="close" href="#_">&times;</a>
                                    <div class="content">
                                        <img style="width: 350px;margin-left: 7px;" src="<?php echo $image1['url']; ?>" alt="">
                                    </div>
                                </div>
                            </div>

                            	<div class="certiBlock">
                                	<div class="thumb">
                                    	<a href="#popup1<?=$i;?>"><img src="<?php echo $image1['url']; ?>" alt="">
                                        </a>
                                    </div>
                                    <a href="#popup1<?=$i;?>">Click Here to View Enlarge</a>
                                </div>
                            </li>
                            <?php }if ($image2) {?>


                        <li>
                        <div id="popup2<?=$i;?>" class="overlay ">
                            <div class="popup">
                                <!--<h2>Here i am</h2>-->
                                <a style="margin-top: -23px;margin-right: -20px;" class="close" href="#_">&times;</a>
                                <div class="content">
                                    <img style="width: 350px;margin-left: 7px;" src="<?php echo $image2['url']; ?>" alt="">
                                </div>
                            </div>
                        </div>
                                <div class="certiBlock">
                                    <div class="thumb">
                                        <a href="#popup2<?=$i;?>"><img src="<?php echo $image2['url']; ?>" alt="">
                                        </a>
                                    </div>
                                    <a href="#popup2<?=$i;?>">Click Here to View Enlarge</a>
                                </div>
                            </li>


                                
                           <?php } if ($image3) {?>

                                <li>

                                <div id="popup3<?=$i;?>" class="overlay ">
                                    <div class="popup">
                                        <!--<h2>Here i am</h2>-->
                                        <a style="margin-top: -23px;margin-right: -20px;" class="close" href="#_">&times;</a>
                                        <div class="content">
                                            <img style="width: 350px;margin-left: 7px;" src="<?php echo $image3['url']; ?>" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="certiBlock">
                                    <div class="thumb">
                                        <a href="#popup3<?=$i;?>"><img src="<?php echo $image3['url']; ?>" alt="">
                                        </a>
                                    </div>
                                    <a href="#popup3<?=$i;?>">Click Here to View Enlarge</a>
                                </div>
                            </li>


                           <?php }if ($image4) {?>
                                <li>

                                <div id="popup4<?=$i;?>" class="overlay ">
                                    <div class="popup">
                                        <!--<h2>Here i am</h2>-->
                                        <a style="margin-top: -23px;margin-right: -20px;" class="close" href="#_">&times;</a>
                                        <div class="content">
                                            <img style="width: 350px;margin-left: 7px;" src="<?php echo $image4['url']; ?>" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="certiBlock">
                                    <div class="thumb">
                                        <a href="#popup4<?=$i;?>"><img src="<?php echo $image4['url']; ?>" alt="">
                                        </a>
                                    </div>
                                    <a href="#popup4<?=$i;?>">Click Here to View Enlarge</a>
                                </div>
                            </li>

                           <?php }?>
                        </ul>

                         <?php endwhile; 
    endif; 
    wp_reset_postdata(); 
?>



                    </main>
                </div> 
            
        </div>
    </div>
</div>
<!--Main Contaner Start-->
<?php

get_footer(); 
?>