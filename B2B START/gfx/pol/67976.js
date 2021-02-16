/* file=67976.js; addToHead=y; */
var pickupl_alert       = "Nie wybrano punktu odbioru"
var pickupl_alertPoczta         = "Nie wybrano urzędu pocztowego"
var pickupl_linktxt     = "więcej informacji"
var pickupl_linktitle   = "Zobacz szczegółowe informacje"
var pickupl_requires_client_number       = "Nie wprowadzono kodu Postnummer."

//TODO wyłączyć generowanie HTML dla mapy gdy nie jest potrzebana
        function init_pickupl_calendar() {


            $("#pickupl_calbind").datepicker({
                dateFormat: iaical_dateFormat,
                dayNamesMin: iaical_daysShort,
                defaultDate: pickup_sites.calendar.Seldate,
                beforeShowDay: shopCalendar.setHolidays,
                minDate: pickup_sites.calendar.Mindate,
                monthNames: iaical_monthNames,
                nextText: iaical_monthNext,
                prevText: iaical_monthPrev,
                onSelect: pickup_sites.setTime,
                firstDay: iaical_firstDay,
                altField: '#calendar_date_select_7 input.pickupl_radio'
            }).hide();
            $("#calendar_date_select_8 div.pickupl_date_sub").click(function () {
                $("#pickupl_calbind").show(pickupl_animspeed);
            });
        }

