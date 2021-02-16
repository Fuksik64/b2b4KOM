$(function() {
    $('span.n67313_other_value, span.n67313_name, span.n67313_value').each(function() {
        $(this).html($(this).html().replace('.00', ''))
    });
    centerImage('div.clients_rebates_wrapper img', 150, 'transparent');

});