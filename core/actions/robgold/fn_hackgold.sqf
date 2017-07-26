/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith { hint "You need atleast 2 cops online to rob the gold reserve..."; }; 

_storename = "hi";



if(life_inv_hackingtool == 0) exitwith {
	hint "You need some sort of hacking device to unlock this safe..";	
};


if (cgbankvault1 getVariable "robbed") exitwith {["This vault was recently robbed.",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault getVariable "hacking") exitwith {["Someone is already committing a major crime, you cannot hack the vault when this is happening.",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault1 getVariable "hacking") exitwith {["This is already being hacked...",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault1 animationPhase "d_l_Anim" == 1) exitwith {["The bank appears unlocked...",30,"red"] call A3L_Fnc_Msg;};
if (life_inv_hackingtool > 0 && !hacking && cgbankvault1 animationPhase "d_l_Anim" == 0 ) then {

	hint "You set your wireless hacking device to the vault, it should take roughly 5 minutes. You can move while hacking, though, you might make noises.";
	cgbankvault1 say "bankAlarm";
	cgbankvault1 setVariable["hacking",true,true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 250;  //change to 250 
	while {_num > 0} do {
		if ( _num == 250 || _num == 200 || _num == 180 || _num == 120 || _num == 60 ) then {


			playSound3D ["ALRPSounds\snds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[[1,format["911 DISPATCH: LAKESIDE GOLD RESERVE ROBBERY IN PROGRESS - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[1,format["LAKESIDE NEWS: ROBBERY AT LAKESIDE GOLD RESERVE - ALL CIVILIANS STAY OUT OF GOLD RESERVE!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[1,format["911 EMERGENCY: HOSTAGE SITUATION AT LAKESIDE GOLD RESERVE - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
		};
		if(!alive player) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(!alive player) then {
		cgbankvault1 setVariable["hacking",false,true];
		hacking = false;
	};

	if(alive player) then {
		cgbankvault1 setvariable ["robbed",true,true];
		cgbankvault1 animate ["d_l_Anim",1];
		cgbankvault1 setVariable["hacking",false,true];
		playSound3D ["ALRPSounds\snds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
	//	[] call fnc_cgbankresettimer;
	};
};