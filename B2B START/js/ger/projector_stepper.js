app_shop.run(function () {
	$('header').append($('.breadcrumbs'));
}, [3, 4], '.breadcrumbs');

app_shop.run(function () {
	$('#layout').prepend($('.breadcrumbs'));
}, [1, 2], '.breadcrumbs');
app_shop.run(function () {
	$('.breadcrumbs').on('click', '#back_button', function () {
		window.history.back();
		return false;
	});
}, 'all', '.breadcrumbs');