/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_deployingcurrently == 1) exitWith { ["You are already deploying a barrier, wait until you're finished!",10,"red"] call A3L_Fnc_Msg;  };
if (cobra_barriers == 5) exitWith { ["Maximum number of barriers deployed!",10,"red"] call A3L_Fnc_Msg;  };
if(vehicle player != player) exitWith {["You cannot do this while inside of a vehicle!!",10,"red"] call A3L_Fnc_Msg;};
if((player getVariable["restrained",false])) exitWith {};
if (playerside == civilian) exitWith {hint "da fuck";};
cobra_deployingcurrently = 1;
cobra_barriers = cobra_barriers + 1;
_pos = position player;
_jamesisabaldfuckingcuntwholovestomeme = "plp_up_WoodBarrierLongPolice" createVehicle ([0,0,0]);
_dir = getDir player;
_jamesisabaldfuckingcuntwholovestomeme setpos _pos;
_jamesisabaldfuckingcuntwholovestomeme setDir _dir;
cobra_deployingcurrently = 0;
["Barrier deployed!",10,"blue"] call A3L_Fnc_Msg;
