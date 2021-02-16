app_shop.run(function(){

	var mySelect = $('.search_setting select')
	mySelect.fancySelect().on('change.fs', function() {
	  $(this).trigger('change.$');
	});
$('.search_setting').on('click','a.show_filters',function(){
	$('html').addClass('filter_on');
});
$('#layout').prepend($('.search_categoriesdescription, #paging_setting_top'));
},'all','.search_setting');