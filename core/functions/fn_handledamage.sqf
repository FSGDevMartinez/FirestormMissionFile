
private["_unit","_damage","_source","_projectile","_part","_curWep","_damageReduce"];

_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
life_nolife = 2;

if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;

		if(_projectile in ["CSW_M26C"] && _curWep in ["CSW_M26C","CSW_Taser_Probe_Mag"]) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
					};
				};
			};
			
			
			if(side player == west && side _source == west) then {
				player setVariable ["bleedingon",(round (random 3)),true];
				player setVariable ["woundedon",(round (random 3)),true];
				_damage = false;
			};
		};
	};
};

//Anti-VDM Script
if(vehicle _source isKindOf "Car" OR vehicle _source isKindOf "Air" OR vehicle _source isKindOf "Boat" OR vehicle _source isKindOf "Motorcycle" ) then {
	if(_source != _unit && {alive _unit} && {isPlayer _source}) then {
		_damage = false;
	};
};

_koildeb = player getVariable "bleedingon";
if(_koildeb == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["bleedingon",(round (random 5)),true];
};
};

_koildebi = player getVariable "woundedon";
if(_koildebi == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["woundedon",(round (random 5)),true];
};
};

_koildebii = player getVariable "fractureon";
if(_koildebii == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["fractureon",(round (random 7)),true];
};
};

_koildebiii = player getVariable "unconciouson";
if(_koildebiii == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["unconciouson",(round (random 7)),true];
};
};


_koildebiiii = player getVariable "diseaseon";
if(_koildebiiii == 1) then {
_diseasechance =  round (random 100000);

if(_diseasechance > 99998) then {
	player setVariable ["diseaseon",(round (random 7)),true];
};

};

_damage;