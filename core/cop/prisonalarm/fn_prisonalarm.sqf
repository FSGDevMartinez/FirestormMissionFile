/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if(playerSide != west) exitWith {}; 
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 4;
stop1 animate ["stop", 1];
stop2 animate ["stop", 1];
stop3 animate ["stop", 1];
stop4 animate ["stop", 1];
bollard1 animate ["bollard", 1.3];
bollard2 animate ["bollard", 1.3];
PrisonSiren1 setVariable ["prison_alarm", true, true];
_storename = "isthisadream?";
[[1,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

while {PrisonSiren1 getVariable "prison_alarm"} do {
	[[PrisonSiren1, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[PrisonSiren2, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[PrisonSiren3, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[1,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	uiSleep 35;
	[[1,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["DISPATCH: Jail alarm has been sounded! ---- ALL UNITS RESPOND ----",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[PrisonSiren1, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[PrisonSiren2, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[PrisonSiren3, "prisonalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
};
