var _tmp_function = function(wrapper){
    if($('#menu_categories').dlmenu.destroy) $('#menu_categories').dlmenu.destroy();
    $('#menu_categories').dlmenu({backTXT:app_shop.txt.txt_69305_1, hoverOpen : true});

    //przeniesienie menu
    $('#menu_categories #mobile_menu').after($('aside ul.dl-menu'));

    //przeniesienie wyszukiwarki
    $('#logo').after($('#menu_search'));

    //przeniesienie jezykow
    $('#logo').before($('#menu_settings'));

    //przeniesienie kontaktu
    $('#footer_links').append($('#menu_contact, #menu_orders'));
    
    $('#footer_links').append($('#menu_newsletter'));

    //przenisienie sortowania
    $('div.paging_setting:first form').prepend($('div.menu_filter_wrapper div.select_sort'));

    $('input#menu_search_text').attr('placeholder','');


};

app_shop.run(function(){
    //$('aside').append($('#menu_categories ul.dl-menu, #menu_search, #menu_settings, #menu_contact, #menu_newsletter'))

    if($('#menu_categories').dlmenu.destroy) $('#menu_categories').dlmenu.destroy();
    // $('#menu_categories').dlmenu({backTXT:app_shop.txt.txt_69305_1, hoverOpen : true});

    //przeniesienie wyszukiwarki
    $('aside').append($('#menu_search'));

    //przeniesienie menu
    $('aside').append($('#menu_categories ul.dl-menu'));

    //przeniesienie bloga
    $('aside').append($('#menu_blog'));

    //przeniesienie dodatkowych linków
    $('aside').append($('#login_menu_block'));

    //przeniesienie kontaktu
    $('aside').append($('#menu_contact'));
    $('aside').append($('#menu_newsletter'));

    //przeniesienie jezykow
    $('aside').append($('#menu_settings'));

    //przenisienie sortowania do filtrow
    $('div.menu_filter_wrapper').prepend($('div.select_sort:first'));

    $('input#menu_search_text').attr('placeholder',txt_quick_search['szukaj']);

}, 1 , '#menu_categories');

app_shop.run(_tmp_function, 2 , '#menu_categories');
app_shop.run(_tmp_function, 3 , '#menu_categories');
app_shop.run(_tmp_function, 4 , '#menu_categories');

$('.dl-menu > li > a').live('click', function(){
    if( $('html.touch').size() && $(this).next().is('ul') ){
        return false;
    }
});

$('#mobile_menu li a').live('click', function(){
    $('body').toggleClass('sidebar_open');
    $(window).scrollTop(0);
    $('aside').css('min-height',$('body').outerHeight())
    return false;
})

$('aside ul.dl-menu  a, aside ul.dl-menu  span').live('click',function(){
    // if($(this).is('.notoggle')){
    //    return true;
    //  } else {
    if($(this).next().is('ul')){
        $(this).next('ul').slideToggle();
        return false;
    }
    //}
});


$('.sidebar_open header, .sidebar_open #content, .sidebar_open footer').live('click',function(event){
    $('body').removeClass('sidebar_open');
    event.preventDefault();
})

///