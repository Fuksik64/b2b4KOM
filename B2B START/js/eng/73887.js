var _ratio_photos =  1.37037037037037;


var google_map_style_array = [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]

////////
/*!
  hey, [be]Lazy.js - v1.3.1 - 2015.02.01
  A lazy loading and multi-serving image script
  (c) Bjoern Klinggaard - @bklinggaard - http://dinbror.dk/blazy
*/
;(function(d,h){"function"===typeof define&&define.amd?define(h):"object"===typeof exports?module.exports=h():d.Blazy=h()})(this,function(){function d(b){if(!document.querySelectorAll){var g=document.createStyleSheet();document.querySelectorAll=function(b,a,e,d,f){f=document.all;a=[];b=b.replace(/\[for\b/gi,"[htmlFor").split(",");for(e=b.length;e--;){g.addRule(b[e],"k:v");for(d=f.length;d--;)f[d].currentStyle.k&&a.push(f[d]);g.removeRule(0)}return a}}m=!0;k=[];e={};a=b||{};a.error=a.error||!1;a.offset=a.offset||100;a.success=a.success||!1;a.selector=a.selector||".b-lazy";a.separator=a.separator||"|";a.container=a.container?document.querySelectorAll(a.container):!1;a.errorClass=a.errorClass||"b-error";a.breakpoints=a.breakpoints||!1;a.successClass=a.successClass||"b-loaded";a.src=r=a.src||"data-src";u=1<window.devicePixelRatio;e.top=0-a.offset;e.left=0-a.offset;f=v(w,25);t=v(x,50);x();n(a.breakpoints,function(b){if(b.width>=window.screen.width)return r=b.src,!1});h()}function h(){y(a.selector);m&&(m=!1,a.container&&n(a.container,function(b){p(b,"scroll",f)}),p(window,"resize",t),p(window,"resize",f),p(window,"scroll",f));w()}function w(){for(var b=0;b<l;b++){var g=k[b],c=g.getBoundingClientRect();if(c.right>=e.left&&c.bottom>=e.top&&c.left<=e.right&&c.top<=e.bottom||-1!==(" "+g.className+" ").indexOf(" "+a.successClass+" "))d.prototype.load(g),k.splice(b,1),l--,b--}0===l&&d.prototype.destroy()}function z(b,g){if(g||0<b.offsetWidth&&0<b.offsetHeight){var c=b.getAttribute(r)||b.getAttribute(a.src);if(c){var c=c.split(a.separator),d=c[u&&1<c.length?1:0],c=new Image;n(a.breakpoints,function(a){b.removeAttribute(a.src)});b.removeAttribute(a.src);c.onerror=function(){a.error&&a.error(b,"invalid");b.className=b.className+" "+a.errorClass};c.onload=function(){"img"===b.nodeName.toLowerCase()?b.src=d:b.style.backgroundImage='url("'+d+'")';b.className=b.className+" "+a.successClass;a.success&&a.success(b)};c.src=d}else a.error&&a.error(b,"missing"),b.className=b.className+" "+a.errorClass}}function y(b){b=document.querySelectorAll(b);for(var a=l=b.length;a--;k.unshift(b[a]));}function x(){e.bottom=(window.innerHeight||document.documentElement.clientHeight)+a.offset;e.right=(window.innerWidth||document.documentElement.clientWidth)+a.offset}function p(b,a,c){b.attachEvent?b.attachEvent&&b.attachEvent("on"+a,c):b.addEventListener(a,c,!1)}function q(b,a,c){b.detachEvent?b.detachEvent&&b.detachEvent("on"+a,c):b.removeEventListener(a,c,!1)}function n(a,d){if(a&&d)for(var c=a.length,e=0;e<c&&!1!==d(a[e],e);e++);}function v(a,d){var c=0;return function(){var e=+new Date;e-c<d||(c=e,a.apply(k,arguments))}}var r,a,e,k,l,u,m,f,t;d.prototype.revalidate=function(){h()};d.prototype.load=function(b,d){-1===(" "+b.className+" ").indexOf(" "+a.successClass+" ")&&z(b,d)};d.prototype.destroy=function(){a.container&&n(a.container,function(a){q(a,"scroll",f)});q(window,"scroll",f);q(window,"resize",f);q(window,"resize",t);l=0;k.length=0;m=!0};return d});


;(function() {
  $.fn.fancyList = function(opts) {
    var isMobile, settings;
    settings = $.extend({
      forceMobile: true,
      buildHTML: true,
      fnClick: function(){},
      fnItemClick: function(){},
    }, opts);



    isMobile = !!navigator.userAgent.match(/Mobile|webOS/i);
    return this.each(function() {
    wrapper = $(this);
      options = wrapper.find('ul.options');

      wrapper.prepend('<select class="fancified">');
      sel = wrapper.find('select.fancified');

      options.find('li').each(function(i, opt) {
          opt = $(opt);
          var tekst = opt.data('title') || opt.html();
        //  console.log(tekst);
          return sel.append("<option value=\"" + (opt.attr('data-value')) + "\">" + tekst + "</option>");
       });
        //return updateTriggerText();
    
      var copyOptionsToList, disabled, options, sel, trigger, updateTriggerText, wrapper;
   
      sel.addClass('fancified');
      sel.css({
        width: 1,
        height: 1,
        display: 'block',
        position: 'absolute',
        top: 0,
        left: 0,
        opacity: 0
      });
   
      //wrapper = sel.parent();
      //wrapper.addClass(sel.data('class'));
      //wrapper.append('<div class="trigger">');
      //if (!(isMobile && !settings.forceMobile)) {
     //   wrapper.append('<ul class="options">');
     // }
      trigger = wrapper.find('.trigger');
      
      disabled = sel.prop('disabled');
      if (disabled) {
        wrapper.addClass('disabled');
      }
      updateTriggerText = function() {
        //console.log(sel.find(':selected').text())
        return trigger.text(sel.find(':selected').text());
      };


      wrapper.on('mouseenter', function() {
         trigger.addClass('hover');
      });

      wrapper.on('mouseleave', function() {
         trigger.removeClass('hover');
      });

      sel.on('blur', function() {
        if (trigger.hasClass('hover')) {
           return sel.focus();
        }

        if (trigger.hasClass('open')) {
          return setTimeout(function() {
            return trigger.trigger('close');
          }, 120);
        }
      });

      trigger.on('close', function() {
        trigger.removeClass('open');
        return options.removeClass('open');
      });
      trigger.on('click', function() {
        //sel.trigger('click');

        settings.fnClick(trigger,sel);


        var offParent, parent;
        if (!disabled) {
          trigger.toggleClass('open');
          if (isMobile && !settings.forceMobile) {
            if (trigger.hasClass('open')) {
              return sel.focus();
            }
          } else {
            if (trigger.hasClass('open')) {
              parent = trigger.parent();
              offParent = parent.offsetParent();
              if ((parent.offset().top + parent.outerHeight() + options.outerHeight() + 20) > $(window).height()) {
                options.addClass('overflowing');
              } else {
                options.removeClass('overflowing');
              }
            }
            options.toggleClass('open');
            return sel.focus();
          }
        }
      });
      sel.on('enable', function() {
        sel.prop('disabled', false);
        wrapper.removeClass('disabled');
        disabled = false;
        return copyOptionsToList();
      });
      sel.on('disable', function() {
        sel.prop('disabled', true);
        wrapper.addClass('disabled');
        return disabled = true;
      });
      sel.on('change', function(e) {


        if (e.originalEvent && e.originalEvent.isTrusted) {
          //console.log('1s');
          return e.stopPropagation();
        } else {
          //console.log('2s');
          return updateTriggerText();
        }
      });
      sel.on('keydown', function(e) {
        var hovered, newHovered, w;
        w = e.which;
        hovered = options.find('.hover');
        hovered.removeClass('hover');
        if (!options.hasClass('open')) {
          if (w === 13 || w === 32 || w === 38 || w === 40) {
            e.preventDefault();
            return trigger.trigger('click');
          }
        } else {
          if (w === 38) {
            e.preventDefault();
            if (hovered.length && hovered.index() > 0) {
              hovered.prev().addClass('hover');
            } else {
              options.find('li:last-child').addClass('hover');
            }
          } else if (w === 40) {
            e.preventDefault();
            if (hovered.length && hovered.index() < options.find('li').length - 1) {
              hovered.next().addClass('hover');
            } else {
              options.find('li:first-child').addClass('hover');
            }
          } else if (w === 27) {
            e.preventDefault();
            trigger.trigger('click');
          } else if (w === 13 || w === 32) {
            e.preventDefault();
            hovered.trigger('click');
          } else if (w === 9) {
            if (trigger.hasClass('open')) {
              trigger.trigger('close');
            }
          }
          newHovered = options.find('.hover');
          if (newHovered.length) {
            options.scrollTop(0);
            return options.scrollTop(newHovered.position().top - 12);
          }
        }
      });
      options.on('click', 'li', function() {
        //$(this).addClass('selected')
        settings.fnItemClick($(this));
        sel.val($(this).data('value')).trigger('change').trigger('blur').trigger('focus');
        return false; 

      });
      options.on('mouseenter', 'li', function() {
        var hovered, nowHovered;
        nowHovered = $(this);
        hovered = options.find('.hover');
        hovered.removeClass('hover');
        return nowHovered.addClass('hover');
      });
      options.on('mouseleave', 'li', function() {
        return options.find('.hover').removeClass('hover');
      });
    /*   copyOptionsToList = function() {
        var selOpts;
        if (isMobile && !settings.forceMobile) {
          return;
        }
        selOpts = sel.find('option');
        sel.find('option').each(function(i, opt) {
          opt = $(opt);
          if (opt.val() && !opt.prop('disabled')) {
            return options.append("<li data-value=\"" + (opt.val()) + "\">" + (opt.text()) + "</li>");
          }
        });
        return updateTriggerText();
      };
      copyListToOptions = function() {
        var selOpts;
        selOpts = options.find('li');
        selOpts.each(function(i, opt) {
          opt = $(opt);
          var tekst = opt.prop('data-title') || opt.html();

          return sel.append("<option value=\"" + (opt.prop('data-value')) + "\">" + tekst + "</option>");
        });
        return updateTriggerText();
      }; 

      sel.on('update', function() {
        wrapper.find('.options').empty();
        return copyOptionsToList();
      }); */
      //return copyListToOptions();
    });
  };

}).call(this);


//////////
;(function() {
  $.fn.fancySelect = function(opts) {
    var isMobile, settings;
    settings = $.extend({
      forceMobile: true,
      fnClick: function(){},
    }, opts);
    isMobile = !!navigator.userAgent.match(/Mobile|webOS/i);
    return this.each(function() {
      var copyOptionsToList, disabled, options, sel, trigger, updateTriggerText, wrapper;
      sel = $(this);
      if (sel.hasClass('fancified') || sel[0].tagName !== 'SELECT') {
        return;
      }
      sel.addClass('fancified');
      sel.css({
        width: 1,
        height: 1,
        display: 'block',
        position: 'absolute',
        top: 0,
        left: 0,
        opacity: 0
      });
      sel.wrap('<div class="fancy-select">');
      wrapper = sel.parent();
      wrapper.addClass(sel.data('class'));
      wrapper.append('<div class="trigger">');
      if (!(isMobile && !settings.forceMobile)) {
        wrapper.append('<ul class="options">');
      }
      trigger = wrapper.find('.trigger');
      options = wrapper.find('.options');
      disabled = sel.prop('disabled');
      if (disabled) {
        wrapper.addClass('disabled');
      }
      updateTriggerText = function() {
        return trigger.text(sel.find(':selected').text());
      };
      sel.on('blur', function() {
        if (trigger.hasClass('open')) {
          return setTimeout(function() {
            return trigger.trigger('close');
          }, 120);
        }
      });
      trigger.on('close', function() {
        trigger.removeClass('open');
        return options.removeClass('open');
      });
      trigger.on('click', function() {
        //sel.trigger('click');

        settings.fnClick(trigger,sel);

        var offParent, parent;
        if (!disabled) {
          trigger.toggleClass('open');
          if (isMobile && !settings.forceMobile) {
            if (trigger.hasClass('open')) {
              return sel.focus();
            }
          } else {
            if (trigger.hasClass('open')) {
              parent = trigger.parent();
              offParent = parent.offsetParent();
              if ((parent.offset().top + parent.outerHeight() + options.outerHeight() + 20) > $(window).height()) {
                options.addClass('overflowing');
              } else {
                options.removeClass('overflowing');
              }
            }
            options.toggleClass('open');
            return sel.focus();
          }
        }
      });
      sel.on('enable', function() {
        sel.prop('disabled', false);
        wrapper.removeClass('disabled');
        disabled = false;
        return copyOptionsToList();
      });
      sel.on('disable', function() {
        sel.prop('disabled', true);
        wrapper.addClass('disabled');
        return disabled = true;
      });
      sel.on('change', function(e) {
        if (e.originalEvent && e.originalEvent.isTrusted) {
          return e.stopPropagation();
        } else {
          return updateTriggerText();
        }
      });
      sel.on('keydown', function(e) {
        var hovered, newHovered, w;
        w = e.which;
        hovered = options.find('.hover');
        hovered.removeClass('hover');
        if (!options.hasClass('open')) {
          if (w === 13 || w === 32 || w === 38 || w === 40) {
            e.preventDefault();
            return trigger.trigger('click');
          }
        } else {
          if (w === 38) {
            e.preventDefault();
            if (hovered.length && hovered.index() > 0) {
              hovered.prev().addClass('hover');
            } else {
              options.find('li:last-child').addClass('hover');
            }
          } else if (w === 40) {
            e.preventDefault();
            if (hovered.length && hovered.index() < options.find('li').length - 1) {
              hovered.next().addClass('hover');
            } else {
              options.find('li:first-child').addClass('hover');
            }
          } else if (w === 27) {
            e.preventDefault();
            trigger.trigger('click');
          } else if (w === 13 || w === 32) {
            e.preventDefault();
            hovered.trigger('click');
          } else if (w === 9) {
            if (trigger.hasClass('open')) {
              trigger.trigger('close');
            }
          }
          newHovered = options.find('.hover');
          if (newHovered.length) {
            options.scrollTop(0);
            return options.scrollTop(newHovered.position().top - 12);
          }
        }
      });
      options.on('click', 'li', function() {
        return sel.val($(this).data('value')).trigger('change').trigger('blur').trigger('focus');
      });
      options.on('mouseenter', 'li', function() {
        var hovered, nowHovered;
        nowHovered = $(this);
        hovered = options.find('.hover');
        hovered.removeClass('hover');
        return nowHovered.addClass('hover');
      });
      options.on('mouseleave', 'li', function() {
        return options.find('.hover').removeClass('hover');
      });
      copyOptionsToList = function() {
        var selOpts;
        if (isMobile && !settings.forceMobile) {
          return;
        }
        selOpts = sel.find('option');
        sel.find('option').each(function(i, opt) {
          opt = $(opt);
          if (opt.val() && !opt.prop('disabled')) {
            return options.append("<li data-value=\"" + (opt.val()) + "\">" + (opt.text()) + "</li>");
          }
        });
        return updateTriggerText();
      };
      sel.on('update', function() {
        wrapper.find('.options').empty();
        return copyOptionsToList();
      });
      return copyOptionsToList();
    });
  };

}).call(this);

;(function ( $ ) {
    $.fn.wrappTableLayout = function( options ) {
        var settings = $.extend({
           numCol: 4,
           wrapper: '<div class="table_row">',
           tableClass: 'table_wrapper',
           cellClass: 'table_cell',
           wrapp: true
        }, options );
        return this.each(function(){

            $this = $(this);
            var $elements = $this.find('> *');

            if ( $this.is('.'+settings.tableClass) ) {
                $this.removeClass(settings.tableClass);
                $elements.removeClass(settings.cellClass);
                $elements.find('> *').unwrap();
                $elements = $this.find('> *');
            } 
            if(settings.wrapp){
                $this.addClass(settings.tableClass);
                $elements.addClass(settings.cellClass);
                for(var i=0, len = $elements.length; i < len; i+=settings.numCol){
                    $elements.slice(i, i+settings.numCol).wrapAll(settings.wrapper);
                }
            }

        });
 
    };
}( jQuery ));



;(function ( $ ) {
    $.fn.separateElements = function( options ) {
        var settings = $.extend({
           numCol: 4,
        }, options );
        return this.each(function(){
             $this = $(this);
             $this.find('.separator').remove();
             $this.find('> *:nth-child('+settings.numCol+'n)').after('<div class="clearfix separator">');
          
        });
 
    };
}( jQuery ));



/* Modernizr 2.8.3 (Custom Build) | MIT & BSD
 * Build: http://modernizr.com/download/#-canvas-touch-cssclasses-addtest-prefixed-prefixes-domprefixes
 */
;window.Modernizr=function(a,b,c){function z(a){j.cssText=a}function A(a,b){return z(m.join(a+";")+(b||""))}function B(a,b){return typeof a===b}function C(a,b){return!!~(""+a).indexOf(b)}function D(a,b){for(var d in a){var e=a[d];if(!C(e,"-")&&j[e]!==c)return b=="pfx"?e:!0}return!1}function E(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:B(f,"function")?f.bind(d||b):f}return!1}function F(a,b,c){var d=a.charAt(0).toUpperCase()+a.slice(1),e=(a+" "+o.join(d+" ")+d).split(" ");return B(b,"string")||B(b,"undefined")?D(e,b):(e=(a+" "+p.join(d+" ")+d).split(" "),E(e,b,c))}var d="2.8.3",e={},f=!0,g=b.documentElement,h="modernizr",i=b.createElement(h),j=i.style,k,l={}.toString,m=" -webkit- -moz- -o- -ms- ".split(" "),n="Webkit Moz O ms",o=n.split(" "),p=n.toLowerCase().split(" "),q={},r={},s={},t=[],u=t.slice,v,w=function(a,c,d,e){var f,i,j,k,l=b.createElement("div"),m=b.body,n=m||b.createElement("body");if(parseInt(d,10))while(d--)j=b.createElement("div"),j.id=e?e[d]:h+(d+1),l.appendChild(j);return f=["&#173;",'<style id="s',h,'">',a,"</style>"].join(""),l.id=h,(m?l:n).innerHTML+=f,n.appendChild(l),m||(n.style.background="",n.style.overflow="hidden",k=g.style.overflow,g.style.overflow="hidden",g.appendChild(n)),i=c(l,a),m?l.parentNode.removeChild(l):(n.parentNode.removeChild(n),g.style.overflow=k),!!i},x={}.hasOwnProperty,y;!B(x,"undefined")&&!B(x.call,"undefined")?y=function(a,b){return x.call(a,b)}:y=function(a,b){return b in a&&B(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=u.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(u.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(u.call(arguments)))};return e}),q.canvas=function(){var a=b.createElement("canvas");return!!a.getContext&&!!a.getContext("2d")},q.touch=function(){var c;return"ontouchstart"in a||a.DocumentTouch&&b instanceof DocumentTouch?c=!0:w(["@media (",m.join("touch-enabled),("),h,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(a){c=a.offsetTop===9}),c};for(var G in q)y(q,G)&&(v=G.toLowerCase(),e[v]=q[G](),t.push((e[v]?"":"no-")+v));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)y(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof f!="undefined"&&f&&(g.className+=" "+(b?"":"no-")+a),e[a]=b}return e},z(""),i=k=null,e._version=d,e._prefixes=m,e._domPrefixes=p,e._cssomPrefixes=o,e.testProp=function(a){return D([a])},e.testAllProps=F,e.testStyles=w,e.prefixed=function(a,b,c){return b?F(a,b,c):F(a,"pfx")},g.className=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(f?" js "+t.join(" "):""),e}(this,this.document);
/////

