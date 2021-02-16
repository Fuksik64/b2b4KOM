$(function(){

centerImage('#projector_associated_zone1 a.product_icon img',150, '#ffffff');

$('#projector_associated_zone1 table tr').each(function(){

tmpHeightName = $(this).find('h3').maxHeight();
$(this).find('h3').height(tmpHeightName);

tmpHeighIcons = $(this).find('div.icons').maxHeight();
$(this).find('div.icons').height(tmpHeighIcons);

})


})