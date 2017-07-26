/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_fixing == 1) exitWith { hint "You are already fixing an object.";};
cobra_fixing = 1;
hint "Fixing object... Please wait.";
_time = 4;
_memes = nearestTerrainObjects [player, [], 10] ;
_meme = _memes select 0;
life_action_inUse = true;
_pos = getPos player;
while {_time > 0} do {
if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
};
uiSleep 1;
_time = _time - 1;
if( player distance _pos > 5 ) exitwith { titleText["You moved too far away - the object was not fixed.","PLAIN"];life_action_inUse = false;cobra_fixing = 0;};
};
_chance = (round random 100);
_randamt = (round random 50);
if (_chance > 50) then { hint "You were issued a reward for fixing that object!"; life_cash = life_cash + _randamt };
_meme setDamage 0;
cobra_fixing = 0;
life_action_inUse = false;