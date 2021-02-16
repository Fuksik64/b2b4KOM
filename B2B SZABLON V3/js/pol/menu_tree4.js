app_shop.run(function footerLinksLabel() {
  $('.footer_links_label').on('click', function slideFooterLinksLabel(e) {
    e.preventDefault();
    $(this).next().slideToggle('fast');
  });
}, '1', '.footer_links_label');

app_shop.run(function footerLinksLabel() {
  $('.footer_links_label').off('click');
  $('.footer_links_label').next().show();
}, [2, 3, 4], '.footer_links_label');