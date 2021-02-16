app_shop.run(function () {
	app_shop.vars.productzone2_countDown = new CountdownTimer($('aside #CDT'), new Date($('aside #CDT').attr('data-promotiontilldate')));
	app_shop.vars.productzone2_countDown.countDown();
}, 'all')

app_shop.run(function () {
  $('#content').prepend($('#products_zone2'));
}, 1, '#products_zone2')

app_shop.run(function () {
  $('aside').append($('#products_zone2'));
}, [2,3,4], '#products_zone2')