var pickup_sites = {
    geokoder: 0, // zmienia dla geokodera
    mapa: 0, // mapka :)
    zoom: 0, // zmienna w zewnetrznym js, definiujaca wartosc zooma
    markerIcon: 0, // zmienna na ikone markera
    language: 0, // jezyk mapy, zmienna w zew js
    markersArray: [], // tablica na markery proponowanych paczkomatow
    contentsArray: [], // tablica na opisy proponowanych paczkomatow
    markersArrayOther: [], // tablica na markery z listy pozostalych paczkomatow
    contentsArrayOther: [], // tablica na opisy z listy pozostalych paczkomatow
    markerInfo: 0, // dymek markera
    timeout: 0, // czas pracy wyszukiwania ( delay )
    loadNavBoolPickup: false, // czy zaladowano nawigacje mapy
    pickupCount: 0, // licznik wszystkich proponowanych paczkomatow
    pickupIteration: 0, // iteracja po proponowanych paczkomatach
    pickupFind: 0,
    pickupFirstActive: true,
    pickupListActive: false,
    pickupFindTmp: 0,
    pickupFindOther: 0,
    firstFind: true,
    chosen: 0,
    depth: 2,
    tempid: "ps_other",
    calendar: {},
    pickupOtherFind: false,
    markerOtherLast: 0,
    contentOtherLast: 0,
    markerAnimation: 0,
    pickupsType: 0,
    google_api_key: '',
    checkForm: function () {
      var obj = $('input[name=requires_client_number]');
      if ( obj.size() && !obj.prop('disabled') && obj.val()==='' ) {
          Alertek.show_alert(pickupl_requires_client_number);
          return false;
      }

        if (pickup_sites.chosen == 0) {
            Alertek.show_alert(pickupl_alert);
            return false;
        }

        return true;
    },
    fillInp: function (wart) {
        $("#pickup_list_point").val(wart);
    },
    chooseSite: function (idek, other, alone) {

        pickup_sites.buttonNextActivate();


        pickup_sites.hideOther();


        if (other == 'none') {

            var wart = typeof $("#" + idek).attr("data-stockid") !== "undefined" ? $("#" + idek).attr("data-stockid") : idek.slice(3);

            // jesli proponowany paczkomat
            if ($("#" + idek).attr("value") != "ps_other") {
                $(".pickupl_site").removeClass("psl_selected");
                $("#" + idek).addClass("psl_selected");
                pickup_sites.fillInp(wart);
                // jesli punkt zostal znaleziony, aktywny na klik markera
                if ($("#" + idek).attr('rel') !== undefined) {
                    var num = $("#" + idek).attr('rel');
                    //if ( alone !='alone');
                    pickup_sites.markerOnClickPickup(num);
                }
                // jesli nie znaleziony, na clicku wylacza dymki
                else {
                    if (pickup_sites.loadNavBoolPickup)
                        pickup_sites.markerInfo.close(pickup_sites.mapa);
                }
            } else if ($("#" + idek).attr("value") == "ps_other") {
// zmienione

                if ($("#" + idek).attr("data-stockid")) {
                    pickup_sites.fillInp($("#" + idek).attr("data-stockid"));
                } else {
                    pickup_sites.fillInp('');
                }




                if (!pickup_sites.pickupOtherFind) {
                    pickup_sites.deactivate();
                }



                $(".pickupl_site").removeClass("psl_selected");
                $("#" + idek).addClass("psl_selected");

                if (idek != "ps_other" && !$("#" + idek).hasClass("lastOther")) {
                    var relek = parseInt($("#" + idek).attr("rel"));
                    if (pickup_sites.loadNavBoolPickup)
                        pickup_sites.markerOnClickOther(relek);
                } else if (idek != "ps_other" && $("#" + idek).hasClass("lastOther")) {
                    if (pickup_sites.loadNavBoolPickup)
                        pickup_sites.markerOnClickLast();
                }
                // wylacz aktywne dymki w proponowanych
                if (!pickup_sites.pickupListActive && idek == "ps_other") {
                    if (pickup_sites.loadNavBoolPickup)
                        pickup_sites.markerInfo.close(1);
                }

                // pokaz liste z wyborami
                pickup_sites.showOther();
            }
        } else if (other != 'none') {
            eval($(other).val(), 0);
            if ($(other).attr("rel") !== undefined) {
                var relek = parseInt($(other).attr("rel"));
                pickup_sites.markerOnClickOther(relek);
            }

            $("option" + other).attr('selected', 'selected');

        }

    },
    showOther: function () {
        $('.pickupl_other').show();
        if (pickup_sites.depth > 2) {
            $('div#pickpupl_region').show();
            $("#pickpupl_country").show();
            $("#pickupl_countrysel").show();
            $("#pickpupl_region").show();
            $("#pickupl_regionsel").show();

        } else {
            $("#pickpupl_city").show();
            $("#pickupl_sel_1").show();
        }
    },
    hideOther: function () {
        $('.pickupl_other').hide();
    },
    showSel: function (obj, idek, flag) {

        // resetuj ustawienie selectow
        //$('select.pickupl_sel_eval').each(function(){          $(this).get(0).selectedIndex = 0;        })
        pickup_sites.deactivate();

        // zapamietywanie ostatniego wybranego
        if (pickup_sites.pickupOtherFind) {
            $('div.pickupl_site').each(function (index) {
                if ($(this).attr("value") == 'ps_other') {
                    if ($(this).attr("rel") !== undefined) {
                        $(this).addClass("lastOther");
                        var relek = parseInt($(this).attr("rel")) - 1;
                        pickup_sites.contentOtherLast = pickup_sites.contentsArrayOther[relek];
                        var opcjeMarkera = {
                            title: pickup_sites.markersArrayOther[relek].getTitle()
                        };
                        opcjeMarkera.position = pickup_sites.markersArrayOther[relek].getPosition()
                        opcjeMarkera.map = pickup_sites.mapa;
                        if ($('img.marker_face').attr('src') != '' && markerPickupsCustomIcon) {
                            opcjeMarkera.icon = pickup_sites.markerIcon;
                        }

                        pickup_sites.markerOtherLast = new google.maps.Marker(opcjeMarkera);
                        google.maps.event.addListener(pickup_sites.markerOtherLast, 'click', function (zdarzenie) {
                            pickup_sites.chooseSite($("div.lastOther").attr('id'), 'none', 'none');
                        });

                    }
                }
            });

            pickup_sites.pickupOtherFind = false;
        } else {



        }

        if (idek == "deact") {
            pickup_sites.deactivate();
            return false;
        }
        $("#" + idek).show();

        $("#" + idek).siblings(".pickupl_sel").hide();
        $("#" + idek).parent("div.pickupl_sel").show();


        if ($(obj).attr("id") != 'pickupl_countrysel' && $(obj).attr("id") != 'pickupl_regionsel') {
            // pokazywanie postepu
            pickup_sites.pickupCount = $("#" + idek).children('option.pickup_info').length
            pickup_sites.pickupIteration = 0;
            $('div.loadingMap').fadeIn('normal', function () {
            });
            $('span.loadingMap').hide();
            $('span.loadingMarkers').css('display', 'block');
            $('span.loadingMarkersCount').text(pickup_sites.pickupCount);
            $('span.loadingMarkersComplete').text(pickup_sites.pickupIteration);


            // jesli wybrany z listy to za kazdy razem gdy wybierasz usuwaj poprzednie
            if (pickup_sites.markersArrayOther != '') {
                for (var i = pickup_sites.pickupFindOther - 1; i >= 0; i--) // petla po nowej tablicy markerow paczkomatow z listy
                {
                    pickup_sites.markersArrayOther[i].setMap(null)
                }
                pickup_sites.markersArrayOther = [];
                pickup_sites.contentsArrayOther = [];
                pickup_sites.pickupFindOther = 0;
            }

            // petla po wszystkich paczkomatach z wybranego miasta
            ///////////

            var adresData = []
            $("#" + idek).children('option.pickup_info').each(function (index) {

                var relIdx = '#wrapper_' + $(this).attr("id");


                adresData[index] = {};

                adresData[index].idek = '#' + $(this).attr("id");
                adresData[index].headerText = $.trim($(relIdx).find('span.pickupl_sel_name').text());
                adresData[index].streetText = $.trim($(relIdx).find('span.pickupl_sel_street').text());
                adresData[index].cityText = $.trim($(relIdx).find('span.pickupl_sel_city').text());
                adresData[index].moreText = $.trim($(relIdx).find('a.pickupl_sel_link').text());
                adresData[index].moreLink = $.trim($(relIdx).find('a.pickupl_sel_link').attr('href'));
                adresData[index].infoText = $.trim($(relIdx).find('span.pickupl_site_info').text());
                adresData[index].timeText = $.trim($(relIdx).find('span.pickupl_site_time').text());
                adresData[index].latitude = $.trim($(relIdx).find('span.pickupl_sel_latitude').text());
                adresData[index].longitude = $.trim($(relIdx).find('span.pickupl_sel_longitude').text());
            });

            var adresRow = '';
            while (adresRow = adresData.pop()) {
                if (adresRow.latitude && adresRow.longitude) {
                    pickup_sites.findAdres(adresRow.headerText, adresRow.streetText, adresRow.cityText, adresRow.moreText, adresRow.moreLink, adresRow.infoText, adresRow.timeText, 'none', 'another', false, adresRow.idek, adresRow.latitude, adresRow.longitude);
                } else {
                    (function (adresRow) {
                        setTimeout(function () {
                            pickup_sites.findAdres(adresRow.headerText, adresRow.streetText, adresRow.cityText, adresRow.moreText, adresRow.moreLink, adresRow.infoText, adresRow.timeText, 'none', 'another', false, adresRow.idek, adresRow.latitude, adresRow.longitude);
                        }, pickup_sites.timeout);
                    })(adresRow);
                }
            }

            ////////////



        }

        if (flag) {
            $("#pickpupl_site").hide()
        }
    },
    setOther: function (value, name, address, zipcode, city, link, info, time, obj) {

        pickup_sites.pickupOtherFind = true;
        if (pickup_sites.markerOtherLast != '0') {
            $('div.pickupl_site').each(function (index) {
                if ($(this).attr("value") == 'ps_other') {
                    if ($(this).attr("rel") !== undefined) {
                        $(this).removeClass("lastOther");
                    }
                }
            });

            pickup_sites.markerInfo.close(pickup_sites.mapa);
            pickup_sites.markerOtherLast.setMap(null);
            pickup_sites.markerOtherLast = 0;
            pickup_sites.contentOtherLast = 0;
        }
        var idek = '#' + obj;
        $("#" + pickup_sites.tempid).empty();
        pickup_sites.fillInp(value);
        $(".pickupl_site").removeClass("psl_selected");
        $("#" + pickup_sites.tempid).addClass("psl_selected");
        $("#" + pickup_sites.tempid).append('<div class="pickupl_site_sub"><div class="pickupl_site_header"><span class="pickupl_site_name">' + name + '</span></div><div class="pickupl_site_address">' + address + '<span class="pickupl_site_city">' + zipcode + ' ' + city + '</span></div><div class="pickupl_site_link"><a title="' + pickupl_linktitle + '" href="' + link + '" target="_blank">' + pickupl_linktxt + '</a></div><div class="pickupl_site_info">' + info + '</div><div class="pickupl_site_time">' + time + '</div></div>');
        $("#" + pickup_sites.tempid).attr("id", "ps_" + value.split('|').join('_') + "_other"); // dodane other dla rozruznienia proponowanego boksu od nowego
        pickup_sites.tempid = "ps_" + value + "_other"; // to samo co wyzej
// zmiana
        $("#" + pickup_sites.tempid).attr('data-stockid', value);

        // nadaj rel dla nowego paczkomatu
        if ($(idek).attr("rel") !== undefined) {
            var relek = $(idek).attr("rel");
            $("#" + pickup_sites.tempid).attr('rel', relek);
        }

        // nadaj klase dla nowego paczkomatu
        $("#" + pickup_sites.tempid).addClass('pickup_number_' + (pickup_sites.pickupIteration + 1));
        var className = 'div.pickup_number_' + (pickup_sites.pickupIteration + 1);
        // wyszukaj nowy paczkomat
        if (pickup_sites.firstFind) {
            pickup_sites.pickupFindTmp = pickup_sites.pickupFind;
            pickup_sites.firstFind = false;
        }


        if ($(idek).attr("rel") !== undefined) {
            var relek = $(idek).attr("rel");
            pickup_sites.markerOnClickOther(relek);
        }

    },
    printDates: function (time, stockId) {
        //shopCalendar.printDays(pickup_sites.calendar.D1,pickup_sites.calendar.M1,pickup_sites.calendar.Y1,time,'calendar_date_select_',7,pickup_sites.calendar.holi)

        var postData = {
            stock_id: stockId
        }

        $.ajax({
            type: 'GET',
            url: '/ajax/basket-delivery.php',
            data: postData,
            dataType: 'json',
            success: function (json) {

          if(!json) {
            return false;
          }


                var pickup_sites_days = '';
                var pickup_sites_month = '';
                var pickup_sites_year = '';

                var days = json;
                $.each(days, function (index, data) {
                    pickup_sites_days = parseInt(data.d);
                    pickup_sites_month = parseInt(data.m);
                    pickup_sites_year = parseInt(data.y);
                    return false;
                });

                shopCalendar.printDays(pickup_sites_days, pickup_sites_month, pickup_sites_year, time, 'calendar_date_select_', 7, pickup_sites.calendar.holi);
            },
            error: function () {
                shopCalendar.printDays(pickup_sites.calendar.D1, pickup_sites.calendar.M1, pickup_sites.calendar.Y1, time, 'calendar_date_select_', 7, pickup_sites.calendar.holi);
            }
        });

    },
    selectDate: function (obiekt) {
        obiekt.toggleClass("psselecteddate");
        obiekt.find("input").attr("checked", true);
    },
    deselectDate: function (obiekt) {
        obiekt.removeClass("psselecteddate");
        obiekt.find("input").removeAttr("checked");
    },
    chooseDate: function (obiekt) {
        pickup_sites.deselectDate($('.psselecteddate'));
        pickup_sites.selectDate(obiekt);
    },
    setTime: function (dateText, inst) {
        $("#pickupl_calbind").hide(pickupl_animspeed);
        var czas = $("#pickupl_calbind").datepicker('getDate');
        $("#calendar_date_select_7 span.pickupl_date_day").text(czas.getDate());
        $("#calendar_date_select_7 span.pickupl_date_month").text(iaical_monthNames2[parseInt(czas.getMonth())]);
        $("#calendar_date_select_7").click();
    },
    activate: function (obj, value, name, address, zipcode, city, link, info, time) {


        pickup_sites.fillInp(value);
        pickup_sites.buttonNextActivate();
        // wyszukaj nowy paczkomat
        pickup_sites.markerInfo.close(pickup_sites.mapa);
        if (typeof pickup_sites.markersArray[0] != 'undefined') {
            pickup_sites.markersArray[0].setMap(null);
        }
        //pickup_sites.findAdres(name, address,(zipcode+ ' ' + city), pickupl_linktxt, link, info, time,'none', 'other',true,'none')
        var opIdek = '#' + obj;
        if ($(opIdek).attr("rel") !== undefined) {
            var relek = $(opIdek).attr("rel")
            pickup_sites.markerOnClickOther(relek);
        }
    },
    deactivate: function () {
        pickup_sites.chosen = 0;
        $(".pickupl_submit").addClass("pickupl_idle");
    },
    buttonNextActivate: function () {
        pickup_sites.chosen = 1;
        $(".pickupl_submit").removeClass("pickupl_idle");
    },
    /*
     loadGoogleMapsAPI : function(callback) {
     $.getScript("http://www.google.com/jsapi", function()
     {
     pickup_sites.language = pickupsLanguage;
     google.load('maps', '3', { callback: callback, other_params:'sensor=false&language='+pickup_sites.language+''});
     });
     },
     */
    loadGoogleMapsAPI: function (callback) {

        var key = '';
        if (pickup_sites.google_api_key !== '') {
            key = '&key=' + pickup_sites.google_api_key;
        }


        if ((parent.location.protocol + '//') == 'https://')
            $.getScript("https://www.google.com/jsapi", function () {
                pickup_sites.language = pickupsLanguage;
                google.load('maps', '3', {
                    callback: callback,
                    other_params: 'sensor=false&language=' + pickup_sites.language + key
                });
            });
        else if ((parent.location.protocol + '//') == 'http://')
            $.getScript("http://www.google.com/jsapi", function () {
                pickup_sites.language = pickupsLanguage;
                google.load('maps', '3', {
                    callback: callback,
                    other_params: 'sensor=false&language=' + pickup_sites.language + key
                });
            });
    },
    makeClass: function () {
        // nadanie klas polecanym paczkomatom
        $('div.pickupl_proposed div.pickupl_site').each(function () {
            if ($(this).attr('id') != 'ps_other') {
                pickup_sites.pickupCount++;
                $(this).addClass('pickup_number_' + pickup_sites.pickupCount);
            }
        });

    },
    mapInit: function () {
        pickup_sites.zoom = pickupsZoom;
        // inicjalizacja mapy
        pickup_sites.geokoder = new google.maps.Geocoder();

        var wspolrzedne = new google.maps.LatLng(parseInt(bCordPickups), parseInt(lCordPickups)); // wspolrzedne od jakich startuje mapa
        // animacja markera
        if (markersAnimationPickups != '')
            pickup_sites.markerAnimation = true;
        else
            pickup_sites.markerAnimation = false;
        if (markerPickupsCustomIcon != '')
            markerPickupsCustomIcon = true;
        else
            markerPickupsCustomIcon = false;
        // styl mapy
        if (mapTypePickups == 'ROADMAP')
            var mapStyle = google.maps.MapTypeId.ROADMAP
        else if (mapTypePickups == 'SATELLITE')
            var mapStyle = google.maps.MapTypeId.SATELLITE
        else if (mapTypePickups == 'HYBRID')
            var mapStyle = google.maps.MapTypeId.HYBRID
        else if (mapTypePickups == 'TERRAIN')
            var mapStyle = google.maps.MapTypeId.TERRAIN
        else
            var mapStyle = google.maps.MapTypeId.ROADMAP

        // kontrolka nawigacji
        if (navControlPickups != '')
            navControlPickups = true;
        else
            navControlPickups = false;
        // kontrolka zmiany typu mapy
        if (mapTypeControlPickups != '')
            mapTypeControlPickups = true;
        else
            mapTypeControlPickups = false;
        // kontrolka skali mapy
        if (scControlPickups != '')
            scControlPickups = true;
        else
            scControlPickups = false;

        // styl kontrolki nawigacji
        if (controlTypePickups == 'ZOOM_PAN')
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN
        else if (controlTypePickups == 'SMALL')
            var controlStyle = google.maps.NavigationControlStyle.SMALL
        else if (controlTypePickups == 'ANDROID')
            var controlStyle = google.maps.NavigationControlStyle.ANDROID
        else
            var controlStyle = google.maps.NavigationControlStyle.ZOOM_PAN

        // styl kontrolki nawigacji
        if (mapTypeControlStylePickups == 'DROPDOWN_MENU')
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU
        else if (mapTypeControlStylePickups == 'HORIZONTAL_BAR')
            var TypeControltyle = google.maps.MapTypeControlStyle.HORIZONTAL_BAR
        else
            var TypeControlStyle = google.maps.MapTypeControlStyle.DROPDOWN_MENU


        if ($('img.marker_face').attr('src') != '' && markerPickupsCustomIcon) {
            var markerIconSize = new google.maps.Size($('img.marker_face').width(), $('img.marker_face').height());
            var punkt_startowy = new google.maps.Point(0, 0);
            var punkt_zaczepienia = new google.maps.Point(parseInt($('img.marker_face').width() / 2), parseInt($('img.marker_face').height() / 2));
            pickup_sites.markerIcon = new google.maps.MarkerImage($('img.marker_face').attr('src'), markerIconSize, punkt_startowy, punkt_zaczepienia);
        }


        if (window['google_map_style_array']) {
            var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: pickup_sites.zoom,
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlPickups,
                mapTypeControl: mapTypeControlPickups,
                scaleControl: scControlPickups,
                styles: google_map_style_array,
                navigationControlOptions: {
                    style: controlStyle
                },
                mapTypeControlOptions: {
                    style: TypeControlStyle
                }
            };
        } else {
            var mapOptions = {
                gestureHandling: 'cooperative',
                zoom: pickup_sites.zoom,
                center: wspolrzedne,
                mapTypeId: mapStyle,
                navigationControl: navControlPickups,
                mapTypeControl: mapTypeControlPickups,
                scaleControl: scControlPickups,
                navigationControlOptions: {
                    style: controlStyle
                },
                mapTypeControlOptions: {
                    style: TypeControlStyle
                }
            };
        }


        // jesli nie czekamy na wczytanie mapy to odblokuj punkt
        // todo - wyłaczyć wogle ladowanie map gdy nie ma key
        if (pickup_sites.google_api_key === '') {
            $('.pickupl_sel').removeAttr('disabled');
            $('div#ps_other').css('opacity', '1.0');
            $('div#ps_other').css('cursor', 'pointer');
        }




        pickup_sites.mapa = new google.maps.Map(document.getElementById("pickup_map"), mapOptions);
        pickup_sites.markerInfo = new google.maps.InfoWindow();


        google.maps.event.addListener(pickup_sites.mapa, 'idle', function () {
            $('span.loadingMap').text($('span.loadingNav').text());
        });

        google.maps.event.addListener(pickup_sites.mapa, 'tilesloaded', function () {

            if (!pickup_sites.loadNavBoolPickup) {
                $('.pickupl_sel').removeAttr('disabled');
                $('div#ps_other').css('opacity', '1.0');
                $('div#ps_other').css('cursor', 'pointer');
                //$('div.loadingMap').fadeOut('normal', function() {});
                pickup_sites.loadNavBoolPickup = true;
                pickup_sites.pokazPickup();
            }
        });



    },
    geokoderPrepare: function (point, status, headerText, streetText, cityText, moreText, moreLink, infoText, timeText, className, other, open, idek, latitude, longitude) {
        if (status == google.maps.GeocoderStatus.OK) {

            pickup_sites.timeout = 100;
            pickup_sites.pickupIteration++;
            pickup_sites.pickupFind++;
            var content = '<div class="dymekWrapper"><div class="pickupl_site_header"><span class="pickupl_site_name">' + headerText +
                    '</span></div><div class="pickupl_site_address"><span class="pickupl_site_city">' + streetText + '</span><span class="pickupl_site_city">' + cityText +
                    '</span></div><div class="pickupl_site_link"><a title="Zobacz szczegółowe informacje" href="' + moreLink + '" target="_blank">' + moreText +
                    '</a></div><div class="pickupl_site_info">' + infoText +
                    '</div><div class="pickupl_site_time">' + timeText + '</div></div>';

            //jesli wybrany z listy wrzuc do tablicy opisow innych
            if (other == 'another') {
                pickup_sites.contentsArrayOther.push(content);
            }
            // jesli wybrany z proponowanych wrzuc do tablicy opisow proponowanych
            else {
                pickup_sites.contentsArray.push(content);
            }

            // ustaw mape w odnalezionym punkcie
            //    var point = new google.maps.LatLng('','') : wyniki[0].geometry.location;

            pickup_sites.mapa.setCenter(point);
            // ustawienia markera
            var opcjeMarkera = {
                title: headerText
            };
            opcjeMarkera.position = point;
            opcjeMarkera.map = pickup_sites.mapa;
            if (pickup_sites.markerAnimation) // jesli zostal wpisany literal animacji markera
                opcjeMarkera.animation = google.maps.Animation.DROP; // uruchom animacje markera
            if ($('img.marker_face').attr('src') != '' && markerPickupsCustomIcon) {
                opcjeMarkera.icon = pickup_sites.markerIcon;
            }
            // definicja nowego markera
            var marker = new google.maps.Marker(opcjeMarkera);


            if (other == 'other')
                pickup_sites.markersArray[0] = marker;
            // jesli wybrany z listy wrzuc do tablicy markerow innych
            else if (other == 'another') {
                pickup_sites.markersArrayOther.push(marker);
            }
            // jesli wybrany z listy wrzuc do tablicy markerow proponowanych
            else {
                pickup_sites.markersArray.push(marker);
            }

            // jesli wybrany z listy i odnaleziony oznacz go na rel
            if (other == 'another' && idek != 'none') {
                pickup_sites.pickupFindOther = pickup_sites.pickupFindOther + 1;
                $(idek).attr("rel", pickup_sites.pickupFindOther);
            }
            // jesli wybrany z proponowanych i odnaleziony oznacz go na rel
            else if (idek == 'none')
                ;
            {
                $(className).attr('rel', pickup_sites.pickupFind);
            }
            // otwieranie pierwszego pickupa proponowanego
            if (idek == 'none' && $(className).hasClass('psl_selected') && $(className).attr('rel') !== undefined) {
                open = true;
            }
            if (!open && other != 'other') {
                google.maps.event.addListener(marker, 'click', function (zdarzenie) {
                    pickup_sites.markerInfo.setContent(content);
                    pickup_sites.markerInfo.setPosition(marker.getPosition());
                    pickup_sites.markerInfo.open(pickup_sites.mapa);
                    if ($('div.pickupl_proposed').children().length)
                        pickup_sites.chooseSite($(className).attr('id'), idek, 'none');
                    else
                        pickup_sites.chooseSite($(className).attr('id'), idek, 'alone');
                });
            } else if (open && other != 'other') {
                pickup_sites.markerInfo.setContent(content);
                pickup_sites.markerInfo.setPosition(marker.getPosition());
                pickup_sites.markerInfo.open(pickup_sites.mapa);
                google.maps.event.addListener(marker, 'click', function (zdarzenie) {
                    pickup_sites.markerInfo.setPosition(marker.getPosition());
                    pickup_sites.markerInfo.open(pickup_sites.mapa);
                    pickup_sites.chooseSite($(className).attr('id'), idek, 'none');
                });
                open = false;
            }


            if (pickup_sites.pickupIteration <= pickup_sites.pickupCount)
                $('span.loadingMarkersComplete').text(pickup_sites.pickupIteration);

            if (pickup_sites.pickupIteration >= pickup_sites.pickupCount) {
                setTimeout(function () {
                    $('div.loadingMap').fadeOut('normal', function () {
                    });
                }, pickup_sites.timeout);
                if ($('div.pickupl_proposed').children().length)
                    if (pickup_sites.pickupFirstActive) {
                        //pickup_sites.markerOnClickPickup(1);
                        pickup_sites.pickupFirstActive = false;
                    }
            }
        } else if (status == google.maps.GeocoderStatus.OVER_QUERY_LIMIT) {
            pickup_sites.timeout += 50;
            setTimeout(function () {
                pickup_sites.findAdres(headerText, streetText, cityText, moreText, moreLink, infoText, timeText, className, other, open, idek, latitude, longitude);
            }, pickup_sites.timeout);
        } else {
            pickup_sites.pickupIteration++;
            if (pickup_sites.pickupIteration <= pickup_sites.pickupCount)
                $('span.loadingMarkersComplete').text(pickup_sites.pickupIteration);
            if (pickup_sites.pickupIteration >= pickup_sites.pickupCount) {
                setTimeout(function () {
                    $('div.loadingMap').fadeOut('normal', function () {
                    });
                }, pickup_sites.timeout);
            }

        }

    },
    findAdres: function (headerText, streetText, cityText, moreText, moreLink, infoText, timeText, className, other, open, idek, latitude, longitude) {
        var adres = streetText + ' , ' + cityText;

        if (latitude && longitude) {
            var point = new google.maps.LatLng(latitude, longitude);
            pickup_sites.geokoderPrepare(point, 'OK', headerText, streetText, cityText, moreText, moreLink, infoText, timeText, className, other, open, idek, latitude, longitude);
        } else {
            pickup_sites.geokoder.geocode({
                address: adres
            }, function (wyniki, status) {

                var point = (wyniki && wyniki.length) ? wyniki[0].geometry.location : null;
                pickup_sites.geokoderPrepare(point, status, headerText, streetText, cityText, moreText, moreLink, infoText, timeText, className, other, open, idek, latitude, longitude);
            });
        }



    },
    pokazPickup: function () {

        if ($('div.pickupl_proposed').length) {
            // pokazywanie postepu
            $('div.loadingMap').show();
            $('span.loadingMap').hide();
            $('span.loadingMarkers').css('display', 'block');
            $('span.loadingMarkersCount').text(pickup_sites.pickupCount);
            $('span.loadingMarkersComplete').text(pickup_sites.pickupIteration);
            var adresData = []
            for (i = 1; i <= pickup_sites.pickupCount; i++) {
                var className = 'div.pickup_number_' + i;
                adresData[i] = {};
                adresData[i].className = className;
                adresData[i].headerText = $.trim($(className).find('span.pickupl_site_name').text());
                adresData[i].streetText = $.trim($(className).find('span.pickup_site_address').text());
                adresData[i].cityText = $.trim($(className).find('span.pickupl_site_city').text());
                adresData[i].moreText = $.trim($(className).find('div.pickupl_site_link a').text());
                adresData[i].moreLink = $.trim($(className).find('div.pickupl_site_link a').attr('href'));
                adresData[i].infoText = $.trim($(className).find('div.pickupl_site_info').text());
                adresData[i].timeText = $.trim($(className).find('div.pickupl_site_time').text());
                adresData[i].latitude = $.trim($(className).find('span.pickupl_sel_latitude').text());
                adresData[i].longitude = $.trim($(className).find('span.pickupl_sel_longitude').text());
            }
            var adresRow = '';
            while (adresRow = adresData.pop()) {
                if (adresRow.latitude && adresRow.longitude) {
                    pickup_sites.findAdres(adresRow.headerText, adresRow.streetText, adresRow.cityText, adresRow.moreText, adresRow.moreLink, adresRow.infoText, adresRow.timeText, adresRow.className, 'none', false, 'none', adresRow.latitude, adresRow.longitude);
                } else {
                    (function (adresRow) {
                        setTimeout(function () {
                            pickup_sites.findAdres(adresRow.headerText, adresRow.streetText, adresRow.cityText, adresRow.moreText, adresRow.moreLink, adresRow.infoText, adresRow.timeText, adresRow.className, 'none', false, 'none', adresRow.latitude, adresRow.longitude);
                        }, pickup_sites.timeout);
                    })(adresRow);
                }
            }


        } else
            $('div.loadingMap').fadeOut('normal', function () {
            });
    },
    markerOnClickPickup: function (index) {
        pickup_sites.markerInfo.setContent(pickup_sites.contentsArray[index - 1]);
        pickup_sites.markerInfo.setPosition(pickup_sites.markersArray[index - 1].getPosition());
        pickup_sites.markerInfo.open(pickup_sites.mapa);
    },
    markerOnClickOther: function (obj) {
        pickup_sites.markerInfo.setContent(pickup_sites.contentsArrayOther[(obj - 1)]);
        pickup_sites.markerInfo.setPosition(pickup_sites.markersArrayOther[(obj - 1)].getPosition());
        pickup_sites.markerInfo.open(pickup_sites.mapa);
    },
    markerOnClickLast: function () {
        pickup_sites.markerInfo.setContent(pickup_sites.contentOtherLast);
        pickup_sites.markerInfo.setPosition(pickup_sites.markerOtherLast.getPosition());
        pickup_sites.markerInfo.open(pickup_sites.mapa);
    },
    requires_client_number_show: function () {
        var oDiv = $('.pickupl_sel.pickupl_rcn');
        oDiv.show();
        oDiv.find('input').prop('disabled', false)

    },
    requires_client_number_hide: function () {
        var oDiv = $('.pickupl_sel.pickupl_rcn');
        oDiv.hide();
        oDiv.find('input').prop('disabled', true)
    }

}

