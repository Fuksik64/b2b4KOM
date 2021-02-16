app_shop.run(function(){
  
      $('a.show-contact-form').click(function(){
         if(app_shop.vars.view == 1){
            $('form.contact_mail').slideToggle();
$('html, body').animate({scrollTop:$('.show-contact-form').position().top},'slow');
            $(this).toggleClass('arrow-down');
         }
      });   
      
},'all','#contact_contact');