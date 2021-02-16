$(document).ready(function() {
    /* Wyrównanie */
    if ( $('#n67367_instalment').length && $('#n67367_oo').length ) {
        if ( $('#n67367_instalment div.n67367_section_sub').height() > $('#n67367_oo div.n67367_section_sub').height() ) {
            $('#n67367_oo div.n67367_section_sub').css('height',$('#n67367_instalment div.n67367_section_sub').height());
        }
        else {
            $('#n67367_instalment div.n67367_section_sub').css('height',$('#n67367_oo div.n67367_section_sub').height());
        }	
    }
});