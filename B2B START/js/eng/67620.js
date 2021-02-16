$(function() {  
	$('#menu_categories a').click(function(){
		if($(this).next().is('ul')){
			$(this).next('ul').slideToggle();
			return false;
		}

	})
});