setStockHolyday = function (id) {
    Holidays = Holidays_stocks[id];
}



function init_pickupl_site() {



    pickup_sites.loadNavBoolPickup = false;

    $(document).ready(function () {
        
        if ($('.psl_selected').attr('data-requires_client_number') == 'true') pickup_sites.requires_client_number_show();

        $('div.pickup_list .pickupl_site').click(function () {


            var stockHolydayId = $(this).attr('data-stockid');
            var requires_client_number = $(this).attr('data-requires_client_number');
            $("#pickupl_calbind").hide(pickupl_animspeed);
            setStockHolyday(stockHolydayId);
            $('#pickupl_calbind').datepicker('setDate', null);
            pickup_sites.printDates(0, $(this).attr('data-stockid'));

            pickup_sites.requires_client_number_hide();
            if ( $(this).attr('value') == 'ps_other' && $('select.pickupl_sel.pickupl_sel_eval:visible option:selected').attr('data-requires_client_number')=='true' ) {

              // ostatni element, trzeba sprawdzic select
              pickup_sites.requires_client_number_show();
              

            } else if (requires_client_number === 'true') {
                pickup_sites.requires_client_number_show();
            }




        });

        // JESLI PICKUP_SITE
        if (typeof mapSiteType != 'undefined')
            if (mapSiteType == 'pickup_site') {
                var loadingMapWidth = $('div.loadingMap').width() / 2;
                var loadingMapHeight = $('div.loadingMap').height() / 2;
                var loadingBoxWidth = $('div.loadingBox').width() / 2;
                var loadingBoxHeight = $('div.loadingBox').height() / 2;

                var loadingBoxLeft = loadingMapWidth - loadingBoxWidth;
                var loadingBoxTop = loadingMapHeight - loadingBoxHeight;

                pickup_sites.google_api_key = google_api_key;

                $('div.loadingBox').css('left', loadingBoxLeft);
                $('div.loadingBox').css('top', loadingBoxTop);
                $('div.loadingBox').fadeTo('normal', 1.0, function () {
                });
                pickup_sites.loadGoogleMapsAPI(pickup_sites.mapInit);
                pickup_sites.makeClass();
            }
    });

    $(window).load(function () {

        $('select.pickupl_sel.pickupl_sel_eval').live('change.pickup_site', function () {

            var requires_client_number = $(this).find('option:selected').attr('data-requires_client_number');

            pickup_sites.buttonNextActivate();
            if ($(this)[0].selectedIndex == 0) {
                pickup_sites.deactivate()
            }
            pickup_sites.requires_client_number_hide();
            if (requires_client_number === 'true') {
                pickup_sites.requires_client_number_show();
            }

        });


        $('div.pickupl_calendar_wrapper input.pickupl_radio').each(function () {
            var pickuplDateIn = $(this).val();
            if (pickuplDateIn == select_time) {
                $(this).addClass('pickuplselectradio');
            }
        });

        if ($('input.pickuplselectradio').length) {
            $('input.pickuplselectradio').click();
        } else if ($("#pickupl_calbind").length) {
            var czas = $("#pickupl_calbind").datepicker('getDate');
            $("#calendar_date_select_7 span.pickupl_date_day").text(czas.getDate());
            $("#calendar_date_select_7 span.pickupl_date_month").text(iaical_monthNames2[parseInt(czas.getMonth())]);
            $("#calendar_date_select_7").click();
        }

    });


}