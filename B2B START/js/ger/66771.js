$.fn.maxHeight = function() {
    var max = 0;
    this.each(function() {
      max = Math.max( max, $(this).height() );
    });
    return max;
  };



$(function(){

 centerImage('#search a.product_icon img',150, '#ffffff');

$('#search table tr').each(function(){

tmpHeightName = $(this).find('h3').maxHeight();
$(this).find('h3').height(tmpHeightName);

tmpHeighIcons = $(this).find('div.icons').maxHeight();
$(this).find('div.icons').css('min-height',tmpHeighIcons);

})


})