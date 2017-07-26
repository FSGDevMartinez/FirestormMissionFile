/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "insurance": {_var = "license_civ_insurance"};  // in the upper field
			case "meth": {_var = "license_civ_meth"};  // in the upper field
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "coke": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "ss": {_var = "license_civ_secretservice"};
			case "rifle": {_var = "license_civ_rifle"};
			case "uranium": {_var = "license_civ_uranium"};
			case "forestry": {_var = "license_civ_forestry"};
			//Whitelisted gangs
			case "nigo": {_var = "license_civ_nigo"};
			case "faceless": {_var = "license_civ_faceless"};
			case "ghost": {_var = "license_civ_ghost"};
			case "redwood": {_var = "license_civ_redwood"};
			case "shadow": {_var = "license_civ_shadow"};
			case "lakesiderebforce": {_var = "license_civ_lakesiderebforce"};
			case "house": {_var = "license_civ_house"};
			case "slaughter": {_var = "license_civ_slaughter"};
			case "Taurus": {_var = "license_civ_Taurus"};
			case "whitefamily": {_var = "license_civ_whitefamily"};
			case "blackwatch": {_var = "license_civ_blackwatch"};
			case "nightwatch": {_var = "license_civ_nightwatch"};
			case "blackops": {_var = "license_civ_blackops"};
			case "hooded": {_var = "license_civ_hooded"};
			case "rpd": {_var = "license_civ_rpd"};
			//new
			case "konvicted": {_var = "license_civ_konvicted"};
			case "supernova": {_var = "license_civ_supernova"};
			case "outsiders": {_var = "license_civ_outsiders"};
			case "hitmen": {_var = "license_civ_hitmen"};
			case "mafia": {_var = "license_civ_mafia"};
			case "goodwin": {_var = "license_civ_goodwin"};
			case "tomwalker": {_var = "license_civ_tomwalker"};
			case "firm": {_var = "license_civ_firm"};
			case "sov": {_var = "license_civ_sov"};	
			case "strife": {_var = "license_civ_strife"};	
			case "narco": {_var = "license_civ_narco"};
			case "corleones": {_var = "license_civ_corleones"};
			case "TF01": {_var = "license_civ_TF01"};
///////////////////////////////
            case "marshals": {_var = "license_cop_marshals"};
			case "cid": {_var = "license_cop_cid"};
			case "sert": {_var = "license_cop_sert"};
			case "lospepe": {_var = "license_civ_lospepe"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_firm": {_var = "firm"};
			case "license_civ_faceless": {_var = "faceless"};
			case "license_civ_rpd": {_var = "rpd"};
			case "license_civ_konvicted": {_var = "konvicted"};
			case "license_civ_supernova": {_var = "supernova"};
			case "license_civ_hooded": {_var = "hooded"};
			case "license_civ_corleones": {_var = "corleones"};
			case "license_civ_outsiders": {_var = "outsiders"};
			case "license_civ_hitmen": {_var = "hitmen"};
			case "license_civ_goodwin": {_var = "goodwin"};
			case "license_civ_mafia": {_var = "mafia"};
			case "license_civ_nigo": {_var = "nigo"};
			case "license_civ_redwood": {_var = "redwood"};
			case "license_civ_sov": {_var = "sov"};
			case "license_civ_strife": {_var = "strife"};
			case "license_civ_TF01": {_var = "TF01"};
			//end of new gangs
			case "license_civ_insurance": {_var = "insurance"}; 
			case "license_civ_meth": {_var = "meth"};  // in the lower field
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_secretservice": {_var = "ss"};
			case "license_civ_uranium": {_var = "uranium"};
			case "license_civ_rifle": {_var = "rifle"};
			//Whitelisted Gangs
			case "license_civ_laf": {_var = "laf"};
			case "license_civ_tomwalker": {_var = "tomwalker"};
			case "license_civ_ghost": {_var = "ghost"};
			case "license_civ_blackops": {_var = "blackops"};
			case "license_civ_whitefamily": {_var = "whitefamily"};
			case "license_civ_blackwatch": {_var = "blackwatch"};
			case "license_civ_shadow": {_var = "shadow"};
			case "license_civ_lakesiderebforce": {_var = "lakesiderebforce"};
			case "license_civ_house": {_var = "house"};
			case "license_civ_slaughter": {_var = "slaughter"};
			case "license_civ_Taurus": {_var = "Taurus"};
			case "license_cop_cid": {_var = "cid"};
			case "license_cop_sert": {_var = "sert"};
			case "license_cop_marshals": {_var = "marshals"};
			//EzGangs
			case "license_civ_lospepe": {_var = "lospepe"};
			case "license_civ_phantom": {_var = "phantom"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;