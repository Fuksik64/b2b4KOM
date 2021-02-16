var _ratio_photos =  1.37037037037037;

var google_map_style_array = [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]

var setPCView = function() {
    $('.separator').remove();
    console.log('PC:');
    procesArrayFunctions(fun_pc);
    $('#layout div.products_wrapper').each(function() {
        $(this).find('div.product_wrapper:nth-child(4n)').after('<div class="clearfix separator">');
    })
    $('#search').each(function() {
        $(this).find('div.product_wrapper:nth-child(3n)').after('<div class="clearfix separator">');
    })
    $('#main_news1').each(function() {
        $(this).find('div.news_wrapper:nth-child(3n)').after('<div class="clearfix separator">');
    })
    $('[data-tablet-class]').each(function() {
        $(this).removeClass($(this).attr('data-tablet-class'))
    })
    $('[data-mobile-class]').each(function() {
        $(this).removeClass($(this).attr('data-mobile-class'))
    })
    $('html').removeClass('_mobile');
    load_media_img('big-src');
    
    $('a.product-icon,a.product_icon').setAspectRatio();
   // $('a.projector_medium_image').setAspectRatio({'getOnlyFirstWidth': false});
}
var setTabletView = function() {
    $('.separator').remove();
    console.log('TABLET:');
    procesArrayFunctions(fun_tablet);
    $('#layout div.products_wrapper').each(function() {
        $(this).find('div.product_wrapper:nth-child(4n)').after('<div class="clearfix separator">');
    })
    $('#search').each(function() {
        $(this).find('div.product_wrapper:nth-child(3n)').after('<div class="clearfix separator">');
    })
    $('#main_news1').each(function() {
        $(this).find('div.news_wrapper:nth-child(2n)').after('<div class="clearfix separator">');
    })
    load_media_img('src');
   
    setTabletClass();
    $('a.product-icon,a.product_icon').setAspectRatio();
   // $('a.projector_medium_image').setAspectRatio({'getOnlyFirstWidth': false});
}
var setMobileView = function() {
    $('.separator').remove();
    console.log('MOBILE:');
    procesArrayFunctions(fun_mobile);
    $('#layout div.products_wrapper').each(function() {
        $(this).find('div.product_wrapper:nth-child(2n)').after('<div class="clearfix separator">');
    })
    $('#search').each(function() {
        $(this).find('div.product_wrapper:nth-child(2n)').after('<div class="clearfix separator">');
    })
    $('#main_news1 div.main_news_item').after('<div class="clearfix separator">');
    $('div.basketedit_summary_right').after($('div.basketedit_summary_shipment_time'));
    load_media_img('src');
    
    setMobileClass();
    $('a.product-icon,a.product_icon').setAspectRatio();
}

$(function(){   
$('.align_row').iai_align();


    $('#menu_categories li.mobile_menu3').click(function() {
        $('#menu_categories li.mobile_menu1').click();
        $('#menu_search_text').focus();
        return false;
    })


$('.big_label, .rma_list_data_label').each(function(){
    var $this = $(this);
    var $last_child = $this.find(':last-child')
    var $element_to_wrap = $last_child.size() ? $last_child : $this;
    $element_to_wrap.wrapInner('<span class="big_label_sub"></span>')
}) // przebudowa labelsow
$('body').after($('#alert_cover'))});