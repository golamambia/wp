<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *Template Name: Indexpage
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
get_header(); 
?>
<div class="home-slideshow"><img style="width:100%;" src="<?php bloginfo( 'template_url' ); ?>/images/banner.jpg" alt=""></div>
<!--Main Contaner Start-->
<div class="site-content-contain">
    <div id="content" class="site-content">
    	<div class="container">
        	
            <div class="welcome-sec">
                <div class="row">
                	<div class="col-sm-8">
            			<h1>Welcome to i-WIRE (ASIA) PTE LTD</h1>
                        <p>We manufacture a wide variety of cable and wire products marketed under our key brand, i-WIRE, that cater to our clients in several different industries such as </p>
                        <ul>
                            <li>Switchboards</li> 
                            <li>Panels</li>
                            <li>Marine Controls</li>
                            <li>Automation Machines, etc.</li>
                        </ul>
                    </div>
                	<div class="col-sm-4 thumb">
                    	<p><img src="<?php bloginfo( 'template_url' ); ?>/images/wire.png" alt=""></p>
                    </div>
                </div>
            </div>
            
            <h1 class="sec-title">Our products</h1>
            
            <div id="ProductsCarousel" class="owl-carousel products-carousel">
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image1.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>Switchboard Cable</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image2.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>Multi-Conductor Cable</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image3.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>I-Wire Electrical Cables & Wires</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image1.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>Switchboard Cable</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image2.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>Multi-Conductor Cable</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
                <div class="item">
                	<div class="box">
                    	<div class="thumb"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/image3.jpg" alt=""></a></div>
                        <div class="dec">
                        	<h3>I-Wire Electrical Cables & Wires</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                        </div>
                        <a class="btn btn-primary btn-more" href="#">Read More</a>
                    </div>
                </div>
            </div>  
              
          </div>
    </div>
</div>
<!--Main Contaner Start-->

<div class="vision-mision-sec clearfix">
	<div class="box vision">
    	<h3>Our Vision</h3>
        <p>We aim to be the preferred specialist in cable and wire, supplying our products to companies globally.</p>
    </div>
	<div class="box mision">
    	<h3>Our Mission</h3>
        <p>Provide quality products and swift, responsive service that will enable customers to improve efficiency and reduce downtime.</p>
    </div>
</div>

<div class="service-sec clearfix">
	<div class="container">
    	<h1 class="sec-title">Our Services</h1>
        <ul class="service-grid clearfix">
        	<li class="item">
            	<div class="sbox">
                	<div class="thumb">
                    	<p><img src="<?php bloginfo( 'template_url' ); ?>/images/service-icon1.png" alt=""></p>
                    </div>
                    <h5>Quality & Environmental</h5>
                    <p>We are specialists in the manufacture of cable and wire. <a href="#" class="btn">Read More</a></p>
                </div>
            </li>
        	<li class="item">
            	<div class="sbox">
                	<div class="thumb">
                    	<p><img src="<?php bloginfo( 'template_url' ); ?>/images/service-icon2.png" alt=""></p>
                    </div>
                    <h5>Product Innovation</h5>
                    <p>We trust that innovation is critical to a company's progress; <a href="#" class="btn">Read More</a></p>
                </div>
            </li>
        	<li class="item">
            	<div class="sbox">
                	<div class="thumb">
                    	<p><img src="images/service-icon3.png" alt=""></p>
                    </div>
                    <h5>Sales & Service</h5>
                    <p>For any industry, deep knowledge of your product is absolutely <a href="#" class="btn">Read More</a></p>
                </div>
            </li>
        	<li class="item">
            	<div class="sbox">
                	<div class="thumb">
                    	<p><img src="<?php bloginfo( 'template_url' ); ?>/images/service-icon4.png" alt=""></p>
                    </div>
                    <h5>Response & Delivery</h5>
                    <p>Our dedication to good customer service also means ensuring promp <a href="#" class="btn">Read More</a></p>
                </div>
            </li>
        	<li class="item">
            	<div class="sbox">
                	<div class="thumb">
                    	<p><img src="<?php bloginfo( 'template_url' ); ?>/images/service-icon5.png" alt=""></p>
                    </div>
                    <h5>Distribution</h5>
                    <p>i-WIRE (ASIA) PTE LTD works with a broad network of distributors <a href="#" class="btn">Read More</a></p>
                </div>
            </li>
        </ul>
    </div>
</div>

<?php

get_footer(); 
?>