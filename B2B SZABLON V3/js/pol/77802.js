/*$( selector ).imageLightbox(
{
    selector:       'id="imagelightbox"',   // string;
    allowedTypes:   'png|jpg|jpeg|gif',     // string;
    animationSpeed: 250,                    // integer;
    preloadNext:    true,                   // bool;            silently preload the next image
    enableKeyboard: true,                   // bool;            enable keyboard shortcuts (arrows Left/Right and Esc)
    quitOnEnd:      false,                  // bool;            quit after viewing the last image
    quitOnImgClick: false,                  // bool;            quit when the viewed image is clicked
    quitOnDocClick: true,                   // bool;            quit when anything but the viewed image is clicked
    onStart:        false,                  // function/bool;   calls function when the lightbox starts
    onEnd:          false,                  // function/bool;   calls function when the lightbox quits
    onLoadStart:    false,                  // function/bool;   calls function when the image load begins
    onLoadEnd:      false                   // function/bool;   calls function when the image finishes loading
});

var $instance = $( selector ).imageLightbox();
 
$instance.switchImageLightbox( index );
// switches to the other image; accepts integer argument (an index of the desired image)
 
$instance.quitImageLightbox();
// quits the lightbox

*/
    $( function()
    {
        //bxslider fix
                $('.bx-clone a').removeAttr('data-imagelightbox');

            // ACTIVITY INDICATOR

        var activityIndicatorOn = function()
            {
                $( '<div id="imagelightbox-loading"><div></div></div>' ).appendTo( 'body' );
            },
            activityIndicatorOff = function()
            {
                $( '#imagelightbox-loading' ).remove();
            },


            // OVERLAY

            overlayOn = function()
            {
                $( '<div id="imagelightbox-overlay"></div>' ).appendTo( 'body' );
                //bxslider fix
                $('.bx-clone a').removeAttr('data-imagelightbox');
            },
            overlayOff = function()
            {
                $( '#imagelightbox-overlay' ).remove();
            },


            // CLOSE BUTTON

            closeButtonOn = function( instance )
            {
                $( '<button type="button" id="imagelightbox-close" title="Close"></button>' ).appendTo( 'body' ).on( 'click touchend', function(){ $( this ).remove(); instance.quitImageLightbox(); return false; });
            },
            closeButtonOff = function()
            {
                $( '#imagelightbox-close' ).remove();
            },

/*
            // CAPTION

            captionOn = function()
            {
                var description = $( 'a[href="' + $( '#imagelightbox' ).attr( 'src' ) + '"] img' ).attr( 'alt' );
                if( description.length > 0 )
                    $( '<div id="imagelightbox-caption">' + description + '</div>' ).appendTo( 'body' );
            },
            captionOff = function()
            {
                $( '#imagelightbox-caption' ).remove();
            },
*/

            // NAVIGATION

            navigationOn = function( instance, selector )
            {
                var images = $( selector );
                if( images.length )
                {
                    var nav = $( '<div id="imagelightbox-nav"></div>' );
                    for( var i = 0; i < images.length; i++ )
                        nav.append( '<button type="button"></button>' );

                    nav.appendTo( 'body' );
                    nav.on( 'click touchend', function(){ return false; });

                    var navItems = nav.find( 'button' );
                    navItems.on( 'click touchend', function()
                    {
                        var $this = $( this );
                        if( images.eq( $this.index() ).attr( 'href' ) != $( '#imagelightbox' ).attr( 'src' ) )
                            instance.switchImageLightbox( $this.index() );

                        navItems.removeClass( 'active' );
                        navItems.eq( $this.index() ).addClass( 'active' );

                        return false;
                    })
                    .on( 'touchend', function(){ return false; });
                }
            },
            navigationUpdate = function( selector )
            {
                var items = $( '#imagelightbox-nav button' );
                items.removeClass( 'active' );
                items.eq( $( selector ).filter( '[href="' + $( '#imagelightbox' ).attr( 'src' ) + '"]' ).index( selector ) ).addClass( 'active' );
            },
            navigationOff = function()
            {
                $( '#imagelightbox-nav' ).remove();
            },


            // ARROWS

            arrowsOn = function( instance, selector ) {
                var $arrows = $( '<button type="button" class="imagelightbox-arrow imagelightbox-arrow-left"></button><button type="button" class="imagelightbox-arrow imagelightbox-arrow-right"></button>' );

                if($( selector ).length > 1){
                    $arrows.appendTo( 'body' );
                }
                

                $arrows.on( 'click touchend', function( e )
                {
                    e.preventDefault();

                    var $this   = $( this ),
                        $target = $( selector + '[href="' + $( '#imagelightbox' ).attr( 'src' ) + '"]' ),
                        index   = $target.index( selector );

                    //  //console.log('z wyliczenia:'+index);

                    if( $this.hasClass( 'imagelightbox-arrow-left' ) )
                    {
                        index = index - 1;
                        //console.log('left:'+index);
                        //console.log(selector);
                        if( !$( selector ).eq( index ).length )
                            index = $( selector ).length;
                    }
                    else
                    {

                        index = index + 1;
                        //console.log('right:'+index);
                        //console.log(selector);
                        if( !$( selector ).eq( index ).length )
                            index = 0;
                    }

                    $('.bx-pager_lightbox a').removeClass('active')
                    $('.bx-pager_lightbox a').eq(index).addClass('active');


                //  //console.log(index);
                    instance.switchImageLightbox( index );
                    return false;
                });
            },

            arrowsOff = function()
            {
                $( '.imagelightbox-arrow' ).remove();
            }

            // thumbnails

            thumbnailsOn = function( instance, selector ) {
                var $thumbs = $('#bx-pager a[aria-hidden]').clone();
                if($(selector).length > 1){
                    $('body').append('<div class="bx-pager_lightbox" />');
                    $thumbs.removeAttr('style').appendTo( $('div.bx-pager_lightbox') );
                }

                $thumbs.eq($('#bx-pager a.active').index()).addClass('active');

                $thumbs.on( 'click touchend', function( e )
                {
                    e.preventDefault();

                    var $this   = $(this),
                        index   = $this.attr('data-slide-index');
                    instance.switchImageLightbox(index);
                    $thumbs.removeClass('active');
                    $this.addClass('active')
                    return false;
                });
            },
            
            thumbnailsOff = function()
            {
                $('div.bx-pager_lightbox').remove();
            }

            ;

/*
        //  WITH ACTIVITY INDICATION

        $( 'a[data-imagelightbox="a"]' ).imageLightbox(
        {
            onLoadStart:    function() { activityIndicatorOn(); },
            onLoadEnd:      function() { activityIndicatorOff(); },
            onEnd:          function() { activityIndicatorOff(); }
        });


        //  WITH OVERLAY & ACTIVITY INDICATION

        $( 'a[data-imagelightbox="b"]' ).imageLightbox(
        {
            onStart:     function() { overlayOn(); },
            onEnd:       function() { overlayOff(); activityIndicatorOff(); },
            onLoadStart: function() { activityIndicatorOn(); },
            onLoadEnd:   function() { activityIndicatorOff(); }
        });


        //  WITH "CLOSE" BUTTON & ACTIVITY INDICATION

        var instanceC = $( 'a[data-imagelightbox="c"]' ).imageLightbox(
        {
            quitOnDocClick: false,
            onStart:        function() { closeButtonOn( instanceC ); },
            onEnd:          function() { closeButtonOff(); activityIndicatorOff(); },
            onLoadStart:    function() { activityIndicatorOn(); },
            onLoadEnd:      function() { activityIndicatorOff(); }
        });


        //  WITH CAPTION & ACTIVITY INDICATION

        $( 'a[data-imagelightbox="d"]' ).imageLightbox(
        {
            onLoadStart: function() { captionOff(); activityIndicatorOn(); },
            onLoadEnd:   function() { captionOn(); activityIndicatorOff(); },
            onEnd:       function() { captionOff(); activityIndicatorOff(); }
        });


        //  WITH ARROWS & ACTIVITY INDICATION

        var selectorG = 'a[data-imagelightbox="g"]';
        var instanceG = $( selectorG ).imageLightbox(
        {
            onStart:        function(){ arrowsOn( instanceG, selectorG ); },
            onEnd:          function(){ arrowsOff(); activityIndicatorOff(); },
            onLoadStart:    function(){ activityIndicatorOn(); },
            onLoadEnd:      function(){ $( '.imagelightbox-arrow' ).css( 'display', 'block' ); activityIndicatorOff(); }
        });


        //  WITH NAVIGATION & ACTIVITY INDICATION

        var selectorE = 'a[data-imagelightbox="e"]';
        var instanceE = $( selectorE ).imageLightbox(
        {
            onStart:     function() { navigationOn( instanceE, selectorE ); },
            onEnd:       function() { navigationOff(); activityIndicatorOff(); },
            onLoadStart: function() { activityIndicatorOn(); },
            onLoadEnd:   function() { navigationUpdate( selectorE ); activityIndicatorOff(); }
        });

*/
        //  ALL COMBINED

        var offsetH = $('#bx-pager').length ? 180 : 0;

        app_shop.vars.selectorF = 'a[data-imagelightbox="f"]';
        app_shop.vars.instanceF = $( app_shop.vars.selectorF ).imageLightbox(
        {   
            heightOffset: offsetH,
            showWrapper:    true,
            onStart:        function() { app_shop.vars.instanceF.resetLightbox(); overlayOn(); closeButtonOn( app_shop.vars.instanceF ); arrowsOn( app_shop.vars.instanceF, app_shop.vars.selectorF ); thumbnailsOn( app_shop.vars.instanceF, app_shop.vars.selectorF );},
            onEnd:          function() { overlayOff(); closeButtonOff(); arrowsOff(); thumbnailsOff(); activityIndicatorOff(); },
            onLoadStart:    function() { activityIndicatorOn(); },
            onLoadEnd:      function() { activityIndicatorOff(); $( '.imagelightbox-arrow' ).css( 'display', 'block' ); }
        });

    });