(function($) {$.fn.hasScrollBar = function() {
    return this.width() < this.find('>*:first').width();
}
})(jQuery);

app_shop.vars.cmpItemWidth = 200;
app_shop.fn.cmpItemWidth = function(itemCount, borderWidth) {
    $('#compareCss').remove();
    var width = ($('#product_compare_list').width() / itemCount)-borderWidth*2;
    app_shop.vars.cmpItemWidth = width;
    $("head").append("<style id='compareCss'>.compare .item_width{ width:"+width+"px; }</style>");
    setTimeout(function () {
        if($('#product_compare_list').hasScrollBar()){
            $('#product_compare_list_wrapper').addClass('hasScrollBar');
        }else{
            $('#product_compare_list_wrapper').removeClass('hasScrollBar');
        } 
    }, 500);
}

app_shop.run(function(){app_shop.fn.cmpItemWidth(3, 1)}, 1 , '#product_compare_list');
app_shop.run(function(){app_shop.fn.cmpItemWidth(4, 1)}, 2 , '#product_compare_list');
app_shop.run(function(){app_shop.fn.cmpItemWidth(4, 1)}, 3 , '#product_compare_list');
app_shop.run(function(){app_shop.fn.cmpItemWidth(5, 1)}, 4 , '#product_compare_list');

app_shop.run(function() {
    var cmp_list_w = $('#product_compare_list_wrapper');
    var cmp_list = $('#product_compare_list');

    var checkNavigation = function(){
        if(cmp_list.scrollLeft() + cmp_list.innerWidth()>=cmp_list[0].scrollWidth){
            cmp_list_w.addClass('hideNext');
        }else{
            cmp_list_w.removeClass('hideNext');
        }

        if(cmp_list.scrollLeft() == 0){
            cmp_list_w.addClass('hidePrev')
        }else{
            cmp_list_w.removeClass('hidePrev');
        }
    }

    $('.configure a[href="#differences"]').click(function(){
        var $that = $(this);
        var toggletxt = $that.data('toggletxt').trim();
        var datatext = decodeURIComponent($that.html().trim());
        $that.html(toggletxt);
        $that.data('toggletxt',datatext);
        if($('#product_compare_list .highlight').size()){
          $('#product_compare_list .highlight').removeClass("highlight");  
          return false  
        }
        
        cmp_list.find('tr').not('.cmp_product').each(function(){
            if($.unique($(this).find('td').map(function(){return $(this).text().trim().toLowerCase()})).size() > 1){
                $(this).addClass("highlight");
            }
        });

        if($.unique($('.list_traits li.producer div').map(function(){return $(this).text().trim().toLowerCase()})).size() > 1){
            $('.list_traits li.producer').addClass("highlight");
        }
        if($.unique($('.list_traits li.barcode div').map(function(){return $(this).text().trim().toLowerCase()})).size() > 1){
            $('.list_traits li.barcode').addClass("highlight");
        }

    });

    $('.configure_item a[data-position]').click(function(){
      var $that = $(this);
      var position = $that.data('position')-1;
      $("#product_compare_list tr").each(function(){
        $(this).find('td').eq(position).toggleClass("hideCol");
      });
      setTimeout(function () {
        if(cmp_list.hasScrollBar()){
            cmp_list_w.addClass('hasScrollBar');
        }else{
            cmp_list_w.removeClass('hasScrollBar');
        } 
        checkNavigation();

         var toggletxt = $that.data('toggletxt').trim();
         var datatext = decodeURIComponent($that.html().trim());
         $that.html(toggletxt);
         $that.data('toggletxt',datatext);

        
      }, 300);

      return false;
    });

    cmp_list.bind('scroll', function(){checkNavigation();});

    cmp_list.scrollLeft(0);

    //przewijanie 
    $('.navigation .prev').click(function(){
        cmp_list.animate( { scrollLeft: '-='+app_shop.vars.cmpItemWidth }, 500);
    });

    $('.navigation .next').click(function(){
        cmp_list.animate( { scrollLeft: '+='+app_shop.vars.cmpItemWidth }, 500);
    });


}, 'all' , '#product_compare_list');