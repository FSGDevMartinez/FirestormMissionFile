/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 4) exitWith { hint "You need atleast 4 cops online to rob the bank..."; }; 

_storename = "hi";



if(life_inv_hackingtool == 0) exitwith {
	hint "You need some sort of hacking device to unlock this safe..";	
};


if (cgbankvault getVariable "robbed") exitwith {["This bank was recently robbed.",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault getVariable "hacking") exitwith {["This is already being hacked...",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault1 getVariable "hacking") exitwith {["Someone is already committing a major crime, you cannot hack the vault when this is happening.",30,"red"] call A3L_Fnc_Msg;};

if (cgbankvault animationPhase "d_l_Anim" == 1) exitwith {["The bank appears unlocked...",30,"red"] call A3L_Fnc_Msg;};

if (life_inv_hackingtool > 0 && !hacking && cgbankvault animationPhase "d_l_Anim" == 0 ) then {

	hint "You set your wireless hacking device to the vault, it should take roughly 5 minutes. You can move while hacking, though, you might make noises.";
	cgbankvault say "bankAlarm";
	cgbankvault setVariable["hacking",true,true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 300;  //change to 300
	while {_num > 0} do {
		if ( _num == 300 || _num == 240 || _num == 180 || _num == 120 || _num == 60 ) then {


			playSound3D ["ALRPSounds\snds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[[1,format["LAKESIDE NEWS: ROBBERY AT LAKESIDE BANK, ALL CIVLIANS STAY BACK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[1,format["911 DISPATCH: BANK ROBBERY IN PROGRESS - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[1,format["911 EMERGENCY: HOSTAGE SITUATION AT LAKESIDE BANK - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
		};
		if(!alive player) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(!alive player) then {
		cgbankvault setVariable["hacking",false,true];
		hacking = false;
	};

	if(alive player) then {
		cgbankvault setvariable ["robbed",true,true];
		cgbankvault animate ["d_l_Anim",1];
		cgbankvault setVariable["hacking",false,true];
		playSound3D ["ALRPSounds\snds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
	//	[] call fnc_cgbankresettimer;
	};
};



