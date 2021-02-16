var google_map_style_array = [{ "featureType": "landscape", "stylers": [{ "saturation": -100 }, { "lightness": 65 }, { "visibility": "on" }] }, { "featureType": "poi", "stylers": [{ "saturation": -100 }, { "lightness": 51 }, { "visibility": "simplified" }] }, { "featureType": "road.highway", "stylers": [{ "saturation": -100 }, { "visibility": "simplified" }] }, { "featureType": "road.arterial", "stylers": [{ "saturation": -100 }, { "lightness": 30 }, { "visibility": "on" }] }, { "featureType": "road.local", "stylers": [{ "saturation": -100 }, { "lightness": 40 }, { "visibility": "on" }] }, { "featureType": "transit", "stylers": [{ "saturation": -100 }, { "visibility": "simplified" }] }, { "featureType": "administrative.province", "stylers": [{ "visibility": "off" }] }, { "featureType": "water", "elementType": "labels", "stylers": [{ "visibility": "on" }, { "lightness": -25 }, { "saturation": -100 }] }, { "featureType": "water", "elementType": "geometry", "stylers": [{ "hue": "#ffff00" }, { "lightness": -25 }, { "saturation": -97 }] }]

app_shop.run(function () {
  if ($('[data-ajaxLoad]').length) {
    app_shop.fn.hotspotAjaxInit('', function () { }, true, function() {
      $('.hotspot:not(#main_hotspot_zone1):not(.--list):not(.--slider)').each(function setHeightHotspot() {
        $(this).find('.product__name').setHeight($(this).find('.products'));
        $(this).find('.product__prices').setHeight($(this).find('.products'));
      });

      // Wyrównanie szerokości ceny dla hotspot --list
      if (app_shop.vars.view > 2) {
        $('.hotspot.--list').each(function setWidthHotspot() {
          let max = 0;
          $(this).find('.product__price_wrapper').each(function() {
            max = Math.max(max, $(this).outerWidth());
          });
          $(this).find('.product__price_wrapper').removeAttr('style').css('min-width', max);

          max = 0;
          $(this).find('.product__promo_info_wrapper').each(function() {
            max = Math.max(max, $(this).outerWidth());
          });
          $(this).find('.product__promo_info_wrapper').removeAttr('style').css('min-width', max);
          
          max = 0;
          $(this).find('.product__see').each(function() {
            max = Math.max(max, $(this).outerWidth());
          });
          $(this).find('.product__see').removeAttr('style').css('min-width', max);

        });
      }

      // Slider na hotspocie
      // Aby uruchomić slider na hotspot wystarczy dodać klasę --slider
      app_shop.vars.hotspot_slider = new HotspotSlider({
        // Selektor slidera
        selector: '.hotspot.--slider .products:not(.slick-initialized)',

        // Indywidualne opcje
        // options: {
        //  slidesToShow: 5,
        //  slidesToScroll: 5,
        // },

        // Callback przed wywołaniem slicka
        callbackBefore: (slider) => {
          slider.each(function hotspotSliderSetHeight() {
            $(this).find('.product__name').setHeight($(this));
            $(this).find('.product__prices').setHeight($(this));
          });
        },

        // // Callback po wywołaniu slicka
        // callbackAfter: (slider) => {
        //   console.log('Po odpaleniem slicka');
        // },
      });
    });
  }
}, [1, 2, 3, 4], 'body', true);

app_shop.run(function () {

  $('.hotspot:not(#main_hotspot_zone1):not(.--list):not(.--slider)').each(function setHeightHotspot() {
    $(this).find('.product__name').setHeight($(this).find('.products'));
    $(this).find('.product__prices').setHeight($(this).find('.products'));
  });

}, [1, 2, 3, 4], '.hotspot');

