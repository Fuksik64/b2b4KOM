app_shop.run(function(){
  $('#menu_settings').on('click','.open_trigger',function(){  
     $('#menu_settings form').toggle();
  })

}, 'all', '#menu_settings');