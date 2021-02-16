$(function(){

 centerImage('#search a.product_icon img',150, '#ffffff');

$('#search table tr').each(function(){

tmpHeightName = $(this).find('h3').maxHeight();
$(this).find('h3').height(tmpHeightName);

tmpHeightTraits = $(this).find('div.list_traits').maxHeight();
$(this).find('div.list_traits').height(tmpHeightTraits);

tmpHeighIcons = $(this).find('div.icons').maxHeight();
$(this).find('div.icons').css('min-height',tmpHeighIcons);

})


})

$(window).load(function(){

if($('ul.list_traits_gfx').length>0)
$('#search table tr').each(function(){
tmpHeightTraitsf = $(this).find('div.list_traits_gfx').maxHeight();
$(this).find('div.list_traits_gfx').height(tmpHeightTraitsf);


})

});