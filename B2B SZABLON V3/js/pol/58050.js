$(document).ready(function(){

	$().jFlow({
		slides: "#mySlides",
		controler: "#myController",	
		slidesPrev: "#mySlidesPrev",	
		slidesNext: "#mySlidesNext",	
		clas: "Control",
		clas_selected: "ControlS",
		widthCounter: "1",
		jumpCounter: "1",		
		animate: "yes",
		time_animate: "10000",
		width: "560",
		height: "216",
		duration: 1000
	});
});