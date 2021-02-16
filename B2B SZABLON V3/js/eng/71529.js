$(document).ready(function() {
    /* Wyrównanie */
    if ( $('#n67367_instalment').length && $('#n67367_oo').length ) {
        if ( $('#n67367_instalment').height() > $('#n67367_oo').height() ) {
            $('#n67367_oo div.n67367_section_sub').css('min-height',$('#n67367_instalment div.n67367_section_sub').height());
        }
        if ( $('#n67367_oo').height() > $('#n67367_instalment').height() ) {
            $('#n67367_instalment div.n67367_section_sub').css('min-height',$('#n67367_oo div.n67367_section_sub').height());
        }
    }

    $('div.n67367_instalment_wrapper_close').click(function(){
        $('div.n67367_instalment_list').hide();
    });
    $('a.n67367_instalment_button').click(function(){
        if(parseInt($(this).attr('data-bankcount'))>1){
            $('#n67367_instalment div.n67367_instalment_list').toggle();
        }else if(parseInt($(this).attr('data-bankcount'))==1){
            if(cena_raty>0){
                $('a.n67367_single_instalment_action').click();
            }else{
                $('#n67367_instalment div.n67367_instalment_list').show('fast');
            }
        }
    return false;
    });
$('a.n67367_single_instalment').click(function(){
    if(cena_raty>0){
        $('a.n67367_single_instalment_action').click();
    }else{
        $('#n67367_instalment div.n67367_instalment_list').toggle('fast');
    }
    return false;
});
});