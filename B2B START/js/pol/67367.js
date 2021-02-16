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
});