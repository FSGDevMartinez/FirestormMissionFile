#include <macro.h>

tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;


private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};



if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch (__GETC__(life_medicLevel)) do
{
     case 1: {life_paycheck = life_paycheck + 0;};
	 case 2: {life_paycheck = life_paycheck + 25;};
     case 3: {life_paycheck = life_paycheck + 50;};
     case 4: {life_paycheck = life_paycheck + 75;};
     case 5: {life_paycheck = life_paycheck + 100;};
};
disableUserInput true;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};
player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_DebugGear;
[] execVM "core\cop\fn_keycards.sqf";
