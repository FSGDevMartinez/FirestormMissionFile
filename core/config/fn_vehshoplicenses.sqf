#include <macro.h>
/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "civ_motorbike": {_ret = true;};
	case "dezzie_car": {_ret = license_civ_driver;};
	case "civ_rpd": {_ret = license_civ_rpd;};
	case "civ_hooded": {_ret = license_civ_hooded;};
	case "civ_firm": {_ret = license_civ_firm;};
	case "civ_pestcontrol": {_ret = license_civ_Taurus;};
	case "civ_house": {_ret = license_civ_house;};
	case "civ_outsiders": {_ret = license_civ_outsiders;};
	case "civ_nwa": {_ret = license_civ_nightwatch;};
	case "civ_ghost": {_ret = license_civ_ghost;};
	case "civ_supernova": {_ret = license_civ_supernova;};
	case "civ_narco": {_ret = license_civ_narco;};
	case "civ_lrf": {_ret = license_civ_lakesiderebforce;};
	case "civ_faceless": {_ret = license_civ_faceless;};
	case "kart_shop": {_ret = license_civ_driver;};
	case "med_air_hs": {_ret = license_med_air;};
	case "civ_car": {_ret = license_civ_driver;};
	case "ford_car": {_ret = license_civ_driver;};
	case "chev_car": {_ret = license_civ_driver;};
	case "moto_car": {_ret = license_civ_driver;};
	case "dodge_car": {_ret = license_civ_driver;};
	case "exo_car": {_ret = license_civ_driver;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "cop_uc": {_ret = true;};
	case "cop_under": {_ret = license_cop_cid;};
	case "cop_sheriff": {_ret = true;};
	case "cop_docboat": {_ret = true;};
	case "med_boat": {_ret = true;};
	case "cop_swatcar": {_ret = license_cop_sert;};
	case "civ_ss": {_ret = license_civ_secretservice;};

	
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;