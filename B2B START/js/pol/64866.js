app_shop.run(function(){
   
	if(app_shop.vars.view != 1){
   		$('a.show_on_map').click(function(){
   			contact_map.showMap();
        	return false;
   		});
   }

   if(app_shop.vars.view == 1){
   		$('div.contact_contact_right p').each(function(){
   			if($(this).find('a').size()){
   				$(this).css('cursor','pointer');
   				$(this).click(function(){
   					window.location = $(this).find('a').attr('href');
   				});
   			}
   		});
   }
      
},'all','#contact_contact');