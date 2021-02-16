// funkcja callback która dodaje eventy do elementów klikalnych
const filtersActionsCall = () => {
  // Rozwiń/ukryj liste elementów listy
  $('.filters__options .--show-hidden').on('click', function toggleHiddenElementsInContent() {
    const id = $(this).data('id');
    const content = `#${id}_content`;

    $(content).toggleClass('--shown');
    $(this).toggleClass('--shown');

    return false;
  });

  // Zwiń rozwiń dany filter
  $('.filters__toggler:not(.--not-expandable)').on('click', function toggleVisibilityExpandMenu() {
    const id = $(this).data('id');
    const expand = `#${id}_expand`;

    $(expand).slideToggle('fast');
    $(this).toggleClass('--not-expanded');

    return false;
  });

  // Pokaż przycisk "zastosuj"
  $('.filters__item .f-control[type=checkbox]').on('change', function showParentSubmitButtonOnChange() {
    const self = $(this);
    const element = self.parents('.filters__content:not(.--group)').siblings().find('.--submit.d-none');

    if (element.length) element.removeClass('d-none');
  });

  // Rozszerza szerokość inputa na podstawie szerokości wpisanej wartość
  $('#PriceRangeFrom, #PriceRangeTo').on('keyup', function changeInputWidthOnKeyUp() {
    const self = $(this);
    const value = self.val();
    self.val(self.val().replace(/[^0-9]/g, ''));

    const inWidth = $.fn.textWidth(value, '14px Arial');
    self.width(inWidth + 10);
  });
  $('#PriceRangeFrom, #PriceRangeTo').keyup();

  // X-Press Couriers otwarcie toplayera
  $('#filter_xpress_expand input').on('change', function xpressCouriersInputChange() {
    const $this = $(this);

    app_shop.vars.clickedXPRESS = $this.attr('name').split('_')[1];

    if ($this.is(':checked') && $this.attr('data-localized') === 'false') {
      $('body').dialog({
        width: 300,
        content: $('#xpress_toplayer').html(),
        wrapperClass: 'xpress_zipcode_verification',
        fixed: false,
      });
    }
  });
};

app_shop.run(function prepareFilterFunction() {
  app_shop.vars.filtersRef = new Filters({
    funcActionCall: filtersActionsCall,
    getQuantity: app_shop.vars.getQuantity || true,

    // Przykład funkcji ajaxowej filtrów, która działa przy klikaniu w zastosuj
    // funcAjaxLoad: () => {
    //   app_shop.vars.bLazy.revalidate();
    //   $('#search .product_prices').setHeight($('#search'));
    //   $('#search .product-name').setHeight($('#search'));

    //   app_shop.fn.dropdown($('.s_paging__select'), 's_setting__', function ($elem) {
    //     app_shop.fn.clickDropdown($elem, true);
    //   });

    //   $('.s_paging__item.--filters a').on('click', function (e) {
    //     $('html').addClass('filter_on');
    //     e.preventDefault();
    //     return false;
    //   });
    // },
  });
}, 'all', '#Filters');

app_shop.run(function prepareXpressCouriersEvents() {
  app_shop.fn.xpressCouriersInit();
}, 'all', '#xpress_toplayer');