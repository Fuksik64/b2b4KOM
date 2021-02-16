app_shop.run(function() {

$('#menu_newsletter form').submit(function(){
  var obj = $('#menu_newsletter input[name="mailing_email"]');
  if(!obj.val()){
    obj.addClass('input_error');
    return false;
  }

})

$('#menu_newsletter input[name="mailing_email"]').keyup(function(){
  $(this).removeClass('input_error');
})

setTimeout(function(){
     if($('#footer_links > *').length > 5)
        $('#footer_links').children('*').eq(3).after('<div class="clearfix"></div>');
}, '150')

}, 'all' , '#menu_newsletter');