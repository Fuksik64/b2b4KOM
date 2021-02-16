app_shop.run(function(){
$('#menu_blog_bydates > ul > li > a').on('click',function(){
  if ($(this).next('ul')) {
    if ($(this).parent().hasClass('active')) {
        $(this).parent().removeClass('active');
    } else {
        $('#menu_blog_bydates > ul > li').removeClass('active');
        $(this).parent().addClass('active');
        
    }
	return false;
  }
});
},'all','#menu_blog_bydates', true);