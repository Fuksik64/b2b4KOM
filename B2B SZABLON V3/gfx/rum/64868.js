/* file=64868.js; addToHead=y; */

var stocks_sites = {
    geokoder: 0,                                                                                                    // zmienia dla geokodera    
    mapa: 0,                                                                                                        // mapka :)
    loadNavBoolPickup : false,                                                                                      // czy zaladowano nawigacje mapy
    zoom: 0,                                                                                                        // zmienna w zewnetrznym js, definiujaca wartosc zooma
    markerIcon: 0,                                                                                                  // zmienna na ikone markera
    language : 0,                                                                                                   // jezyk mapy, zmienna w zew js
    timeout : 0,                                                                                                    // czas pracy wyszukiwania ( delay )
    stocksCount : 0,                                                                                                // licznik wszystkich stocks
    stocksIteration : 0,                                                                                            // iteracja po stocks
    pickupFind: 0,                                                                                                  // liczba znalezionych
    markersArray : [],                                                                                              // tablica na markery
    contentsArray : [],                                                                                             // tablica na dymki markerow
    markerInfo: 0,                                                                                                  // dymek markera
    markerAnimation : false,                                                                                        // czy ma być animacja markera
    google_api_key : '',                                                                

    // ladowanie skyptow google maps
    /*
    loadGoogleMapsAPI : function(callback) {
        $.getScript("http://www.google.com/jsapi", function()
        {
            stocks_sites.language = stocksLanguage;
            google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+stocks_sites.language+''});
        }); 
    },*/
    
    loadGoogleMapsAPI : function(callback) {
        if ( ( parent.location.protocol + '//' ) == 'https://' )
            $.getScript("https://www.google.com/jsapi", function()
            {
                stocks_sites.language = stocksLanguage;
                google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+stocks_sites.language+'&key='+stocks_sites.google_api_key});
            }); 
        else if ( ( parent.location.protocol + '//' ) == 'http://' )
            $.getScript("http://www.google.com/jsapi", function()
            {
                stocks_sites.language = stocksLanguage;
                google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+stocks_sites.language+'&key='+stocks_sites.google_api_key});
            }); 
    },

    // definicja mapy
    mapInit: function() {
        stocks_sites.zoom = stocksZoom; 
        stocks_sites.geokoder           = new google.maps.Geocoder();                                               // inicjalizacja geokodera
        var wspolrzedne     = new google.maps.LatLng(parseInt(bCordStocks),parseInt(lCordStocks));                  // wspolrzedne od jakich startuje mapa
        // animacja markera
        if ( markersAnimationStocks != '' )
            stocks_sites.markerAnimation = true;
        else
            stocks_sites.markerAnimation  = false;
        if ( markerStocksCustomIcon != '' )
            markerStocksCustomIcon = true;
        else
            markerStocksCustomIcon  = false;
        // styl mapy
        if ( mapTypeStocks == 'ROADMAP')
            var mapStyle = google.maps.MapTypeId.ROADMAP
        else if ( mapTypeStocks == 'SATELLITE' )
            var mapStyle = google.maps.MapTypeId.SATELLITE
        else if ( mapTypeStocks == 'HYBRID' )
            var mapStyle = google.maps.MapTypeId.HYBRID
        else if ( mapTypeStocks == 'TERRAIN' )
            var mapStyle = google.maps.MapTypeId.TERRAIN
        else
            var mapStyle = google.maps.MapTypeId.ROADMAP        
        // kontrolka nawigacji
        if ( navControlStocks != '' )
            navControlStocks = true;
        else
            navControlStocks = false;
        // kontrolka zmiany typu mapy
        if ( mapTypeControlStocks != '' )
            mapTypeControlStocks = true;
        else
            mapTypeControlStocks = false;       
        // kontrolka skali mapy
        if ( scControlStocks != '' )
            scControlStocks = true;
        else
            scControlStocks = false;        
        // styl kontrolki nawigacji
        if ( controlTypeStocks == 'ZOOM_PAN')
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN
        else if ( controlTypeStocks == 'SMALL' )
            var controlStyle = google.maps.NavigationControlStyle.SMALL
        else if ( controlTypeStocks == 'ANDROID' )
            var controlStyle = google.maps.NavigationControlStyle.ANDROID
        else
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN
        // styl kontrolki nawigacji
        if ( mapTypeControlStyleStocks == 'DROPDOWN_MENU')
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU
        else if ( mapTypeControlStyleStocks == 'HORIZONTAL_BAR' )
            var TypeControltyle = google.maps.MapTypeControlStyle.HORIZONTAL_BAR
        else
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU    
        
        // sprawdza czy customowy marker
        if ( $('img.marker_face').attr('src') != '' && markerStocksCustomIcon  ) 
        {
            var markerIconSize = new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());                                          // rozmiar ikony markera
            var punkt_startowy = new google.maps.Point(0,0);                                                                                                // punkt startowy
            var punkt_zaczepienia = new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));              // punkt zaczepienia
            stocks_sites.markerIcon =  new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize, punkt_startowy, punkt_zaczepienia);     // definicja nowego markera
        }
        
        
        if(window['google_map_style_array']){
            // opcje mapy
        var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: stocks_sites.zoom,                    
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlStocks,
                mapTypeControl: mapTypeControlStocks,
                scaleControl: scControlStocks,
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
            // opcje mapy
        var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: stocks_sites.zoom,                    
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlStocks,
                mapTypeControl: mapTypeControlStocks,
                scaleControl: scControlStocks,
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

        stocks_sites.mapa = new google.maps.Map(document.getElementById("stocks_map"), mapOptions);             // przypisanie mapy do obiektu o ID = "stocks_map"
        stocks_sites.markerInfo = new google.maps.InfoWindow();                                                 // definicja informacji dla markerow
        
        google.maps.event.addListener(stocks_sites.mapa, 'idle', function() {                                   // gdy wczytano mape
                $('span.loadingMap').text($('span.loadingNav').text());                                         // pokazuje tekst o wczytywaniu nawigacji               
        });
        google.maps.event.addListener(stocks_sites.mapa, 'tilesloaded', function() {                            // gdy wczytano nawigacje       
                    if ( !pickup_sites.loadNavBoolPickup ) {        
                        pickup_sites.loadNavBoolPickup = true;                                                  // flaga ze wczytano nawigacje
                        stocks_sites.showStocks();                                                              // rozpocznij szukanie stocks
                    }
        });
    },
    
    // pokazywanie stockow na mapie
    showStocks: function() {
        if ( $('div.stocks_list_sub').children().length )                                                       // sprawdzenie czy mamy jakies stocks
        {
            stocks_sites.stocksCount = $('div.stocks_list_sub').children().length;                              // liczba wszystkich stocks     
            $('span.loadingMap').hide();                                                                        // chowanie paska ladowania nawigacji
            $('span.loadingMarkers').css('display','block');                                                    // pokazywanie paska ladowania markerow
            $('span.loadingMarkersCount').text(stocks_sites.stocksCount);                                       // pokazywanie ile jest
            $('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);                                // pokazywanie ile znalazl
            
            $('div.stocks_list_sub div.stocks_list_wrapper').each(function(index) {                             // petla po wszystkich stocks_wrapper
                var obj         = $(this);
                var headerText  = $.trim($(this).find('a.stocks_list_name').text());                            // naglowek stocka
                var streetText  = $.trim($(this).find('span.stocs_list_street').text());                        // ulica stocka
                var cityText    = $.trim($(this).find('span.stocs_list_city').text());                          // miasto i kod pocztowy stocka 
                var moreText    = $.trim($(this).find('a.stocks_list_more').text());                            // tekst do linka
                var moreLink    = $.trim($(this).find('a.stocks_list_more').attr('href'));                      // adres linka
                stocks_sites.findAdres(obj,headerText, streetText,cityText, moreText, moreLink);                    // szukamy markerow 
            });
            
        }
        else                                                                                                    // jesli nie
            $('div.loadingMap').fadeOut('normal', function() {});                                               // zamykamy loadera
    },
    
    // wyszukaj markery
    findAdres: function (obj,headerText, streetText,cityText, moreText, moreLink) {
    
        var adres = streetText + ' , ' + cityText;                                                              // adres do odszukania 
        stocks_sites.geokoder.geocode({address: adres}, function(wyniki, status)                                // geokodowanie adresu
        {
            if(status == google.maps.GeocoderStatus.OK)                                                         // jesli adres odnaleziony
            {
                stocks_sites.timeout = 100;                                                                     // czas synchronicznego wyszukiwania
                stocks_sites.pickupFind++;
                stocks_sites.stocksIteration++;                                                                 // zmien status wyszukiwanego
                // tworzenie dymku
                var content = '<div class="dymekWrapper"><span class="stocks_name">' + headerText + 
                              '</span><span class="stocks_street">' + streetText + '</span><span class="stocks_city">' + cityText + 
                              '</span><a class="stocks_link" title="Zobacz szczegółowe informacje" href="' + moreLink +'">' + moreText +
                              '</a></div>';
                    
                stocks_sites.contentsArray.push(content);                                                       // wrzuc dymek do tablicy dymkow                            
                //stocks_sites.mapa.setCenter(wyniki[0].geometry.location);                                     // ustaw mape na odnalezionym punkcie
                var opcjeMarkera = {title: headerText};                                                         // definicja opcji nowego markera
                //opcjMarkera.animation = google.maps.Animation.DROP;
                opcjeMarkera.position = wyniki[0].geometry.location;                                            // pozycja nowego markera
                opcjeMarkera.map = stocks_sites.mapa;                                                           // do ktorej mapy przypisac
                if (stocks_sites.markerAnimation)                                                               // jesli zostal wpisany literal animacji markera
                    opcjeMarkera.animation = google.maps.Animation.DROP;                                        // uruchom animacje markera
                if ( $('img.marker_face').attr('src') != '' && markerStocksCustomIcon  )                        // jesli jest ikona customowa
                {
                    opcjeMarkera.icon = stocks_sites.markerIcon;                                                // przypisz ja do markera
                }
                var marker = new google.maps.Marker(opcjeMarkera);                                              // definicja nowego markera

                stocks_sites.markersArray.push(marker);                                                         // dodanie markera do tablicy markerow
                $(obj).attr('rel',stocks_sites.pickupFind);                                                     // przypisanie releka, numer znalezionego
                $(obj).find('a.show_stock_on_map').addClass('find');                                            // dodanie do buttona klasy "find"
                
                google.maps.event.addListener(marker,'click',function(zdarzenie)                                // zdarzenie nasluchujace clicka na marker
                {
                        stocks_sites.markerInfo.setContent(content);                                            // przypisz dymek do markera
                        stocks_sites.markerInfo.setPosition(marker.getPosition());                              // ustaw pozycje dymku
                        stocks_sites.markerInfo.open(stocks_sites.mapa);                                        // pokaz dymek
                });                                      
                                
                if ( stocks_sites.stocksIteration <= stocks_sites.stocksCount )                                 // jesli nadal szuka
                    $('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);                        // zwieksza wartosc pokazywanego postepu
                
                if ( stocks_sites.stocksIteration >= stocks_sites.stocksCount )                                 // jesli przeszedl po wszystkich punktach
                {
                    setTimeout(function() { $('div.loadingMap').fadeOut('normal', function() {}); }, stocks_sites.timeout);     // wylacz loading z opoznieniem
                    $('div.stocks_list_wrapper a.find').fadeTo('normal', 1.0, function() {});                   // pokaz buttony dla odnalezionych
                }
            }
            else if ( status == google.maps.GeocoderStatus.OVER_QUERY_LIMIT )                                   // jesli adres nie zostal odnaleziony z powodu zbyt szybkiego czasu wyslania zapytania
            {
                stocks_sites.timeout +=50;                                                                      // zwieksz czas wysylania zapytania
                setTimeout(function() {  stocks_sites.findAdres(obj,headerText, streetText,cityText, moreText, moreLink) ; }, stocks_sites.timeout);    // jeszcze raz wykonaj szukanie z opoznieniem
            }
            else                                                                                                // jesli adres nie zostal znaleziony bo jest niepoprawny
            {
                stocks_sites.timeout = 100; 
                stocks_sites.stocksIteration++;                                                                 // zmien status wyszukiwanego
                if ( stocks_sites.stocksIteration <=stocks_sites.stocksCount )                                  // jesli nadal szuka
                    $('span.loadingMarkersComplete').text(stocks_sites.stocksIteration);                        // zwieksza wartosc pokazywanego postepu
                if ( stocks_sites.stocksIteration >= stocks_sites.stocksCount )                                 // jesli przeszedl po wszystkich punktach
                {
                    setTimeout(function() { $('div.loadingMap').fadeOut('normal', function() {}); }, stocks_sites.timeout);     // wylacz loading z opoznieniem 
                    $('div.stocks_list_wrapper a.find').fadeTo('normal', 1.0, function() {});                   // pokaz buttony dla odnalezionych
                }
            }
        }); 
    },  
    // aktywacja dymkow markerow
    markerOnClick: function(obj) {
        $('html, body').animate({ scrollTop: 0 }, 'normal');
        if ($(obj).parent().parent().attr('rel') !== undefined )                                                // jesli stock zostal odnaleziony ( posiada rel )
        {
            var index = parseInt($(obj).parent().parent().attr('rel'));                                         // pobierz wartosc releka
            stocks_sites.markerInfo.setContent(stocks_sites.contentsArray[index-1]);                            // ustaw dymek
            stocks_sites.markerInfo.setPosition(stocks_sites.markersArray[index-1].getPosition());              // pobierz pozycje
            stocks_sites.markerInfo.open(stocks_sites.mapa);                                                    // pokaz
        }   
    }
}


$(document).ready(function() {
if(! $('div.stocks_page').size() ) {
 return false;
}

    // JESLI STOCKS_SITE
    if ( typeof mapSiteType != 'undefined' && google_api_key!='')                                                                   // jesli zmienna wystepuje
        if ( mapSiteType == 'stocks_site' )                                                                     // i ma wartosci "stocks_site"
        {
            var loadingMapWidth     = $('div.loadingMap').width()/2;
            var loadingMapHeight    = $('div.loadingMap').height()/2;
            var loadingBoxWidth     = $('div.loadingBox').width()/2;
            var loadingBoxHeight    = $('div.loadingBox').height()/2;
            var loadingBoxLeft      = loadingMapWidth - loadingBoxWidth;
            var loadingBoxTop       = loadingMapHeight - loadingBoxHeight;
      
            stocks_sites.google_api_key     = google_api_key;


            $('div.loadingBox').css('left',loadingBoxLeft);
            $('div.loadingBox').css('top',loadingBoxTop);   
            $('div.loadingBox').fadeTo('normal', 1.0, function() {});
            stocks_sites.loadGoogleMapsAPI(stocks_sites.mapInit);                                               // uruchom mechanizm wyszukiwania
        }
});