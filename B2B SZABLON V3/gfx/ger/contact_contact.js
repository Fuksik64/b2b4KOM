
$(document).ready(function(){if(typeof mapHideContact!='undefined')
{if(typeof mapSiteType!='undefined'&&mapHideContact=='')
if(mapSiteType=='contact')
{contact_map.loadGoogleMapsAPI(contact_map.mapInit);}}});var contact_map={geokoder:0,mapa:0,zoom:0,markerInfo:0,language:0,markerInfo:0,timeout:0,markerIcon:0,loadNavBool:false,loadMapBool:false,google_api_key:'',loadGoogleMapsAPI:function(callback){if((parent.location.protocol+'//')=='https://')
$.getScript("https://www.google.com/jsapi",function()
{contact_map.language=contactLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});});else if((parent.location.protocol+'//')=='http://')
$.getScript("http://www.google.com/jsapi",function()
{contact_map.language=contactLanguage;google.load('maps','3',{callback:callback,other_params:'sensor=false&language='+contact_map.language+'&key='+contact_map.google_api_key});});},mapInit:function(){contact_map.zoom=contactZoom;contact_map.geokoder=new google.maps.Geocoder();var wspolrzedne=new google.maps.LatLng(parseInt(bCordContact),parseInt(lCordContact));if(markersAnimationContact!='')
markersAnimationContact=true;else
markersAnimationContact=false;if(markerContactCustomIcon!='')
markerContactCustomIcon=true;else
markerContactCustomIcon=false;if(mapTypeContact=='ROADMAP')
var mapStyle=google.maps.MapTypeId.ROADMAP
else if(mapTypeContact=='SATELLITE')
var mapStyle=google.maps.MapTypeId.SATELLITE
else if(mapTypeContact=='HYBIRD')
var mapStyle=google.maps.MapTypeId.HYBRID
else if(mapTypeContact=='TERRAIN')
var mapStyle=google.maps.MapTypeId.TERRAIN
else
var mapStyle=google.maps.MapTypeId.ROADMAP
if(navControlContact!='')
navControlContact=true;else
navControlContact=false;if(mapTypeControlContact!='')
mapTypeControlContact=true;else
mapTypeControlContact=false;if(scControlContact!='')
scControlContact=true;else
scControlContact=false;if(controlTypeContact=='ZOOM_PAN')
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
else if(controlTypeContact=='SMALL')
var controlStyle=google.maps.NavigationControlStyle.SMALL
else if(controlTypeContact=='ANDROID')
var controlStyle=google.maps.NavigationControlStyle.ANDROID
else
var controlStyle=google.maps.NavigationControlStyle.ZOOM_PAN
if(mapTypeControlStyleContact=='DROPDOWN_MENU')
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
else if(mapTypeControlStyleContact=='HORIZONTAL_BAR')
var TypeControltyle=google.maps.MapTypeControlStyle.HORIZONTAL_BAR
else
var TypeControlStyle=google.maps.MapTypeControlStyle.DROPDOWN_MENU
if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{var markerIconSize=new google.maps.Size($('img.marker_face').width(),$('img.marker_face').height());var punkt_startowy=new google.maps.Point(0,0);var punkt_zaczepienia=new google.maps.Point(parseInt($('img.marker_face').width()/2),parseInt($('img.marker_face').height()/2));contact_map.markerIcon=new google.maps.MarkerImage($('img.marker_face').attr('src'),markerIconSize,punkt_startowy,punkt_zaczepienia);}
if(window['google_map_style_array']){var mapOptions={gestureHandling:'cooperative',zoom:contact_map.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlContact,mapTypeControl:mapTypeControlContact,scaleControl:scControlContact,styles:google_map_style_array,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}else{var mapOptions={gestureHandling:'cooperative',zoom:contact_map.zoom,center:wspolrzedne,mapTypeId:mapStyle,navigationControl:navControlContact,mapTypeControl:mapTypeControlContact,scaleControl:scControlContact,navigationControlOptions:{style:controlStyle},mapTypeControlOptions:{style:TypeControlStyle}};}
contact_map.mapa=new google.maps.Map(document.getElementById("contact_map"),mapOptions);markerInfo=new google.maps.InfoWindow();google.maps.event.addListener(contact_map.mapa,'idle',function(){if(!contact_map.loadMapBool){$('span.loadingMap').text($('span.loadingNav').text());contact_map.loadMapBool=true;}});google.maps.event.addListener(contact_map.mapa,'tilesloaded',function(){if(!contact_map.loadNavBool){var firmName=$.trim($('div.contact_contact_left h3').text());var name=$.trim($('#contact_contact_shopshortname').text());var street=$.trim($('#contact_contact_street').text());var city=$.trim($('#contact_contact_city').text());var country=$.trim($('#contact_contact_country').text());if(doSetL!=''&&doSetB!='')
contact_map.setAddress(firmName,name,street,city,country,doSetL,doSetB);else if(doSet=='')
contact_map.findAddress(firmName,name,street,city,country);contact_map.loadNavBool=true;}});},setAddress:function(firmName,name,street,city,country,A,B){$('span.loadingMap').text($('span.loadingAdres').text());var adres=street+' , '+city+' , '+country;var content='<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+street+'</span><span class="dymekCityName">'+city+'</span><span class="dymekCountryName">'+country+'</div>';contact_map.staticPoint=new google.maps.LatLng(A,B);contact_map.mapa.setCenter(contact_map.staticPoint);var opcjeMarkera={title:firmName};opcjeMarkera.position=contact_map.staticPoint;opcjeMarkera.map=contact_map.mapa;if(markersAnimationContact)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{opcjeMarkera.icon=contact_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);markerInfo.setContent(content);markerInfo.setPosition(marker.getPosition());markerInfo.open(contact_map.mapa);google.maps.event.addListener(marker,'click',function(zdarzenie)
{markerInfo.open(contact_map.mapa);});setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);},findAddress:function(firmName,name,street,city,country){$('span.loadingMap').text($('span.loadingAdres').text());var adres=street+' , '+city+' , '+country;contact_map.geokoder.geocode({address:adres},function(wyniki,status)
{if(status==google.maps.GeocoderStatus.OK)
{var content='<div class="dymekWrapper"><div dymek class="dymekInfo"><span class="dymekFirmName">'+firmName+'</span><span class="dymekAddress">'+street+'</span><span class="dymekCityName">'+city+'</span><span class="dymekCountryName">'+country+'</div>';contact_map.mapa.setCenter(wyniki[0].geometry.location);var opcjeMarkera={title:firmName};opcjeMarkera.position=wyniki[0].geometry.location;opcjeMarkera.map=contact_map.mapa;if(markersAnimationContact)
opcjeMarkera.animation=google.maps.Animation.DROP;if($('img.marker_face').attr('src')!=''&&markerContactCustomIcon)
{opcjeMarkera.icon=contact_map.markerIcon;}
var marker=new google.maps.Marker(opcjeMarkera);markerInfo.setContent(content);markerInfo.setPosition(marker.getPosition());markerInfo.open(contact_map.mapa);google.maps.event.addListener(marker,'click',function(zdarzenie)
{markerInfo.open(contact_map.mapa);});setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);}
else if(status==google.maps.GeocoderStatus.OVER_QUERY_LIMIT)
{contact_map.timeout+=50;setTimeout(function(){skoczDoAdresuContact(firmName,name,street,city,country);},contact_map.timeout);}
else
{setTimeout(function(){$('div.loadingMap').fadeOut('normal',function(){});},contact_map.timeout);}});},showMap:function(){if(typeof mapSiteType!='undefined')
if(mapSiteType=='contact')
{$('#contact_contact a.show_on_map').hide();$('#contact_contact div.contact_map_all').slideToggle('fast',function(){var loadingMapWidth=$('div.loadingMap').width()/2;var loadingMapHeight=$('div.loadingMap').height()/2;var loadingBoxWidth=$('div.loadingBox').width()/2;var loadingBoxHeight=$('div.loadingBox').height()/2;var loadingBoxLeft=loadingMapWidth-loadingBoxWidth;var loadingBoxTop=loadingMapHeight-loadingBoxHeight;contact_map.google_api_key=google_api_key;$('div.loadingBox').css('left',loadingBoxLeft);$('div.loadingBox').css('top',loadingBoxTop);$('div.loadingBox').fadeTo('normal',1.0,function(){});$('#contact_contact div.contact_map_all').fadeTo('normal',1.0,function(){contact_map.loadGoogleMapsAPI(contact_map.mapInit);});});}}}