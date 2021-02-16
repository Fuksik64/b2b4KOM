$(function(){

 centerImage('div.n69967_items a.n69967 img',145, '#ffffff');

$.fn.maxHeight = function() {
    var max = 0;
    this.each(function() {
      max = Math.max( max, $(this).height() );
    });
    return max;
  };

$('a.n69967').each(function(){

tmpHeightName = $(this).find('span.name').maxHeight();
$('span.name').height(tmpHeightName);

})

});