/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
//Pre-Checks
if(playerSide != west) exitWith {}; 
//Stops people pressing the key binding while being took hostage.
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
if(koil_antispam == 1) exitWith {};
[] spawn life_fnc_AntiSpam;
life_action_inUse = true;
closeDialog 0;
playSound "panicbutton";
uiSleep 3;
closeDialog 0;
_Pos = position player; 
_marker = createMarker ["MarkerPanicButton", _Pos]; 
"MarkerPanicButton" setMarkerColor "ColorRed";  
"MarkerPanicButton" setMarkerText "***Panic Button Pressed***";
"MarkerPanicButton" setMarkerType "mil_warning";	
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
life_action_inUse = false;
uiSleep 130;
deleteMarker "MarkerPanicButton"; 