
app_shop.fn.initDialogSlider=function(){app_shop.vars.dialog_hotspot=$('.dialog_wrapper_menu_preloader_add #products_associated_zone4 .products').slick({prevArrow:'<a class="slick-prev" href=""><i class="icon-angle-left"></i></a>',nextArrow:'<a class="slick-next" href=""><i class="icon-angle-right"></i></a>',slidesToShow:2,slidesToScroll:2,mobileFirst:true,responsive:[{breakpoint:757,settings:{slidesToShow:4,slidesToScroll:4}}]});};app_shop.run(function(){$('#content #products_associated_zone4').remove();var showPreloaderDialog=function(){$('#menu_preloader_add').show();$('body').dialog({'content':$('#menu_preloader_add'),'fixed':false,'fitToWindow':false,'animate':false,'width':746,'wrapperClass':'dialog_wrapper_menu_preloader_add','adaptiveHeight':true,'txtCloseButton':'x',afterShow:function(){var slides=app_shop.vars.view===1?2:4;if($('.dialog_wrapper_menu_preloader_add #products_associated_zone4 .product').length>slides){app_shop.fn.initDialogSlider();}
if(app_shop.vars.bLazy)app_shop.vars.bLazy.revalidate();}});};showPreloaderDialog();$('#menu_preloader_add .added__button.--close').live('click',function(){$('#dialog_close').click();return false;});},'all','#menu_preloader_add');