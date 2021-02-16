app_shop.run(function(){
    $('td.col1_54008xb a.shipping_info').click(function(){
        app_shop.fn.shipping_info($(this).attr('data-product-id'),$(this).attr('data-product-size'),1,$(this).attr('href'));
        return false;
    });
},'all','td.col1_54008xb a.shipping_info');