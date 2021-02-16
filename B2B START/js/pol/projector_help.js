$('#search .avability_info').live('mouseenter', function () {
    $('#avability_product_hidden').val($(this).attr('prod_id'));
    $('#avability_size_hidden').val($(this).attr('prod_size'));
    $('#avability_product_name').text($(this).parents('.product_wrapper').find('.product-name').text());
    $('h2.avabilityDialog_title').text($(this).parents('.product_wrapper').find('.product-name').text());
    $('div.avabilityDialog_pr_info > img').attr('src', $(this).parents('.product_wrapper').find('.product-icon').attr('data-src'));
});