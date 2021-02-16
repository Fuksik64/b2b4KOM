app_shop.run(function() {
    $('#menu_search label').on('click', function() {
        $('html').addClass('search_open');
        $('#menu_search input').focus();
    });
    $('#menu_search a').on('click', function() {
        if (app_shop.vars.view <= 2) {
            $('html').removeClass('search_open');
            return false;
        }
    });
    $('#menu_search input').on('keyup', function() {
        if ( $(this).val().length < 4 && $('.ui-autocomplete > li').length ) {
            $('.ui-autocomplete').hide();
            $('.ui-autocomplete > li').remove();
        }
    });
}, 'all', '#menu_search')


app_shop.run(function(){

    let obj = $(window)[0];
    let el = $('html');

    $(window).on('scroll' , function (e) {
      if(obj.scrollY > 0) {
            el.addClass('scroll_down')
      } else {
            el.removeClass('scroll_down');
      }
    })

},[1,2], '.main_page #menu_search');