app_shop.run(function(){
  $('#menu_search').click(function(){
    if(app_shop.vars.view == 1 && !$(this).is('.open')){
        $(this).addClass('open');
        return false;
    }
  });

},'all','#menu_search');