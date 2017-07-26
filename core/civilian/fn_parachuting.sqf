#include <macro.h>

private ["_backpackName","_backpackItems","_x"];

if(playerSide in [west,independent]) then {
hint "You shouldn't be doing this while working, but go have some fun!";
}; 

titleCut ["", "BLACK FADED", 999];

life_action_inUse = true;
uiSleep 2;

_backpackName = backpack player;
_backpackItems = backpackItems player;
uiSleep 1;

removeBackpack player;
player addBackpack "B_Parachute"; 
player setPos [getPos player select 0, getPos player select 1, 500]; 
uiSleep 2;

titlecut [" ","BLACK IN",3]; 
player allowDamage false;
cutText ["You are now skydiving, have fun!","PLAIN",2];

waitUntil {(vehicle player != player)};	

waitUntil {isTouchingGround player};
	uiSleep 1;
	player allowDamage true;
	
	removeBackpack player;
	uiSleep 1;
	
	player addBackpack _backpackName;
	clearBackpackCargo player;
	{
		[_x,true,true] call life_fnc_handleItem;
	} foreach _backpackItems;


life_action_inUse = false; 