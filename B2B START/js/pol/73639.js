fun_mobile.push([function(wrapper){
	var $kon = wrapper;
	if(!$('#mobile_menu_categories').size()){
		var menuCategoriesMobile = $kon.clone();
		menuCategoriesMobile.attr('id', 'mobile_menu_categories').find('li.mobile_menu').remove();
		menuCategoriesMobile.find('li.hidden-phone').removeClass('hidden-phone');
		$('#menu_additional').after(menuCategoriesMobile);
		$('aside').css('min-height',$('body').height());
	}
},'#menu_categories']);

var _tmp_function = function(wrapper){
    $('aside').removeAttr('style');
};

fun_tablet.push([_tmp_function,'#menu_categories']);
fun_pc.push([_tmp_function,'#menu_categories']);