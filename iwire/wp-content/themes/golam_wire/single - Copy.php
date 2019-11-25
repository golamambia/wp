<?php
/**
* Template Name: Productdetails
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
            <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Home</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><a href="index.html" class="home"><span property="name">Products</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right" aria-hidden="true"></i> <span property="itemListElement" typeof="ListItem"><span property="name">Switchboard Cable</span><meta property="position" content="2"></span>
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
                          <h2 class="product-name">H05V-K / H07V-K SWITCHBOARD WIRE</h2>
                        <div class="productDetails">
                            <div class="productThumb"><?php $feat_image = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID())); ?>
                                <img src="<?php echo $feat_image; ?>" alt="">
                            </div>
                            <div class="productDec">
                                <h2>CONDUCTOR</h2>
                                <p>Flexible wires with fine stranded copper conductor, CLASS</p>
								<p>5 EN 60228, IEC 60228</p>
                                <h3>INSULATION</h3>
                                <p>PVC insulation</p>
                                <p>Flame retardant according to IEC 60332-1-2</p>
                                <h3>INSULATION COLOR</h3>
                                <p>Black, Blue, Brown, Dark Blue, Green/Yellow, Grey, Red, White, Yellow</p>
                                <a href="#url" class="imgIco"><img src="images/pdfIco.jpg" alt=""></a>
                            </div>
                            <div class="productSpec">
                            	<h3>APPLICATION</h3>
                                <p>Used in control panels and electrical equipments, on and under plaster as laid in conduit.</p>
                                <table>
                                	<tr>
                                    	<th><h3>VOLTAGE RATING</h3></th>
                                        <th><h3>TEST VOLTAGE</h3></th>
                                        <th><h3>OPERATING TEMPERATURE</h3></th>
                                    </tr>
                                    <tr>
                                    	<td><p>H05V-K :  300/500V</p></td>
                                        <td><p>H05V-K :  1500V</p></td>
                                        <td><p>70°C</p></td>
                                    </tr>
                                    <tr>
                                    	<td><p>H07V-K :  450/750V</p></td>
                                        <td><p>H07V-K :  2500V</p></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <h3>SHORT CIRCUIT TEMPERATURE</h3>
                                <p>160°C (max. 5 sn.)</p>
                                <h3>STANDARDS</h3>
                                <p>TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3</p>
                                <img src="images/table1.jpg" alt="" class="tableImg">
                            </div>
                        </div>
                    </main>
                </div>
                <aside id="secondary" class="widget-area">
                    <div class="widget widget-categories">
                        <h3 class="widget-title">Product</h3>
                        <ul>
                            <li><a href="#">Switchboard Cable</a></li>
                            <li><a href="#">Hook Up</a></li>
                            <li><a href="#">Flexible Power Cable</a></li>
                            <li><a href="#">VCT-F MVV -S</a></li>
                            <li><a href="#">Marine Cable</a></li>
                            <li><a href="#">AS AP</a></li>
                            <li><a href="#">Others Product</a></li>
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