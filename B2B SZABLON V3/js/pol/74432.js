$(function(){

	$('div.prodl_comment_right ol a.previewFile').each(function(){
		var limit = 26;
		var link = $(this).text();
		if(link.length>=limit)
		if(link.indexOf('.')>0) {
			$(this).text(link.substring(0,limit < link.lastIndexOf('.')? limit-6:link.indexOf('.')-6) + '[...].' + link.split('.').pop());
			
		}
		else {
			$(this).text(link.substring(0,limit) )
		}
		
			
	});




	$('a.previewFile[href=#previewFile]').unbind().click(function(){
	
		var link = $(this).attr('rel');

		

		
        $("#ui-dialog").remove();
		fotoHTML = '<img id="ui-dialogimg" style="max-width:480px" alt="'+link+'" src="'+link+'" >';
		//alert(''+fotoHTML);
        $('<div id="ui-dialog">'+fotoHTML+'</div>').appendTo('body');

		
		
    var loaded = false;
    function loadHandler() {
        if (loaded) {
            return;
        }
        loaded = true;
        $('#ui-dialog').dialog({
            'wrappContent':true,
            'fixed':false,
            'fitToWindow': false
        });
    }
    var img = document.getElementById('ui-dialogimg');
    img.onload = loadHandler;
    img.src = link;
    img.style.display = 'inline';
    if (img.complete) {
        loadHandler();
    }
		/**/
		
        return false;
	
	});
	
var virtual_count=$('div.virtual').length;
var product_count=$('tr.productslist_item').length;

if($('form.basketedit_productslist').length && typeof(only_virtual_literal_1)!='undefined' && typeof(only_virtual_literal_2)!='undefined' && typeof(client_files_link)!='undefined' && typeof(client_files_link_txt)!='undefined' && product_count==virtual_count)
{
$('div.virtual').hide();
$('div.basketedit_summary_left').before('<span class="only_virtual">'+only_virtual_literal_1+'<a href="'+client_files_link+'">'+client_files_link_txt+'</a>'+only_virtual_literal_2+'</span>');
}

});