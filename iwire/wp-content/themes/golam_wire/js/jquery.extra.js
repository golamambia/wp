jQuery(window).scroll(function () {
	if (jQuery(this).scrollTop() > 180) {
		jQuery('.top-menu-wrapper').addClass("fix");
	} else {
		jQuery('.top-menu-wrapper').removeClass("fix");
	}
});
jQuery(window).scroll(function () {
	if (jQuery(this).scrollTop() > 100) {
		jQuery('#back-top').fadeIn();
	} else {
		jQuery('#back-top').fadeOut();
	}
});

jQuery(document).ready(function(){	
	onloadmethod();	
	// #back-top
	jQuery('#back-top').click(function () {
		jQuery('body,html').animate({
			scrollTop: 0
			}, 400);
			return false;
		});
		
			/*Menu*/	
	jQuery(".btn-menu").click(function(e) {
		e.stopPropagation();
	  jQuery(this).toggleClass("on");   
	});	
	jQuery('#menu').click(function(e) {	
		e.stopPropagation();
		if (jQuery('#MainMenu').hasClass('open')){		
			jQuery('#MainMenu').removeClass('open');
		} else {
			jQuery('#MainMenu').addClass('open');
		  }
	});	
	
	
	jQuery('#ProductsCarousel').owlCarousel({
		loop:true,
		margin:30,
		nav: true,
		dots: false,
		autoplay: true,
		navText:['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
		responsive:{
			0:{
				items:1
			},
			640:{
				items:2
			},
			992:{
				items:3
			}
		}
	});
	
	
	
});

jQuery(window).resize(function(){	
	onloadmethod();	  
});

function onloadmethod(){	

}



