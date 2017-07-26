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
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 2;};
	case (player distance (getMarkerPos "uranium_1") < 100): {_mine = "uranium"; _val = 1;};
	case (player distance (getMarkerPos "jail") < 10): {_mine = "stone"; _val = 1;};
	case (player distance (getMarkerPos "jail_1") < 10): {_mine = "stone"; _val = 1;};
	case (player distance (getMarkerPos "jail_1_1") < 10): {_mine = "stone"; _val = 1;};
	case (player distance (getMarkerPos "sandmine") < 50): {_mine = "sand"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if (Life_Miner == 0) exitWith { ["You need to be a registered miner to mine here. Sign up at the job centre!",15,"red"] call A3L_Fnc_Msg; };

if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	uiSleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;