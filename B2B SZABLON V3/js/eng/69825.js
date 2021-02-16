$(function() {
    $('span.n67313_other_value, span.n67313_name, span.n67313_value').each(function() {
        $(this).html($(this).html().replace('.00', ''))
    });
    centerImage('div.clients_rebates_wrapper img', 150, 'transparent');
    $('#n67313_a_change_code').click(function() {
        $('#n67313_change_code').toggle();
        return false;
    });
    $('#n67313_a_remove_code').click(function() {
        $('input.client_rebates_rebatecode_input').val(' ');
        $('#n67313_change_code').submit();
        return false;
    });


});