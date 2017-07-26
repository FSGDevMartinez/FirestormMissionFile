/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_light","_generator"];
if(playerSide != civilian) exitWith {}; 
_generator = nearestObjects [(getPos player),["Land_Portable_generator_F"], 15];
if ((count _generator) == 0) exitWith {hint "You cannot place lights without a generator!"; [true,"light",1] call life_fnc_handleInv;};
_generator = (_generator select 0);
if(vehicle player != player) exitWith {[true,"light",1] call life_fnc_handleInv; cutText ["You cannot place light while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"light",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the light on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the chair here, the surface is too steep.";[true,"chair",1] call life_fnc_handleInv; };
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the light here, the surface is too steep.";[true,"light",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "city") < 1500)) exitWith {[true,"light",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot do drugs so close to Lakeside, there is too much of a police presence!"];};
if(life_lightdrugfield == 3) exitWith {[true,"light",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have the maximum of 3 lights in active deployment."];};
_light = "Land_PortableLight_double_F" createVehicle [0,0,0];
_light setDir 90;
_light setVariable["item","lightDeployed",true];
_light attachTo[player,[0,1,1]];
life_lightdrugfield = life_lightdrugfield + 1;

life_action_lightDeploy = player addAction["Place",{if(!isNull life_light) then {detach life_light; life_light = ObjNull;}; player removeAction life_action_lightDeploy; life_action_lightDeploy = nil;},"",999,false,false,"",'!isNull life_light'];
life_light = _light;
waitUntil {isNull life_light};
if(!isNil "life_action_lightDeploy") then {player removeAction life_action_lightDeploy;};
if(isNull _light) exitWith {life_light = ObjNull;};
_light setPos [(getPos _light select 0),(getPos _light select 1),0];
life_action_lightPickup = player addAction["Pack Up Light",life_fnc_packuplight,"",0,false,false,"",
' _light = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_light" && !isNil {(_light getVariable "item")}'];