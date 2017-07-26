/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cobra

	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
diag_log pyd_dead_gear;
player setUnitLoadout pyd_dead_gear;
pyd_dead_gear = [];
1 cutText ["", "BLACK IN", 60];
player switchCamera "Internal";
player setAmmo [primaryWeapon player, 0];

life_corpse setVariable["realname",nil,true]; //Should correct the double name sinking into the ground.
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
_revfee = (call life_revive_fee);
if(license_civ_insurance) then { _revFee = _revFee/4; };
hint format["A medic has revived you for a fee of $%1",_revFee];
player setVariable ["tf_voiceVolume", 1, true];
disableUserInput false;



closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;
if(life_atmcash > _revfee) then {
	life_atmcash = life_atmcash - _revfee;
} else {
	life_atmcash = 0;
};


player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
[[life_corpse],"life_fnc_corpse",true,false] spawn life_fnc_MP;
hideBody life_corpse;
disableUserInput false;
player allowDamage true;
life_action_inUse = false;
life_death = 2;
player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
player setVariable["CPR",nil,TRUE];
player setVariable ["EMSON",2,true];

_chance = round (random 1000);
if(_chance > 850) then {
	player setVariable ["bleedingon",(round (random 5)),true];
};

_chance = round (random 1000);
if(_chance > 650) then {
	player setVariable ["woundedon",(round (random 5)),true];
};

_chance = round (random 1000);
if(_chance > 450) then {
	player setVariable ["fractureon",(round (random 7)),true];
};

_chance = round (random 1000);
if(_chance > 450) then {
	player setVariable ["unconciouson",(round (random 7)),true];
};

[] call life_fnc_hudUpdate; //Request update of hud.


//add freeze script on revive

disableUserInput true;
life_action_inUse = true;
[[player,"AinjPpneMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
uiSleep 15;

detach player;
deleteVehicle _obj;
disableUserInput false;
life_action_inUse = false;
deleteVehicle life_corpse;
life_corpse hideObject true;
[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
[] execVM "statusBar.sqf";
life_nlrtimer_stop = true;
//profileNamespace setVariable["swuyecamar",nil];
