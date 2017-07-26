/*
	File: fn_DeadmanSwitch.sqf
	Author: Cobra
	www.rlgroleplay.com
	
	Description:
	Activates/deactivates a suicide vest dead man switch.
*/
private["_explosion"];
if(!(vest player in ["SuicideVest", "SuicideVest_Camo", "SuicideVest_Brown", "SuicideVest_khaki", "SuicideVest_olive"])) exitWith {};

if (life_suicidedeadman == 1) exitWith {
life_suicidedeadman = 0; 
	hint ["Deadman switch disengaged.","#d32df0"] ;
};

life_suicidedeadman = 1; 
hint ["Deadman switch engaged.","#d32df0"] 

waitUntil {
!(vest player in ["SuicideVest", "SuicideVest_Camo", "SuicideVest_Brown", "SuicideVest_khaki", "SuicideVest_olive"]) or !(alive player)
};
    if (life_suicidedeadman == 1) exitWith {
	life_suicidedeadman = 0;  
	_explosion = "Bo_Mk82" createVehicle [0,0,9999];
    _explosion setPos (getPos player);
    _explosion setVelocity [100,0,0];
    removeVest player;
    removeHeadgear player:
    removeGoggles player;
    removeVest player;
    removeBackpack player;
    removeUniform player;
    removeAllWeapons player:
    removeAllAssignedItems player;
    if(alive player) then {
	player setDamage 1;
	};
};
    [] call SOCK_fnc_updateRequest;