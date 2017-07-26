/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 4) exitWith { hint "You need atleast 4 cops online to hack the evidence locker vault.."; }; 

_storename = "hi";



if(life_inv_hackingtool == 0) exitwith {
	hint "You need some sort of hacking device to unlock this safe..";	
};


if (evidencelocker getVariable "robbed") exitwith {["This vault was recently robbed.",30,"red"] call A3L_Fnc_Msg;};
if (cgbankvault getVariable "hacking") exitwith {["Someone is already committing a major crime, you cannot hack the vault when this is happening.",30,"red"] call A3L_Fnc_Msg;};
if (evidencelocker getVariable "hacking") exitwith {["This is already being hacked...",30,"red"] call A3L_Fnc_Msg;};
if (evidencelocker animationPhase "d_l_Anim" == 1) exitwith {["The bank appears unlocked...",30,"red"] call A3L_Fnc_Msg;};
if (life_inv_hackingtool > 0 && !hacking && evidencelocker animationPhase "d_l_Anim" == 0 ) then {

	hint "You set your wireless hacking device to the vault, it should take roughly 5 minutes. You can move while hacking, though, you might make noises.";
	evidencelocker say "bankAlarm";
	evidencelocker setVariable["hacking",true,true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 150;  //change to 250 
	while {_num > 0} do {
		if ( _num == 150 || _num == 100 || _num == 80 || _num == 50 || _num == 30 ) then {


			playSound3D ["ALRPSounds\snds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[[1,format["LAKESIDE NEWS: DOC IS UNDER ATTACK, ALL CIVLIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[1,format["911 DISPATCH: SOMEONE WAS DETECTED ATTEMPTING TO BREAK INTO THE DOC EVIDENCE LOCKER - ALL UNITS RESPOND",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
		if(!alive player) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(!alive player) then {
		evidencelocker setVariable["hacking",false,true];
		hacking = false;
	};

	if(alive player) then {
		evidencelocker setvariable ["robbed",true,true];
		evidencelocker animate ["d_l_Anim",1];
		evidencelocker setVariable["hacking",false,true];
		playSound3D ["ALRPSounds\snds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
	//	[] call fnc_cgbankresettimer;
	};
};