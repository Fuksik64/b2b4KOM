app_shop.run(function(){
   $('.separator').remove();
}, 1, '.stocks_list_wrapper', true);

app_shop.run(function(){
   $('.separator').remove();
   $('.stocks_list_wrapper:nth-child(3n)').after('<div class="separator clearfix" />');
}, 2, '.stocks_list_wrapper', true);

app_shop.run(function(){
   $('.separator').remove();
   $('.stocks_list_wrapper:nth-child(4n)').after('<div class="separator clearfix" />');
}, 3, '.stocks_list_wrapper', true);

app_shop.run(function(){
   $('.separator').remove();
   $('.stocks_list_wrapper:nth-child(5n)').after('<div class="separator clearfix" />');
}, 4, '.stocks_list_wrapper', true);