//gold bars
private ["_cops","_suitcase","_diff","_mine","_goldamt"];
_suitcase = _this select 0;
_cops = (west countSide playableUnits);
if(_cops < 7) exitWith { hint "You need atleast 7 cops online to steal gold..."; }; 
if ( cgbankvault1 animationPhase "d_o_Anim" != 1 ) exitWith {
	["The vault door is closed, you cant grab cash right now...",30,"red"] call A3L_Fnc_Msg;
};
if (_suitcase getVariable ["robbed", false]) exitwith {hint "This suitcase has been robbed, there is nothing left inside of it."; life_action_inUse = false; life_nospampls = 0;};
if (life_nospampls == 1) exitWith { hint "Slow down!"; };
life_nospampls = 1;
_goldamt = 2 + round(random 2);
_mine = "gold";
_diff = [_mine,_goldamt,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "You cannot take these gold bars, please make some space in your bag."; life_nospampls = 0;};
life_action_inUse = true;
_time = 1 + round(random 4); 
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	uiSleep _time;
};
if (_suitcase getVariable ["robbed", false]) exitwith {hint "This suitcase has been robbed, there is nothing left inside of it."; life_action_inUse = false; life_nospampls = 0;};
_suitcase setVariable ["robbed", true, true];
if(([true,_mine,_diff] call life_fnc_handleInv)) then {
hint format ["You picked up %1 gold bars..",_goldamt];
[true,"gold",_goldamt] call life_fnc_handleInv;
};
life_action_inUse = false;
life_nospampls = 0;
