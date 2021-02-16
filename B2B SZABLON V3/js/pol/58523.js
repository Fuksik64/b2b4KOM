$(document).ready(function(){
	$('#JAlert_koszyk').jAlert({
		autoclose: false,
		autocloseTime: 5000,
		include: $('#MainProductsAdded_cont'),
		cover: true
	});
});