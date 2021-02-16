////////// tabs configuration

/*

TAB"S DEFINITION:
n : "Product<br /> description", <--  tab"s name
p : 3, <-- sequence of opening
c : ["component_projector_longdescription"], <-- id of components, which should be opened
i : "longdescription_58676" <-- id of tab, better is to NOT MODIFY this value

TAB ORDER:
To change the order, move tab"s definitions. Ask for details :)

*/

var optionsHovers = function(opCount,opAvg){return {

HideOp: true, // if hide the tab when no opinions occur – true
opId: "opinions_58676", // better is to not modify opinion tab
t:[
///////////////////////////////////beginning of configuration – if necessary change order of definitions ////////////////////////////////////////
{
n : "Product<br /> description",
p : 3,
c : ["component_projector_longdescription"],
i : "longdescription_58676"
},
///////////////
{
n : "Technical<br /> specification",
p : 2,
c : ["component_projector_dictionary"],
i : "dictionary_58676"
},
///////////////
{
n : "Warranty",
p : 5,
c : ["component_projector_warranty"],
i : "warranty_58676"
},
///////////////
{
n : "Recommended<br /> products",
p : 9,
c : ["component_projector_associated_zone1","component_projector_associated_zone2","component_projector_associated_zone3","component_projector_associated_zone4"],
i : "associated_zones_58676"
},
///////////////
{
n : "Purchasers<br /> opinions ("+opCount+")",    // you can use variables connecting (as in JavaScript) by + variables opCount(number of opinions), opAvg(average)
P : 1,
c : ['component_projector_opinions','component_projector_opinions_add'],
i : "opinions_58676"
},
///////////////
{
n : "Ask<br />a question",
p : 4,
c : ["component_projector_askforproduct"],
i : "askforproduct_58676"
},
///////////////
{
n : "Suggest to<br />your friend",
p : 5,
c : ["component_projector_suggestproduct"],
i : "suggestproduct_58676"
},
///////////////
{
n : "Size<br/> chart",
p : 6,
c : ["component_projector_sizes_cms"],
i : "sizes_58676"
},
///////////////
{
n : "Download",
p : 7,
c : ["component_projector_enclosures"],
i : "enclosures_58676"
}

/////////////////////////////////////end//////////////////////////////////////////
],
numberOp:opCount

}

}