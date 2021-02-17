app_shop.run(function(){
    $('._mobile #menu_filter h3').live('click',function(){
        $this = $(this);
        $this.next().slideToggle(function(){
              if($this.next().is(':visible')){
                  $this.addClass('openList');
              }else{
                  $this.removeClass('openList');
              }
        });
    });

    app_shop.vars.sendFilter = false;
    $('#menu_filter div.filter_item.list_type input, #menu_filter div.filter_item.dual_type input').click(function(){
       app_shop.vars.sendFilter = true; 
    })


    $('._mobile #filter_form').live('submit',function(){
      if(!app_shop.vars.sendFilter){
        $('html').removeClass('filter_on');
      }
  
      return app_shop.vars.sendFilter;
    })
          
},'all','#menu_filter');