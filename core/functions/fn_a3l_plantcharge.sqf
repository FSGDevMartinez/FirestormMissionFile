private ["_copamount","_time"];
if (playerside != civilian) exitWith {};
if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["You don't have a satchel charge.",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault getVariable "hacking") exitwith {["Someone is already committing a major crime, you cannot place the blastingcharge when this is happening.",30,"red"] call A3L_Fnc_Msg; [true, "blastingcharge", 1] call life_fnc_handleInv;};
if (cgbankvault1 getVariable "hacking") exitwith {["Someone is already committing a major crime, you cannot place the blastingcharge when this is happening.",30,"red"] call A3L_Fnc_Msg; [true, "blastingcharge", 1] call life_fnc_handleInv;};
_copamount = west countSide playableUnits;
if (_copamount < 4) exitwith {["You cannot do this without a minimum of 4 police on duty.",30,"red"] call A3L_Fnc_Msg; [true, "blastingcharge", 1] call life_fnc_handleInv;};
["You planted the charge, this will take around 25 seconds to detonate.",30,"green"] call A3L_Fnc_Msg;
_storename = "isthisadream?";
_time = 22 + round(random 12); 
[[1,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. ALL UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. ALL UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
uiSleep _time;
if (!alive player) exitWith {};
_cunt = "Bo_GBU12_LGB_MI10" createVehicle position prisondoor;
uiSleep 1;
gate_house animate ['animategatedoor', 1];
["Charge detonated! Both DOC doors are now open.",30,"green"] call A3L_Fnc_Msg;
