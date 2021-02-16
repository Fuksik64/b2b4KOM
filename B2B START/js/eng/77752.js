var google_map_style_array = [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]


app_shop.run(function() {
	$('.separator').remove();

	$('[data-tablet-class]').each(function() {$(this).removeClass($(this).attr('data-tablet-class'))})
	$('[data-mobile-class]').each(function() {$(this).removeClass($(this).attr('data-mobile-class'))})
	$('html').removeClass('_mobile');
	$('div.main_blog > div:nth-child(2n)').after('<div class="clearfix separator" />');
	$('.products_wrapper .cleardescription').trunk8({lines: 6});
	$('.n69967_items').separateElements({numCol: 4});
	$('#search').separateElements({numCol: 3});
	$('div.product_stocks_list_s_w div.sizes_wrapper,#blog_item_associated .products_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 4});
	$('#noproduct_hotspot_zone1 .products_wrapper, #container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper,#blog_item_associated .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper, .projector_page .products_wrapper').separateElements({
		numCol: 4
	})
	$('.main_news_sub').separateElements({numCol: 3});


}, 4);

app_shop.run(function() {
	$('.separator').remove();

	$('[data-tablet-class]').each(function() {$(this).removeClass($(this).attr('data-tablet-class'))})
	$('[data-mobile-class]').each(function() {$(this).removeClass($(this).attr('data-mobile-class'))})
	$('html').removeClass('_mobile');
	$('div.main_blog > div:nth-child(2n)').after('<div class="clearfix separator" />');
	$('.products_wrapper .cleardescription').trunk8({lines: 6});
	$('.n69967_items').separateElements({numCol: 4});
	$('#search').separateElements({numCol: 3});
	$('div.product_stocks_list_s_w div.sizes_wrapper,#blog_item_associated .products_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 4});

	$('#noproduct_hotspot_zone1 .products_wrapper, #container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #blog_item_associated .products_wrapper,#news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper, .projector_page .products_wrapper').separateElements({
		numCol: 4
	})
	$('.main_news_sub').separateElements({numCol: 3});

}, 3);

app_shop.run(function() {
	$('.separator').remove();

	$('#main_news1').each(function() {$(this).find('div.news_wrapper:nth-child(2n)').after('<div class="clearfix separator">');})
	;
	setTabletClass();
	$('div.main_blog > div:nth-child(2n)').after('<div class="clearfix separator" />');
	$('.products_wrapper .cleardescription').trunk8({lines: 6});
	$('div.product_stocks_list_s_w div.sizes_wrapper,#blog_item_associated .products_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 3});
	$('.n69967_items').separateElements({numCol: 4});
	$('#search').separateElements({numCol: 3});
	$('#noproduct_hotspot_zone1 .products_wrapper, #container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper,#blog_item_associated .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper, .projector_page .products_wrapper').separateElements({
		numCol: 4
	})


}, 2);

app_shop.run(function() {
	$('.separator').remove();

	$('#main_news1 div.main_news_item').after('<div class="clearfix separator">');
	//  $('div.basketedit_summary_right').after($('div.basketedit_summary_shipment_time'));
	;
	setMobileClass();
	$('div.main_blog > div').after('<div class="clearfix separator" />');
	$('.products_wrapper .cleardescription').trunk8({lines: 6});
	$('.n69967_items').separateElements({numCol: 2});
	$('div.product_stocks_list_s_w div.sizes_wrapper, #blog_item_associated .products_wrapper,#news_cms_associated .products_wrapper').wrappTableLayout({numCol: 1});
	$('#search').separateElements({numCol: 2});
  
	$('#noproduct_hotspot_zone1 .products_wrapper, #container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #blog_item_associated .products_wrapper,#news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper, .projector_page .products_wrapper').separateElements({
		numCol: 2
	});
	$('body').css('min-height',$(window).height());


}, 1);


app_shop.run(function() {
	//  $( window ).load(function() {
	$('img.b-lazy').parents('a').addClass('loading');    
	app_shop.vars.bLazy = new Blazy({ 
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
	//   });

	//szybki fix bo się nie wszytuje powiadają 
	//  setTimeout(function(){$(window).scrollTop($(window).scrollTop()+1);}, 500);

	$('.drop_down_label').append(' <span>');
	$('.drop_down_list > .active').each(function() {
		$(this).parents('.drop_down_wrapper').find('.drop_down_label span').html($(this).html())
	})

	$(document).on('click touchstart', '.drop_down_label',function () {
		$(this).toggleClass('open_list');
		$(this).next('.drop_down_list').slideToggle();
	});

	$('.drop_down_list > *').live('click', function() {
		$(this).parents('.drop_down_wrapper').find('.drop_down_label span').text($(this).text());
		$(this).parents('.drop_down_wrapper').find('.drop_down_label').removeClass('open_list');
		$(this).parents('.drop_down_list').slideUp();
	})

	$('table.ui-responsive').each(function() {
		if ($(this).find('thead th').size()) {
			var tableTh = $.map($(this).find('thead tr th'), function(n, i) {
				return $(n).text();
			});
		} else {
			var tableTh = $.map($(this).find('thead tr td'), function(n, i) {
				return $(n).text();
			});
		}
		$(this).find('tbody tr').each(function() {
			$(this).find('td:first').replaceWith(function(i, html) {
				if(tableTh[0]){
					return $('<th/>').html('<b class="ui-table-cell-label">' + tableTh[0] + '</b>' + html);
				}else{
					return $('<th/>').html(html);        
				}
			});
		});
		$(this).find('tbody tr').each(function() {
			$(this).find('td').each(function(i) {
				if(tableTh[i + 1]){
					$(this).prepend('<b class="ui-table-cell-label">' + tableTh[i + 1] + '</b>');
				}
			});
		});
	});


	$('#menu_categories').on('click', 'li.mobile_menu1', function() {
            $('aside').css('left', 0);
            return false;
        })


	$('.align_row').iai_align();
	$('body').append($('#alert_cover'));

	$('body').backTop({
		'txt':'<i class="icon-chevron-up"></i>'
	});  

}, 'all');