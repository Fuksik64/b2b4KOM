app_shop.run(function() {
  $('#menu_search label').on('click', function() {
      $('html').addClass('search_open').removeClass('--autocomplete-main-open');
      $('#menu_search input').focus();
  });
  $('.navbar-toggler').on('click', function() {
      $('html').removeClass('--autocomplete-main-open');
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
          $(this).removeClass('--open');
          $('html').removeClass('--autocomplete-open --autocomplete-main-open');
      }
      if ($('._mobile:not(.search_open):not(.sidebar_open)').length) {
        $(window).scrollTop(0);
      }
  });
}, 'all', '#menu_search')


app_shop.run(function(){

  let obj = $(window)[0];
  let el = $('html');

  $(window).on('scroll' , function (e) {
    if(obj.scrollY > 0 && !$('._mobile:not(.search_open):not(.sidebar_open).--autocomplete-main-open .main_page').length) {
          el.addClass('scroll_down');
    } else {
          el.removeClass('scroll_down');
    }
  });

  document.addEventListener('scroll', function hideKeyboard(event) {
    if (event.target === document.querySelector('.ui-autocomplete') || $('._mobile:not(.search_open):not(.sidebar_open).--autocomplete-main-open .main_page').length) {
      document.activeElement.blur();
    }
  }, true);

},[1,2], '#menu_search');

app_shop.run(function() {
  if (app_shop.vars.view > 2) {
    $('html').removeClass('search_open');
  }
}, [1, 2, 3, 4], '#menu_search');