/*
File: destroy evidence
*/
private["_curtarget","_unit"];

_curTarget = cursorTarget;
if (life_destroying == 1) exitWith { titleText["You are already destroying evidence.","PLAIN"]; };
life_destroying = 1;
titleText["Destroying Evidence..","PLAIN"];
titleFadeOut 3;
uiSleep 3;
titleText["This will take a couple of minutes to clean up.","PLAIN"];
titleFadeOut 30;
_cme = 1;
_myposy = getPos player;

while {true} do {
	life_action_inUse = true;
	uiSleep 1;
	if( player distance _myposy > 5 ) exitwith { 
		titleText["You moved too far away - the evidence was not destroyed.","PLAIN"];
		life_action_inUse = false;
		life_destroying = 0;
	};
	_cme = _cme + 1;

	if(_cme > 24) exitwith {
	life_action_inUse = false;
		deleteVehicle _curTarget;
		titleText["You have destroyed the evidence and was issued a reward.","PLAIN"];
		life_atmcash = life_atmcash + 1000;
		life_destroying = 0;
	};
};
life_action_inUse = false;
