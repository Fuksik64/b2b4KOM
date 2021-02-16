var pickupl_animspeed = 500;


//   ustawienie szerokości elementów jak coś można usunąć
$(function(){

if($('div.pickup_list').length>0){

var pickup_min_element_width = 140;
var pickup_max_element_width = 160;
var pickup_new_element_width = 140;
var pickup_border_element = 1*2;
var pickup_element_margin = 3*2;
var pickup_wrapper = $('div.pickupl_proposed').width();

pickupNumberOfElements = Math.floor(pickup_wrapper / (pickup_min_element_width+pickup_element_margin));
pickup_new_element_width = Math.floor(pickup_wrapper / pickupNumberOfElements)-pickup_element_margin-pickup_border_element;

if(pickup_new_element_width>pickup_min_element_width){
	$('div.pickupl_site_sub').width(pickup_new_element_width);
}else{
    $('div.pickupl_site_sub').width(pickup_max_element_width);
}


}
})
/////////////////////////////////////////////////////////////////////////////////////////////////////////////