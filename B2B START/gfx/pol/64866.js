/* file=64866.js; addToHead=y; */
var doSet       = "##iai_templ::txt:64866:contact_js_txt_1:iai_templ##"
var doSetL      = "##iai_templ::txt:64866:contact_js_txt_2:iai_templ##"
var doSetB      = "##iai_templ::txt:64866:contact_js_txt_3:iai_templ##"

$(document).ready(function() {
    if ( typeof mapHideContact != 'undefined' )
    {
        if ( typeof mapSiteType != 'undefined' && mapHideContact == '')
            if ( mapSiteType == 'contact' )
            {
                contact_map.loadGoogleMapsAPI(contact_map.mapInit);
            }
    }
});

var contact_map = {
    geokoder : 0,
    mapa: 0,
    zoom: 0,
    markerInfo: 0,
    language : 0,
    markerInfo: 0,
    timeout : 0,
    markerIcon: 0,
    loadNavBool: false,
    loadMapBool: false,
    google_api_key: '',
    /*
    loadGoogleMapsAPI : function(callback) {
        $.getScript("http://www.google.com/jsapi", function()
        {
            contact_map.language = contactLanguage;
            google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+contact_map.language+''});
        }); 
    },*/
    
    loadGoogleMapsAPI : function(callback) {
        if ( ( parent.location.protocol + '//' ) == 'https://' )
            $.getScript("https://www.google.com/jsapi", function()
            {
                contact_map.language = contactLanguage;
                google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});
            }); 
        else if ( ( parent.location.protocol + '//' ) == 'http://' )
            $.getScript("http://www.google.com/jsapi", function()
            {
                contact_map.language = contactLanguage;
                google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});
            }); 
    },
    
    mapInit: function() {
        contact_map.zoom = contactZoom; 
        contact_map.geokoder            = new google.maps.Geocoder(); 

        var wspolrzedne     = new google.maps.LatLng(parseInt(bCordContact),parseInt(lCordContact));                    // wspolrzedne od jakich startuje mapa
        // animacja markera
        if ( markersAnimationContact != '' )
            markersAnimationContact = true;
        else
            markersAnimationContact  = false;
        if ( markerContactCustomIcon != '' )
            markerContactCustomIcon = true;
        else
            markerContactCustomIcon  = false;
        // styl mapy
        if ( mapTypeContact  == 'ROADMAP')
            var mapStyle = google.maps.MapTypeId.ROADMAP
        else if ( mapTypeContact     == 'SATELLITE' )
            var mapStyle = google.maps.MapTypeId.SATELLITE
        else if ( mapTypeContact     == 'HYBIRD' )
            var mapStyle = google.maps.MapTypeId.HYBRID
        else if ( mapTypeContact     == 'TERRAIN' )
            var mapStyle = google.maps.MapTypeId.TERRAIN
        else
            var mapStyle = google.maps.MapTypeId.ROADMAP        
        // kontrolka nawigacji
        if ( navControlContact   != '' )
            navControlContact    = true;
        else
            navControlContact    = false;
        // kontrolka zmiany typu mapy
        if ( mapTypeControlContact   != '' )
            mapTypeControlContact    = true;
        else
            mapTypeControlContact    = false;       
        // kontrolka skali mapy
        if ( scControlContact    != '' )
            scControlContact     = true;
        else
            scControlContact     = false;       
        // styl kontrolki nawigacji
        if ( controlTypeContact  == 'ZOOM_PAN')
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN
        else if ( controlTypeContact     == 'SMALL' )
            var controlStyle     = google.maps.NavigationControlStyle.SMALL
        else if ( controlTypeContact == 'ANDROID' )
            var controlStyle     = google.maps.NavigationControlStyle.ANDROID
        else
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN
            
        // styl kontrolki nawigacji
        if ( mapTypeControlStyleContact  == 'DROPDOWN_MENU')
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU
        else if ( mapTypeControlStyleContact     == 'HORIZONTAL_BAR' )
            var TypeControltyle = google.maps.MapTypeControlStyle.HORIZONTAL_BAR
        else
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU    
    
        // customowa ikona
        if ( $('img.marker_face').attr('src') != '' && markerContactCustomIcon ) 
        {
            var markerIconSize = new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());
            var punkt_startowy = new google.maps.Point(0,0);
            var punkt_zaczepienia = new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));
            contact_map.markerIcon =  new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize, punkt_startowy, punkt_zaczepienia);
        }
        // opcje mapy

        if(window['google_map_style_array']){
            var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: contact_map.zoom,
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlContact,
                mapTypeControl: mapTypeControlContact,
                scaleControl: scControlContact,
                styles: google_map_style_array,
                navigationControlOptions:
                {
                    style: controlStyle
                },
                mapTypeControlOptions:
                {
                    style: TypeControlStyle
                }
            };

        }else{
            var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: contact_map.zoom,
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlContact,
                mapTypeControl: mapTypeControlContact,
                scaleControl: scControlContact,
                navigationControlOptions:
                {
                    style: controlStyle
                },
                mapTypeControlOptions:
                {
                    style: TypeControlStyle
                }
            };
        }

        
        
        contact_map.mapa = new google.maps.Map(document.getElementById("contact_map"), mapOptions);
        markerInfo = new google.maps.InfoWindow();
    
        // jesli wczytal mape
        google.maps.event.addListener(contact_map.mapa, 'idle', function() {
            if ( !contact_map.loadMapBool ) {
                $('span.loadingMap').text($('span.loadingNav').text());
                contact_map.loadMapBool  = true;
            }
        });
    
        google.maps.event.addListener(contact_map.mapa, 'tilesloaded', function() {
            if ( !contact_map.loadNavBool ) {
                var firmName    = $.trim($('div.contact_contact_left h3').text());
                var name        = $.trim($('#contact_contact_shopshortname').text());
                var street      = $.trim($('#contact_contact_street').text());
                var city        = $.trim($('#contact_contact_city').text());    
                var country     = $.trim($('#contact_contact_country').text());
                if ( doSet !='' )
                    contact_map.setAddress(firmName, name, street, city,country,doSetL,doSetB); 
                else if ( doSet == '' )
                    contact_map.findAddress(firmName, name, street, city,country);  
                contact_map.loadNavBool  = true;
            }           
        });
        
    },
    setAddress: function (firmName, name, street, city, country, A, B) {
        $('span.loadingMap').text($('span.loadingAdres').text());
        var adres= street +' , ' + city + ' , ' + country ;
        // dymek
        var content =   '<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">' + firmName + 
                        '</span><span class="dymekAddress">' + street +
                        '</span><span class="dymekCityName">' + city + 
                        '</span><span class="dymekCountryName">' + country +'</div>';
        contact_map.staticPoint  = new google.maps.LatLng(A,B);
        contact_map.mapa.setCenter( contact_map.staticPoint);                                   // ustaw mape w miejscu wyszukanego adresu
        var opcjeMarkera = {title: firmName};                                                       // opcje markera - tytul
        opcjeMarkera.position =     contact_map.staticPoint;
        opcjeMarkera.map = contact_map.mapa;                                                        // opcje markera - mapa do ktorej przypisac marker
                
        if (markersAnimationContact)                                                                // jesli zostal wpisany literal animacji markera
            opcjeMarkera.animation = google.maps.Animation.DROP;                                    // uruchom animacje markera
        if ( $('img.marker_face').attr('src') != '' && markerContactCustomIcon  )                   // jesli jest ikona customowa
        {
            opcjeMarkera.icon = contact_map.markerIcon;                                             // przypisz ja do markera
        }           
                
        var marker = new google.maps.Marker(opcjeMarkera);                                          // definicja nowego markera
        markerInfo.setContent(content);                                                             // przypisz dymek
        markerInfo.setPosition(marker.getPosition());                                               // ustal pozycje
        markerInfo.open(contact_map.mapa);                                                          // otworz dymek
        google.maps.event.addListener(marker,'click',function(zdarzenie)                            // jesli kliknie na marker
        {
            markerInfo.open(contact_map.mapa);                                                      // otworz marker
        }); 
        setTimeout(function() {$('div.loadingMap').fadeOut('normal', function() {}); }, contact_map.timeout); // jak wyszukal zamknij loader
    
    },
    findAddress: function (firmName, name, street, city, country) {
        
        $('span.loadingMap').text($('span.loadingAdres').text());
        var adres= street +' , ' + city + ' , ' + country ;
        contact_map.geokoder.geocode({address: adres}, function(wyniki, status)
        {
            if(status == google.maps.GeocoderStatus.OK)
            {
                // dymek
                var content = '<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">' + firmName + 
                                     '</span><span class="dymekAddress">' + street +
                                     '</span><span class="dymekCityName">' + city + 
                                     '</span><span class="dymekCountryName">' + country +'</div>';

                contact_map.mapa.setCenter(wyniki[0].geometry.location);                                    // ustaw mape w miejscu wyszukanego adresu
                var opcjeMarkera = {title: firmName};                                                       // opcje markera - tytul
                opcjeMarkera.position = wyniki[0].geometry.location;                                        // opcje markera - pozycja
                opcjeMarkera.map = contact_map.mapa;                                                        // opcje markera - mapa do ktorej przypisac marker
                
                if (markersAnimationContact)                                                                // jesli zostal wpisany literal animacji markera
                    opcjeMarkera.animation = google.maps.Animation.DROP;                                    // uruchom animacje markera
                if ( $('img.marker_face').attr('src') != '' && markerContactCustomIcon  )                   // jesli jest ikona customowa
                {
                    opcjeMarkera.icon = contact_map.markerIcon;                                             // przypisz ja do markera
                }           
                
                var marker = new google.maps.Marker(opcjeMarkera);                                          // definicja nowego markera
                markerInfo.setContent(content);                                                             // przypisz dymek
                markerInfo.setPosition(marker.getPosition());                                               // ustal pozycje
                markerInfo.open(contact_map.mapa);                                                          // otworz dymek
                google.maps.event.addListener(marker,'click',function(zdarzenie)                            // jesli kliknie na marker
                {
                    markerInfo.open(contact_map.mapa);                                                      // otworz marker
                }); 
                setTimeout(function() {$('div.loadingMap').fadeOut('normal', function() {}); }, contact_map.timeout); // jak wyszukal zamknij loader
            }
            else if ( status == google.maps.GeocoderStatus.OVER_QUERY_LIMIT )                               // jesli nie dal rady wyszukac
            {
                contact_map.timeout +=50;                                                                   // zwieksz czas czekana na odpowiedz
                setTimeout(function() { skoczDoAdresuContact(firmName, name, street, city,country); }, contact_map.timeout);    // odszukaj ponownie
            }
            else 
            {
                setTimeout(function() {$('div.loadingMap').fadeOut('normal', function() {}); }, contact_map.timeout); // jak nie wyszukal zamknij loader
            }       
                
        });
    },
    
    showMap : function () {
        if ( typeof mapSiteType != 'undefined' )
            if ( mapSiteType == 'contact' )
            {
                $('#contact_contact a.show_on_map').hide();
                $('#contact_contact div.contact_map_all').slideToggle('fast', function() {

                    var loadingMapWidth     = $('div.loadingMap').width()/2;
                    var loadingMapHeight    = $('div.loadingMap').height()/2;
                    var loadingBoxWidth     = $('div.loadingBox').width()/2;
                    var loadingBoxHeight    = $('div.loadingBox').height()/2;

                    var loadingBoxLeft      = loadingMapWidth - loadingBoxWidth;
                    var loadingBoxTop       = loadingMapHeight - loadingBoxHeight;

          contact_map.google_api_key = google_api_key;

                    $('div.loadingBox').css('left',loadingBoxLeft);
                    $('div.loadingBox').css('top',loadingBoxTop);                   
                    $('div.loadingBox').fadeTo('normal', 1.0, function() {});
                    $('#contact_contact div.contact_map_all').fadeTo('normal', 1.0, function() {
                        contact_map.loadGoogleMapsAPI(contact_map.mapInit);
                    });
                });
            }
    }
}