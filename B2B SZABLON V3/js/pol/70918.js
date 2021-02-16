fun_mobile.push([function(wrapper){
    var $kon = wrapper;
    $kon.find('div.menu_button_wrapper:nth-child(2n)').after('<div class="clearfix separator">'); 
},'#menu_buttons2']);

var _tmp_function = function(wrapper){
    var $kon = wrapper;
    $kon.find('div.menu_button_wrapper:nth-child(4n)').after('<div class="clearfix separator">'); 
};

fun_tablet.push([_tmp_function,'#menu_buttons2']);
fun_pc.push([_tmp_function,'#menu_buttons2']);