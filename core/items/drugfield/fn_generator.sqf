/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_generator","_tent"];
if(playerSide != civilian) exitWith {}; 
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 15];
if ((count _tent) == 0) exitWith {hint "You cannot do your drugs operation without netting nearby!";[true,"generator",1] call life_fnc_handleInv; };
_tent = (_tent select 0);
if(vehicle player != player) exitWith {[true,"generator",1] call life_fnc_handleInv; cutText ["You cannot place generator while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"generator",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the generator on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the chair here, the surface is too steep.";[true,"chair",1] call life_fnc_handleInv; };
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the generator here, the surface is too steep.";[true,"generator",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "city") < 1500)) exitWith {[true,"generator",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot do drugs so close to Lakeside, there is too much of a police presence!"];};
if(life_generatordrugfield == 1) exitWith {[true,"generator",1] call life_fnc_handleInv; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have a generator in active deployment."];};
_generator = "Land_Portable_generator_F" createVehicle [0,0,0];
_generator setDir 90;
_generator setVariable["item","generatorDeployed",true];
_generator attachTo[player,[0,1,1]];
life_generatordrugfield = 1;

life_action_generatorDeploy = player addAction["Place",{if(!isNull life_generator) then {detach life_generator; life_generator = ObjNull;}; player removeAction life_action_generatorDeploy; life_action_generatorDeploy = nil;},"",999,false,false,"",'!isNull life_generator'];
life_generator = _generator;
waitUntil {isNull life_generator};
if(!isNil "life_action_generatorDeploy") then {player removeAction life_action_generatorDeploy;};
if(isNull _generator) exitWith {life_generator = ObjNull;};
_generator setPos [(getPos _generator select 0),(getPos _generator select 1),0];
life_action_generatorPickup = player addAction["Pack Up Generator",life_fnc_packupgenerator,"",0,false,false,"",
' _generator = nearestObjects[getPos player,["Land_Portable_generator_F"],8] select 0; !isNil "_generator" && !isNil {(_generator getVariable "item")}'];