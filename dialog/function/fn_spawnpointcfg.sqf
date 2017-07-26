/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Lakeside Police HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_m","DOC HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_sert_spawn","SERT HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["marshals_spawn","DTU HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};

	case civilian:
	{
		if(license_civ_faceless && playerSide == civilian) then {
		_return = [
					["faceless_spawn","Faceless Ones HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_corleones && playerSide == civilian) then {
		_return = [
					["corleones_spawn","Corleones HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_narco && playerSide == civilian) then {
		_return = [
					["narco_spawn","Narco Family HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_supernova && playerSide == civilian) then {
		_return = [
					["supernova_spawn","Supernova HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_strife && playerSide == civilian) then {
		_return = [
					["strife_spawn","Strife Family HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_sov && playerSide == civilian) then {
		_return = [
					["sov_spawn","Sovereignty HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_secretservice && playerSide == civilian) then {
		_return = [
					["ss_spawn","Mayors Estate","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["mansion","Mayors Mansion","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["court_spawn","Courthouse","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_rpd && playerSide == civilian) then {
		_return = [
					["rpd_spawn","RPD HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_firm && playerSide == civilian) then {
		_return = [
					["firm_spawn","Firm HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_tomwalker && playerSide == civilian) then {
		_return = [
					["tomwalker","Meme HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_hooded && playerSide == civilian) then {
		_return = [
					["hooded_spawn","Hooded Hooligans HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_outsiders && playerSide == civilian) then {
		_return = [
					["outsiders_spawn","Outsiders HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_ghost && playerSide == civilian) then {
		_return = [
					["ghost_spawn","Ghost Squad HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_nightwatch && playerSide == civilian) then {
		_return = [
					["nightwatch_spawn","Nightwatch HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_redwood && playerSide == civilian) then {
		_return = [
					["redwood_spawn","Redwood Rangers HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_goodwin && playerSide == civilian) then {
		_return = [
					["goodwin_spawn","Goodwins HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_hitmen && playerSide == civilian) then {
		_return = [
					["hitmen_spawn","Hitmen HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_blackwatch && playerSide == civilian) then {
		_return = [
					["blackwatch_spawn","Blackwatch HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_Taurus && playerSide == civilian) then {
		_return = [
					["Taurus_spawn","Pest Control HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_slaughter && playerSide == civilian) then {
		_return = [
					["slaughter_spawn","Spartan Vanguard HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_lospepe && playerSide == civilian) then {
		_return = [
					["lospepe_spawn","Los Pepe HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_lakesiderebforce && playerSide == civilian) then {
		_return = [
					["lakesiderebforce_spawn","LRF HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_house && playerSide == civilian) then {
		_return = [
					["house_spawn","House Lannister Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(!license_civ_lospepe && !license_civ_rpd && !license_civ_faceless && !license_civ_corleones && !license_civ_narco && !license_civ_strife && !license_civ_secretservice && !license_civ_sov && !license_civ_firm && !license_civ_tomwalker && !license_civ_hooded && !license_civ_outsiders && !license_civ_nightwatch && !license_civ_redwood && !license_civ_ghost && !license_civ_supernova && !license_civ_goodwin && !license_civ_hitmen && !license_civ_blackwatch && !license_civ_slaughter && !license_civ_Taurus && !license_civ_house && !license_civ_lakesiderebforce && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
		if(license_civ_phantom && playerSide == civilian) then {
	_return = [
			["phantom_spawn","Phantom Outlaws HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	if(!license_civ_lospepe && !license_civ_rpd && !license_civ_faceless && !license_civ_corleones && !license_civ_narco && !license_civ_strife && !license_civ_secretservice && !license_civ_sov && !license_civ_firm && !license_civ_tomwalker && !license_civ_hooded && !license_civ_outsiders && !license_civ_nightwatch && !license_civ_redwood && !license_civ_ghost && !license_civ_supernova && !license_civ_goodwin && !license_civ_hitmen && !license_civ_blackwatch && !license_civ_slaughter && !license_civ_Taurus && !license_civ_house && !license_civ_lakesiderebforce && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","San Cristobal","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	


		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};
	};

	case independent: {
		_return = [
			["medic_spawn_hospital","Lakeside Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["med_spawn_lsfire","Lakeside Fire Station","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_hospital_1","Airfield Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Los Diablos Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
