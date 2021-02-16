app_shop.run(function(){
  $('#main_tree5 .title').click(function(){
    if(app_shop.vars.view == 1 && $(this).next('ul').size()){
        $(this).next('ul').slideToggle();
        return false;
    }
  })
},'all','#main_tree5');