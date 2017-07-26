/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
case (player distance (getMarkerPos "forestry") < 50) : {_mine = "log"; _val = 2;};
default {_mine = "";};
};
if(_mine == "") exitWith {cutText ["You are not close enough to the forestry zone.","PLAIN",2];};
if (Life_WoodLogger == 0) exitWith { ["You need to be a registered wood logger to collect logs. Sign up at the job centre!",15,"red"] call A3L_Fnc_Msg; };
if(vehicle player != player) exitWith {cutText ["You cannot collect logs inside a vehicle!","PLAIN",2];};
 
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {cutText ["Your inventory is full!","PLAIN",2];};
life_action_inUse = true;
 
_time = 2;
_profName = [_mine] call life_fnc_profType;
if( _profName != "" ) then
{
_data = missionNamespace getVariable (_profName);
_time = ( 2 - (0.25 * (_data select 0)));
};
 
for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
uiSleep _time;
};
 
 
if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	cutText ["You have collected 2 logs succesfully.","PLAIN",2];
};

life_action_inUse = false;