app_shop.run(function hotspotList() {
    if (app_shop.vars.view > 2) {
      $('.hotspot.--list').each(function setWidthHotspot() {
        let max = 0;
        $(this).find('.product__price_wrapper').each(function() {
          max = Math.max(max, $(this).outerWidth());
        });
        $(this).find('.product__price_wrapper').removeAttr('style').css('min-width', max);
  
        max = 0;
        $(this).find('.product__promo_info_wrapper').each(function() {
          max = Math.max(max, $(this).outerWidth());
        });
        $(this).find('.product__promo_info_wrapper').removeAttr('style').css('min-width', max);
        
        max = 0;
        $(this).find('.product__see').each(function() {
          max = Math.max(max, $(this).outerWidth());
        });
        $(this).find('.product__see').removeAttr('style').css('min-width', max);
      });
    } else {
      $('.hotspot.--list .product__price_wrapper').removeAttr('style');
      $('.hotspot.--list .product__promo_info_wrapper').removeAttr('style');
      $('.hotspot.--list .product__see').removeAttr('style');
    }
  
  }, [1, 2, 3, 4], '.hotspot.--list');

app_shop.run(function hotspotSlider() {
  // Aby uruchomić slider na hotspot wystarczy przekopiować klasy z zakładki Class z komponentu 111439 (hotspot2 na karcie 10000)
  app_shop.vars.hotspot_slider = new HotspotSlider({
    // Selektor slidera
    selector: '.hotspot.--slider .products:not(.slick-initialized)',

    // Indywidualne opcje
    // options: {
    //  slidesToShow: 5,
    //  slidesToScroll: 5,
    // },

    // Callback przed wywołaniem slicka
    callbackBefore: (slider) => {
      slider.each(function hotspotSliderSetHeight() {
        $(this).find('.product__name').setHeight($(this));
        $(this).find('.product__prices').setHeight($(this));
      });
    },

    // // Callback po wywołaniu slicka
    // callbackAfter: (slider) => {
    //   console.log('Po odpaleniem slicka');
    // },
  });
}, 'all', '.hotspot.--slider');

app_shop.run(function () {
  $('[data-tablet-class]').each(function () {
    $(this).removeClass($(this).attr('data-tablet-class'))
  });
  $('[data-mobile-class]').each(function () {
    $(this).removeClass($(this).attr('data-mobile-class'))
  });
  $('html').removeClass('_mobile');
}, [3, 4], 'body', true);

app_shop.run(function () {
  setTabletClass();

  //revisedMobile
  $('#projector_form div.product_info').prepend($('div.product_info_top'));
  $('#projector_form h1').after($('div.projector_description'));
}, 2, 'body', true);

app_shop.run(function () {
  setMobileClass();

  //revisedMobile
  if ($('#n67367').length) {
    $('#n67367').before($('div.product_info_top'));
    $('#n67367').before($('div.projector_description'))
  } else {
    $('#projector_form div.product_info').append($('div.product_info_top'));
    $('#projector_form div.product_info').append($('div.projector_description'))
  }
}, 1, 'body', true);

// RWD switcher dla grafik w opisach (wymagana klasa cm dla wrappera oraz rwd-src dla zdjęcia)
app_shop.run(function () {
  $('.cm').find('img.rwd-src').each(function () {
    $this = $(this);
    $this.attr('src', app_shop.fn.getRwdSrc($this))
  });
}, [1, 2, 3, 4]);