app_shop.run(function() {
        $('.separator').remove();
      
        $('[data-tablet-class]').each(function() {$(this).removeClass($(this).attr('data-tablet-class'))})
        $('[data-mobile-class]').each(function() {$(this).removeClass($(this).attr('data-mobile-class'))})
        $('html').removeClass('_mobile');
        $('div.main_blog > div:nth-child(2n)').after('<div class="clearfix separator" />');
        $('.products_wrapper .cleardescription').trunk8({lines: 6});
        $('.n69967_items').separateElements({numCol: 4});
        $('#search').separateElements({numCol: 3});
        $('div.product_stocks_list_s_w div.sizes_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 4});
        $('#container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper, .projector_page.container .products_wrapper').separateElements({
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
        $('div.product_stocks_list_s_w div.sizes_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 4});

        $('#container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper,.projector_page.container .products_wrapper').separateElements({
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
    $('div.product_stocks_list_s_w div.sizes_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 3});
    $('.n69967_items').separateElements({numCol: 4});
    $('#search').separateElements({numCol: 3});
    $('#container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper,.projector_page.container .products_wrapper').separateElements({
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
        $('div.product_stocks_list_s_w div.sizes_wrapper, #news_cms_associated .products_wrapper').wrappTableLayout({numCol: 1});
        $('#search').separateElements({numCol: 2});
        $('#container.main_page .products_wrapper,#menu_basketedit_hotspot .products_wrapper, #news_cms_associated .products_wrapper, #text_cms_associated .products_wrapper,.projector_page.container .products_wrapper').separateElements({
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
    setTimeout(function(){$(window).scrollTop($(window).scrollTop()+1);}, 500);

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
                return $('<th/>').html('<b class="ui-table-cell-label">' + tableTh[0] + '</b>' + html);
            });
        });
        $(this).find('tbody tr').each(function() {
            $(this).find('td').each(function(i) {
                $(this).prepend('<b class="ui-table-cell-label">' + tableTh[i + 1] + '</b>');
            });
        });
    })
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