app_shop.run(function() {
   

$('#menu_preloader_add .menu_preloader_add_btn_close').live('click',function(){

  $('#dialog_close').click();
  return false;
})

$('#menu_preloader_add').show()
 $('body').dialog({
   'content':$('#menu_preloader_add'),
   'fixed':false,
   'fitToWindow':false,
   'animate':false,
   'width':308,
   'wrapperClass':'dialog_wrapper_menu_preloader_add',
   'txtCloseButton':'x'
 });



}, 'all','#menu_preloader_add');