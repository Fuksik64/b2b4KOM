var txt_hover_opis = '';
var txt_hover_dane = '';
var txt_hover_gwarancja = '';
var txt_hover_polecane = '';
var txt_hover_opinie = '';
var txt_hover_pytanie = '';
var txt_hover_polec = '';
var txt_hover_tabela = '';
var txt_hover_pliki = '';

var txt_hover_1 = '';
var txt_hover_2 = '';
var txt_hover_3 = '';
var txt_hover_4 = '';


///////// konfiguracja zakładek

/*

DEFINICJA ZAKŁADKI:
n : 'Opis produktu',      <--  nazwa zakładki
p : 3,                                        <-- kolejnośc otwierania  
c : ['component_projector_longdescription'],   <-- id komponentów, które ma otwierac
i : 'longdescription_58676'                                 <-- id zakładki najlepiej NIE ZMIENIAC 

KOLEJNOŚC ZAKŁADEK:
aby zmienic kolejnośc należy przestawic  miejscami definicje zakładek  jak coś to pytac :)

*/

var optionsHovers = function(opCount,opAvg){return {

HideOp: true, // jeśli ukryc zakładkę przy braku opinii -- true
opId: 'opinions_58676', // id zakładki opinii najlepiej nie zmieniac
t:[
///////////////////////////////////początek konfiguracji -- definicje moża zamieniac miejscami  ////////////////////////////////////////


///////////////
{
n : txt_hover_dane,
p : 2,
c : ['component_projector_dictionary'],
i : 'dictionary_58676'
},
///////////////
{
n : txt_hover_pliki,
p : 3,
c : ['component_projector_enclosures'],
i : 'enclosures_58676'
},
///////////////
{
n : txt_hover_opinie + '('+opCount+')',    // można użwywac zmiennych łącząc jak w js znakiem + zmienne opCount(liczba opinii), opAvg(średnia)
p : 4,
c : ['component_projector_opinions','component_projector_opinions_add','projector_fb_comments'],
i : 'opinions_58676'
},
///////////////
{
n : txt_hover_pytanie,
p : 5,
c : ['component_projector_askforproduct'],
i : 'askforproduct_58676'
},
///////////////
{
n : txt_hover_polec,
p : 6,
c : ['component_projector_suggestproduct'],
i : 'suggestproduct_58676'
},
///////////////
{
n : txt_hover_opis,  
p : 7,
c : ['component_projector_longdescription'],
i : 'longdescription_58676'
},
///////////////  
{
n : txt_hover_gwarancja,
p : 8,
c : ['component_projector_warranty'],
i : 'warranty_58676'
},
///////////////
{
n : txt_hover_tabela,
p : 9,
c : ['component_projector_sizes_cms'],
i : 'sizes_58676'
}


/////////////////////////////////////koniec//////////////////////////////////////////
],
numberOp:opCount

}

}