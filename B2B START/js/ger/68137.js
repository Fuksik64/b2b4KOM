var showFilePopUp = function(file){
	var file_popup=$(file).find('div.n68137_popup');
    $("body").append("<div class='n68137_popup_cover'></div>");
    $('div.n68137_popup_cover').css({
        'height':$(document).height(),
        'width':$(window).width(),
        'position':'absolute',
        'left' : '0px',
        'top' : '0px'
    }).click(function(){
        $('div.n68137_popup_cover').remove();
        file_popup.hide();
    }); 
    file_popup.css({
        'top': -file_popup.height()
    }).show();
    file_popup.animate({
        'top':$(window).height() / 2 - file_popup.height() / 2 + $(window).scrollTop()
    }); 
};

$(document).ready(function()
{
$('button.n68137_files_download').each(function()
{
var $this=$(this);
$this.click(function()
{
showFilePopUp($this.parent());
});
});

$('div.n68137_close_popup').click(function()
{
$('div.n68137_popup_cover').click();
}
);

if($('div.n68159_toplayer').length && $('div.n68159_toplayer').html().length>0)
{
var str=$('div.n68159_toplayer').html();
$('div.n68137_description_cms_popup').append(str);
}

if($('div.n68159_to_download').length && $('div.n68159_to_download').html().length>0)
{
var str=$('div.n68159_to_download').html();
$('div.n68137_description_cms').append(str);
}

if($('div.n68159_not_available').length && $('div.n68159_not_available').html().length>0)
{
var str=$('div.n68159_not_available').html();
$('div.n68137_description_cms').append(str);
}

}
);