/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_lights","_time","_amount","_weight"];
_lights = nearestObjects [(getPos player),["Land_Portable_generator_F"], 10];
_amount = 2 + round(random 3);
_weight = [1,1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(playerSide != civilian) exitWith {}; 
if(_weight == 0) exitWith {hint localize "STR_NOTF_InvFull"};
if(life_seeded == 10) exitWith {hint "You already have seeds planted.";[true,"cannabis seed",1] call life_fnc_handleInv; };
if(life_shovel == 0) exitWith {hint "You have not cultivated the land.";[true,"cannabis seed",1] call life_fnc_handleInv; };
if ((count _lights) == 0) exitWith {hint "You are not close enough to the lights";[true,"cannabis seed",1] call life_fnc_handleInv; };
_lights = (_lights select 0);
closeDialog 1;
life_action_inUse = true;
player playAction "Medic";
uiSleep 6;
hintSilent "The cannabis seed has been planted.";
life_seeded = life_seeded + 1;
uiSleep 4;
["Cannabis seeds usually take around 100 seconds to grow.",4,"green"] call A3L_Fnc_Msg;
life_action_inUse = false;
if(life_lightdrugfield == 1) then { 
_time = 100 + round(random 25);
};
if(life_lightdrugfield == 2) then { 
_time = 75 + round(random 25);
};
if(life_lightdrugfield == 3) then { 
_time = 50 + round(random 30);
};
uiSleep _time;
hint "Your seeds have grown."; 
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 1;
hint format ["You have gathered %1 cannabis plants.",_amount];
[true,"cannabis",_amount] call life_fnc_handleInv;
uiSleep 3;
hint "You need to re-cultivate the land to grow more drugs."; 
life_seeded = 0;
life_shovel = 0;
