// Give money, check variable 5 minutes or w/e
private ["_timer"];
_pile = _this select 0;
if ( cgbankvault animationPhase "d_o_Anim" != 1 ) exitWith {
	hint "The vault door is closed, you cannot grab right now.";
};

if (animationState player == "AinvPknlMstpSnonWnonDnon_medic_1") exitwith {hint "You are already grabbing a bag!";};
if (count (attachedobjects player) > 1) exitwith {hint "You are carrying too much.";}; 
if (_pile getVariable ["robbed", false]) exitwith {hint "This stash was recently robbed.";};
_timer = 5 + (floor(random 5));
["Grabbing the money.... this will take a few seconds!",30,"red"] call A3L_Fnc_Msg;
_pile setVariable ["robbed", true, true];

[_timer,_pile] spawn {
	_timer = _this select 0;
	_pile = _this select 1;
	
	life_num = 0;
	{
	  detach _x;
	} forEach attachedObjects player;	

	while {_timer > 0} do {

		if(life_istazed) exitWith {}; //Tazed
		if(life_interrupted) exitWith {};

		if((player getVariable["restrained",false])) exitWith {};
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
			
		_timer = _timer - 1;
		if (_timer < 1) exitwith {
			private ["_veh","_id"];
			[_pile,true] remoteExecCall ["TON_fnc_hideThis",2];
			hint "You've stashed all the cash inside of the bag, go to the trader!";
			_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
			{_veh disableCollisionWith _x} foreach playableUnits;
			_veh setVariable ["pickup",false,true];
			_veh attachto [player, [0.1,-0.18,0], "rfemur"];
			_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
			_veh setpos (getpos _veh);
			_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];
			
			[_veh,_id] spawn {
				_veh = _this select 0;
				_id = _this select 1;
				_suitcaseDeleted = false;
				while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
					if ((!(isNull objectParent player)) && (!(_suitcaseDeleted))) then 
					{
						player removeAction _id;
						detach _veh;
						deleteVehicle _veh;
						_suitcaseDeleted = true;
					};
				
					if ((_suitcaseDeleted) && (isNull objectParent player)) then {
						_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player);
						{_veh disableCollisionWith _x} foreach playableUnits;
						_veh setVariable ["pickup",false,true];
						_veh attachto [player, [0.1,-0.18,0], "rfemur"];
						_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
						_veh setpos (getpos _veh);
						_id = player addAction ["Drop Bag of Cash", {detach (_this select 3)},_veh];
						_suitcaseDeleted = false;
					};
					
					if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
					if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
					//if (!(!deadPlayer)) exitwith {detach _veh;};
					if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
					uiSleep 0.1;
				};
				
				detach _veh;
				_veh setVariable ["pickup",true,true];
				player removeAction _id;
			};
			
		};
		
		uiSleep 1.5;
	};
};