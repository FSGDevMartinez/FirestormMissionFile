/*
	File: fn_escortAction.sqf

private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;
OLD SHIT
*/
private "_unit";
_unit = param [0,objNull,[objNull]];
if(isNil "_unit" OR {isNull _unit} OR {!isPlayer _unit}) exitWith {};
if(!(side _unit in [civilian,independent,west])) exitWith {};
if(player distance _unit > 3) exitWith {};
hintSilent "Use Windowskey to automatically stop escorting";
_unit attachTo [player,[0.1,1.1,0]];
_unit setvariable ["transporting",false,true];
_unit setvariable ["Escorting",true,true];
life_escortTarget = _unit;
player reveal _unit;
