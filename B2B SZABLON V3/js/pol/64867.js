app_shop.run(function(){
   

   	$('a.show_on_map').click(function(){
   		if($('.no-touch')){
   			 stock_map.showMap();
        	return false;
   		}
   	})
      
},'all','#stock_info_58110');