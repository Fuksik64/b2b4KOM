$.fn.inView = function() {
        hh = $(window).scrollTop() + $(window).height();
        gg = $(this).position().top;
        
        if(hh+100 > gg){
           return true;
        }else{
          return false;
        }
    };


var aktualnyLinkDoKategorii = ''



function ajaxSearching(urlAjax,obj){
    $.ajax({
        url: urlAjax,
        timeout: 8000,
        complete : function(request,settings){
            if(request.status != 200){
                window.location = aktualnyLinkDoKategorii;
            }
        },
        error: function(){
            window.location = aktualnyLinkDoKategorii;
        },
        success: function(data, textStatus, jqXHR){
        
        //alert('sukces');
        
            if(jqXHR.status == 200){
            trOBJ = $(data).find("#search div.product_wrapper");
            trOBJ.addClass('new_load_items');
            nextLink = $(data).find("#search_paging_bottom a.next").prop('href');
            if(nextLink){
                $("#search_paging_bottom a.next").prop('href',nextLink)
                $("#search_paging_bottom").removeClass('loadingInProgress');
            }else{
               $("#search_paging_bottom").hide();
            }

            
            $('#search').append(trOBJ);
            $('.separator').remove();
            $('#search').separateElements({numCol: 2});
            $('.new_load_items img.b-lazy').parents('a').addClass('loading');  
            $('.new_load_items .align_row').iai_align();

            var bLazy = new Blazy({ 
                    breakpoints: [{
                    width: 420, src: 'data-src-small'
                }], success: function(element){
                      setTimeout(function(){

                        //var parent = element.parentNode;
                        $(element).parents('.loading').removeClass('loading');
                       // parent.className = parent.className.replace(/\bloading\b/,'');
                      }, 200);
                    }
            });

            $('.new_load_items').removeClass('new_load_items');

           }
        }

    });
}


  $(window).scroll(function () { 
    if(app_shop.vars.view == 1){
        if($('#search_paging_bottom a.next').size() && !$('.filter_on').size()){
            if($('#search_paging_bottom').inView()){
                if(!$('#search_paging_bottom').is('.loadingInProgress')){
                    aktualnyLinkDoKategorii = $('#search_paging_bottom a.next').attr('href');
                    ajaxSearching(aktualnyLinkDoKategorii, $('#search_paging_bottom a.next'));
                    $('#search_paging_bottom').addClass('loadingInProgress').show();
                }
            } 
        }
    }

       
    });