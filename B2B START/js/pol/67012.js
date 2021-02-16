$(document).ready(function() {

	if ( $('#menu_messages_warning').length && $('#filter_list').length ) {
		$('#menu_messages_warning').appendTo('#filter_list');
	}

/*
//remove link na span - wszystkie danego typu 
$('#filter_list span.filter_list_name').click(function(){
	window.location.href= $(this).attr('data-link_remove');
	
})
*/
});