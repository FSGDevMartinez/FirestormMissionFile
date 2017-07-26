/*
	File: fn_civLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the civs out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["alrppugs","alrppugsnotdrugs","ALRPJeff","ALRPTrump","ALRPVape"];
player addUniform (_clothings select (floor(random (count _clothings))));
_head = ["Gorb_SantaHat_Green","Gorb_SantaHat","Gorb_Santa_White","Gorb_Santa_Black","Gorb_Santa_Tan"];
player addUniform (_head select (floor(random (count _head))));
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_microdagr";
player assignItem "tf_microdagr";

[] call life_fnc_saveGear;