////////// konfiguracja zakładek

/*

DEFINICJA ZAKŁADKI:
n : 'Opis<br /> produktu',      <--  nazwa zakładki
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
{
n : 'Opis<br /> produktu',  
p : 3,
c : ['component_projector_longdescription'],
i : 'longdescription_58676'
},
///////////////  
{
n : 'Dane<br />techniczne',
p : 2,
c : ['component_projector_dictionary'],
i : 'dictionary_58676'
},
///////////////
{
n : 'Gwarancja',
p : 5,
c : ['component_projector_warranty'],
i : 'warranty_58676'
},
///////////////
{
n : 'Polecane<br />produkty',
p : 9,
c : ['component_projector_associated_zone1','component_projector_associated_zone2','component_projector_associated_zone3','component_projector_associated_zone4'],
i : 'associated_zones_58676'
},
///////////////
{
n : 'Opinie<br />kupujących ('+opCount+')',    // można użwywac zmiennych łącząc jak w js znakiem + zmienne opCount(liczba opinii), opAvg(średnia)
p : 1,
c : ['component_projector_opinions','component_projector_opinions_add'],
i : 'opinions_58676'
},
///////////////
{
n : 'Zadaj<br />pytanie',
p : 4,
c : ['component_projector_askforproduct'],
i : 'askforproduct_58676'
},
///////////////
{
n : 'Poleć<br />znajomemu',
p : 5,
c : ['component_projector_suggestproduct'],
i : 'suggestproduct_58676'
},
///////////////
{
n : 'Tabela<br/> rozmiarów',
p : 6,
c : ['component_projector_sizes_cms'],
i : 'sizes_58676'
},
///////////////
{
n : 'Pliki<br />do pobrania',
p : 7,
c : ['component_projector_enclosures'],
i : 'enclosures_58676'
}

/////////////////////////////////////koniec//////////////////////////////////////////
],
numberOp:opCount

}

}