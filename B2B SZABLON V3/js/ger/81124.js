app_shop.run(function(){$('div.categories-list_wrapper ul').show();}, 4, 'div.categories-list_wrapper', true);
app_shop.run(function(){$('div.categories-list_wrapper ul').show();}, 3, 'div.categories-list_wrapper', true);
app_shop.run(function(){$('div.categories-list_wrapper ul').show();}, 2, 'div.categories-list_wrapper', true);

app_shop.run(function(){
$('div.categories-list_wrapper ul.categories-list_level2, div.categories-list_wrapper ul.categories-list_level3').hide();
$('span.more_categories').unbind().click(function(){
$(this).toggleClass('open').next('ul').slideToggle();
})
}, 1, 'div.categories-list_wrapper', true);