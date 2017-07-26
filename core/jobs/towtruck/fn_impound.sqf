/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_vehicle", "_veh"];
if (player distance getMarkerPos "marker_223" < 100) then {
_vehicle = nearestObjects[ImpoundSpawn_1, ["Car", "Truck", "Motorcycle"], 6];
} else {
_vehicle = nearestObjects[ImpoundSpawn, ["Car", "Truck", "Motorcycle"], 6];
};

_veh = _vehicle select 0;

if (life_nospampls == 1) exitWith { hint "Slow down!"; };
if (Life_TowTruck == 0) exitWith {
    hint "Only tow truck drivers can impound vehicles!";
};

if (count _vehicle == 0) exitWith {
    hint "No vehicles nearby to impound!";
};

if (count _vehicle > 1) exitWith {
    hint "There are too many vehicles nearby, make sure there is only one vehicle in the impound zone.";
};
life_nospampls = 1; //just in case
[
    [_veh, true, player], "TON_fnc_vehicleStore", false, false
] spawn life_fnc_MP;
if (_veh in life_vehicles) then {
    hintSilent parseText format["<t size='1.25' color='#ff0000'>You have succesfully impounded your own vehicle so you did not get paid.</t>"];
} else {
    _amt = 200 + round random(500);
    hintSilent parseText format["<t size='1.25' color='#ff0000'>You have succesfully impounded the vehicle and got paid $%1.</t>", _amt];
    life_atmcash = life_atmcash + _amt;
};
life_nospampls = 0;