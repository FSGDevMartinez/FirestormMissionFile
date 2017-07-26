#include <macro.h>

tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;
disableUserInput true;
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};
switch (__GETC__(life_coplevel)) do
{
     case 1: {life_paycheck = life_paycheck + 0;};
	 case 2: {life_paycheck = life_paycheck + 55;};
     case 3: {life_paycheck = life_paycheck + 75;};
     case 4: {life_paycheck = life_paycheck + 125;};
     case 5: {life_paycheck = life_paycheck + 200;};
     case 6: {life_paycheck = life_paycheck + 225;};
     case 7: {life_paycheck = life_paycheck + 255;};
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};

setGroupIconsVisible [false,false];
player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_DebugGear;

if (life_inv_mobilephone < 1) then{
[true,"mobilephone",1] call life_fnc_handleInv;
};

if (life_inv_keycard < 1) then{
[true,"keycard",1] call life_fnc_handleInv;
};

if (life_inv_panicbutton < 1) then{
[true,"panicbutton",1] call life_fnc_handleInv;
};

player setVariable ["copLevel",1,true];
[] execVM "core\cop\fn_keycards.sqf";
