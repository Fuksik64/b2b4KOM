app_shop.run(function(){
        $('.search_setting select').fancySelect({});
	$('.search_setting').on('click','a.show_filters',function(){
		$('html').addClass('filter_on');
	})
      
},'all','.search_setting');