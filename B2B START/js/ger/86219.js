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



}, 'all' , '#menu_newsletter');