app_shop.run(function () {
  $('img.b-lazy').parents('a').addClass('loading');
  app_shop.vars.bLazy = new Blazy({
    breakpoints: [{
      width: 420,
      src: 'data-src-small'
    }],
    success: function (element) {
      setTimeout(function () {
        $(element).parents('.loading').removeClass('loading');
      }, 200);
    }
  });

  // Uruchamia event dodania klasy focused na input, setTimeout aby obsłużyć autocomplete
  $('.form-group .form-control, .f-group .f-control').on('change input focus blur', app_shop.fn.addFocused);
  setTimeout(() => {
    $('.form-group .form-control, .f-group .f-control').each(app_shop.fn.addFocused);
  }, 500);

  // dodaje klase --file jeżeli plik został dodany
  $('.f-group.--file .f-control').on('change', function () {
    var _this = $(this),
      _siblings = _this.siblings('.f-label');
    if (_this.val().length) {
      _siblings.addClass('--file');
      if (!_siblings.attr('data-label')) {
        _siblings.attr('data-label', _siblings.text());
      }
      _siblings.text(_this.val());
    } else {
      _siblings.removeClass('--file');
      _siblings.text(_siblings.attr('data-label'));
    }
  });

  $('.drop_down_label').append(' <span>');
  $('.drop_down_list > .active').each(function () {
    $(this).parents('.drop_down_wrapper').find('.drop_down_label span').html($(this).html())
  });

  $(document).on('click touchstart', '.drop_down_label', function () {
    $(this).toggleClass('open_list');
    $(this).next('.drop_down_list').slideToggle();
  });

  $('.drop_down_list > *').live('click', function () {
    $(this).parents('.drop_down_wrapper').find('.drop_down_label span').text($(this).text());
    $(this).parents('.drop_down_wrapper').find('.drop_down_label').removeClass('open_list');
    $(this).parents('.drop_down_list').slideUp();
  });

  $('table.ui-responsive').each(function () {
    if ($(this).find('thead th').size()) {
      var tableTh = $.map($(this).find('thead tr th'), function (n, i) {
        return $(n).text();
      });
    } else {
      var tableTh = $.map($(this).find('thead tr td'), function (n, i) {
        return $(n).text();
      });
    }
    $(this).find('tbody tr').each(function () {
      $(this).find('td:first').replaceWith(function (i, html) {
        if (tableTh[0]) {
          return $('<th/>').html('<b class="ui-table-cell-label">' + tableTh[0] + '</b>' + html);
        } else {
          return $('<th/>').html(html);
        }
      });
    });
    $(this).find('tbody tr').each(function () {
      $(this).find('td').each(function (i) {
        if (tableTh[i + 1]) {
          $(this).prepend('<b class="ui-table-cell-label">' + tableTh[i + 1] + '</b>');
        }
      });
    });
  });

  $('.align_row').iai_align();
  $('body').append($('#alert_cover'));
  $('body').backTop({
    'txt': '<i class="icon-chevron-up"></i>'
  });

  // Fix dla wysokości vh mobile
  // Użycie CSS: height: 90vh; height: ~"calc(var(--vh, 1vh) * 90)";
  let vh = window.visualViewport ? window.visualViewport.height * 0.01 : window.innerHeight * 0.01;
  document.documentElement.style.setProperty('--vh', `${vh}px`);
  if (window.visualViewport) {
    window.visualViewport.addEventListener('resize', function() {
      vh = window.visualViewport.height * 0.01;
      document.documentElement.style.setProperty('--vh', `${vh}px`);
    });
  } else {
    window.addEventListener('resize', () => {
      vh = window.innerHeight * 0.01;
      document.documentElement.style.setProperty('--vh', `${vh}px`);
    });
  }
}, 'all');

app_shop.run(function changeArticleDate() {
  $('.article__date').each(function eachArticleDate() {
    const obj = $(this);
    const txt = app_shop.fn.news_data( {
      data: obj.text(),
      month_names: iaical_shortNames,
      format: '<div>%d</div><span>%m</span>',
    });
    if (txt) obj.html(txt);
  });
}, 'all', '.article__date');

app_shop.fn.fixed_scroll = (el , classToAdd) => {

  let oldVal = window.scrollY;
  const obj = window;

  window.addEventListener('scroll' , function (e) {
    if(obj.scrollY > oldVal && obj.scrollY > 0) {
      !el.classList.contains(classToAdd) ? (el.classList.add(classToAdd)) : '';
    } else {
      el.classList.contains(classToAdd) ? (el.classList.remove(classToAdd)) : '';
    }
    oldVal = obj.scrollY;
  })
}

app_shop.run(function(){

  app_shop.fn.fixed_scroll(document.querySelector('html') , 'scroll');

},[1,2], '#container');