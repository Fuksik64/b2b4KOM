$.fn.textWidth = function(text, font) {

    if (!$.fn.textWidth.fakeEl) $.fn.textWidth.fakeEl =  $('<span>').hide().appendTo(document.body);
    $.fn.textWidth.fakeEl.text(text || this.val() || this.text()).css('font', font || this.css('font'));
    return $.fn.textWidth.fakeEl.width(); 
};

$(function(){
    $('#filter_price_range_from, #filter_price_range_to').keyup(function(){
        var value = $(this).val();
        $(this).val($(this).val().replace(/[^0-9]/g, ''));
        value = $(this).val();
        var in_width = $.fn.textWidth(value, '13px Arial');
        $(this).width(in_width+12);
    })
    $('#filter_price_range_from, #filter_price_range_to').keyup();
})




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
    });

    $('#select_top_sort').removeAttr('onchange');
    $('#select_top_sort').live('change',function(){
        
        
        if(app_shop.vars.view == 1){
          $.getJSON('/settings.php?sort_order=' + $(this).val());
           app_shop.vars.sendFilter = true; 
        }else{
         $(this).parents('form').submit();
        }

          
    })
          
},'all','#menu_filter');