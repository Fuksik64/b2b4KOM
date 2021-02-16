$(window).load(function(){	
    if ( $("#search_paging_fix").length ) {		
        $('#search_paging_fix').show();
        var winHeight = $(window).height();
        var pagingTop = $('#search_paging_fix').position();
        $('#search_paging_fix').hide();
        if (pagingTop.top - winHeight < 0) {
            $('#search_paging_fix').hide();
        }
        else {
            $('#search_paging_fix').show();
        }
    }
});