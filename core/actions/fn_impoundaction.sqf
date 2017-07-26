/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP"];
_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};

if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];

	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle; hint "This job vehicle has been deleted.";}; //Job Vehicle... No where to impound.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	
	closeDialog 0;
	life_action_inUse = true;
	
	_upp = localize "STR_NOTF_Impounding";
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		uiSleep 0.09;
		_cP = _cP + 0.02;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	5 cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
	if(!alive player) exitWith {life_action_inUse = false;};
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Bicycle"): {_price = (call life_impound_car);};		
			case (_vehicle isKindOf "Motorbike"): {_price = (call life_impound_car);};		
			case (_vehicle isKindOf "Motorcycle"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
			case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
		};
		life_impound_inuse = true;
		[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
		waitUntil {!life_impound_inuse};
              if (_vehicle in life_vehicles) then {
                hint "You impounded your own vehicle.";
            } else {
                hint format[localize "STR_NOTF_Impounded",_type,_price];
                life_atmcash = life_atmcash + _price;
            };		
		closeDialog 0;

};
life_action_inUse = false;