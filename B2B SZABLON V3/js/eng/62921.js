$(document).ready(function(){

	$("JflowNew").jFlow({
		slides: "#SlidesText_cms",
		controler: "#ControllerText_cms",	
		slidesPrev: "#SlidesPrevText_cms",	
		slidesNext: "#SlidesNextText_cms",	
		clas: "ControllText_cms",
		clas_selected: "activ",
		widthCounter: "1",
		jumpCounter: "4",		
		animate: "yes",
		time_animate: "10000",
		width: "756",
		height: "247",
		duration: 1000
	});
        centerImage('#text_cms_associated a.product_icon img',150, '#ffffff');

var maxTitleHeight = 0;
        $("#text_cms_associated h3").each(function() {
             maxTitleHeight = Math.max( maxTitleHeight, $(this).height() );
        });

$("#text_cms_associated h3").height(maxTitleHeight);
$('#ControllText_cmsSlide div.ControllText_cmsContainer:nth-child(4n) div.product_wrapper').css('border','none'); 
});