/*
	File: fn_clothingFilter.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Functionality for filtering clothing types in the menu.
*/
disableSerialization;
private["_control","_selection","_list","_filter"];
_control = _this select 0;
_selection = _this select 1;
life_clothing_filter = _selection;

if(_selection == 4) then
{
	life_shop_cam camSetTarget (player modelToWorld [0,-.15,1.3]);
	life_shop_cam camSetPos (player modelToWorld [1,-4,2]);
	life_shop_cam camCommit 1;
}
	else
{
	life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
	life_shop_cam camSetPos (player modelToWorld [1,4,2]);
	life_shop_cam camCommit 1;
};

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
lbClear _filter;
lbClear _list;

//Temp code, subjected to become one master config in future
_clothes = switch (life_clothing_store) do
{
		case "ems": {[_selection] call life_fnc_clothing_ems;};
		case "firm": {[_selection] call life_fnc_clothing_firm;};
		case "konvicted": {[_selection] call life_fnc_clothing_konvicted;};
	case "bruce": {[_selection] call life_fnc_clothing_bruce;};
	case "copcid": {[_selection] call life_fnc_clothing_copcid;};
	case "copsert": {[_selection] call life_fnc_clothing_copsert;};
	case "dive": {[_selection] call life_fnc_clothing_dive;};
	case "blackops": {[_selection] call life_fnc_clothing_blackops;};
	case "shadow": {[_selection] call life_fnc_clothing_shadow;};
	case "slaughter": {[_selection] call life_fnc_clothing_slaughter;};
	case "Taurus": {[_selection] call life_fnc_clothing_Taurus;};
	case "corleones": {[_selection] call life_fnc_clothing_corleones;};
	case "house": {[_selection] call life_fnc_clothing_house;};
	case "ss": {[_selection] call life_fnc_clothing_ss;};
	case "lrf": {[_selection] call life_fnc_clothing_lrf;};
	case "faceless": {[_selection] call life_fnc_clothing_faceless;};
	case "cop": {[_selection] call life_fnc_clothing_cop;};
	case "reb": {[_selection] call life_fnc_clothing_reb;};
	case "supernova": {[_selection] call life_fnc_clothing_supernova;};
	case "kart": {[_selection] call life_fnc_clothing_kart;};
	case "nightwatch": {[_selection] call life_fnc_clothing_nightwatch;};
	case "whitefamily": {[_selection] call life_fnc_clothing_whitefamily;};
	case "blackwatch": {[_selection] call life_fnc_clothing_blackwatch;};
	case "ghostsquad": {[_selection] call life_fnc_clothing_ghostsquad;};
	case "hooded": {[_selection] call life_fnc_clothing_hooded;};
	case "tomwalker": {[_selection] call life_fnc_clothing_tomwalker;};
	case "rpd": {[_selection] call life_fnc_clothing_rpd;};
	case "narco": {[_selection] call life_fnc_clothing_narco;};
	///new
	case "outsiders": {[_selection] call life_fnc_clothing_outsiders;};
	case "nigo": {[_selection] call life_fnc_clothing_nigo;};
	case "strife": {[_selection] call life_fnc_clothing_strife;};
	case "hitmen": {[_selection] call life_fnc_clothing_hitmen;};
	case "goodwin": {[_selection] call life_fnc_clothing_goodwin;};
	case "sov": {[_selection] call life_fnc_clothing_sov;};
	case "TF01": {[_selection] call life_fnc_clothing_TF01;};
	case "redwood": {[_selection] call life_fnc_clothing_redwood;};
	case "pepe": {[_selection] call life_fnc_clothing_pepe;};
	case "phantom": {[_selection] call life_fnc_clothing_phantom;};
	case "coastguard": {[_selection] call life_fnc_clothing_cg;};
};

if(count _clothes == 0) exitWith {};
{
	_details = [_x select 0] call life_fnc_fetchCfgDetails;
	if(isNil {_x select 1}) then
	{
		_list lbAdd format["%1",(getText(configFile >> (_details select 6) >> (_x select 0) >> "DisplayName"))];
	}
		else
	{
		_list lbAdd format["%1", _x select 1];
	};
	_pic = getText(configFile >> (_details select 6) >> (_x select 0) >> "picture");
	_list lbSetData [(lbSize _list)-1,_x select 0];
	_list lbSetValue [(lbSize _list)-1,_x select 2];
	_list lbSetPicture [(lbSize _list)-1,_pic];
} foreach _clothes;