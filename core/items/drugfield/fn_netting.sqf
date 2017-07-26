/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_netting"];
if(playerSide != civilian) exitWith {}; 
if(vehicle player != player) exitWith {[true,"netting",1] call life_fnc_handleInv; cutText ["You cannot place netting while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"netting",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the netting on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the netting here, the surface is too steep.";[true,"netting",1] call life_fnc_handleInv; };
if (surfaceIsWater (getPos player)) exitWith {hint "You cannot place netting on water!";};
if ((player distance (getMarkerPos "city") < 1500) OR (player distance (getMarkerPos "civ_spawn_4") < 300) OR (player distance (getMarkerPos "civ_spawn_2") < 300)) exitWith 
{
	hint parseText format["<t color='#FA4F4F'><t size='1.2'>It's too dangerous to grow drugs so close to popular areas."];
	[true,"netting",1] call life_fnc_handleInv;
};
if(life_nettingdrugfield == 1) exitWith {[true,"netting",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have some netting in active deployment."];};
_netting = "CamoNet_INDP_Curator_F" createVehicle [0,0,0];
_netting setDir 90;
_netting setVariable["item","nettingDeployed",true];
_netting attachTo[player,[0,2,3]];
life_nettingdrugfield = 1;

life_action_nettingDeploy = player addAction["Place",{if(!isNull life_netting) then {detach life_netting; life_netting = ObjNull;}; player removeAction life_action_nettingDeploy; life_action_nettingDeploy = nil;},"",999,false,false,"",'!isNull life_netting'];
life_netting = _netting;
waitUntil {isNull life_netting};
if(!isNil "life_action_nettingDeploy") then {player removeAction life_action_nettingDeploy;};
if(isNull _netting) exitWith {life_netting = ObjNull;};
_netting setPos [(getPos _netting select 0),(getPos _netting select 1),0];
life_action_nettingPickup = player addAction["Pack Up Netting",life_fnc_packupnetting,"",0,false,false,"",
' _netting = nearestObjects[getPos player,["CamoNet_INDP_Curator_F"],8] select 0; !isNil "_netting" && !isNil {(_netting getVariable "item")}'];