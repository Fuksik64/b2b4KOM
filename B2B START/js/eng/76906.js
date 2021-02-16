app_shop.run(function() {

$('form.newsletter_form').submit(function(){
  var obj = $('form.newsletter_form input[name="mailing_email"]');
  if(!obj.val()){
    obj.addClass('input_error');
    return false;
  }

})

$('form.newsletter_form input[name="mailing_email"]').keyup(function(){
  $(this).removeClass('input_error');
})






}, 'all' , 'form.newsletter_form');