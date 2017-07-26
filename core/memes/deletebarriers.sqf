/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_deployingcurrently == 1) exitWith { ["You are deploying a cone/barrier, wait until you're finished!",10,"red"] call A3L_Fnc_Msg;  };
if(vehicle player != player) exitWith {["You cannot do this while inside of a vehicle!!",10,"red"] call A3L_Fnc_Msg;};
_list = position player nearObjects ["plp_up_WoodBarrierLongPolice",1.5];
_chck = nearestObjects[getPos player,["plp_up_WoodBarrierLongPolice"],1.5] select 0;
_barrier = (_list select 0);
if(isNil "_chck") then { //No barrier
} else {
deleteVehicle _barrier;
["Deleted barrier!",10,"green"] call A3L_Fnc_Msg;
cobra_barriers = cobra_barriers - 1;
};

_list2 = position player nearObjects ["RoadCone_F",1.5];
_chck2 = nearestObjects[getPos player,["RoadCone_F"],1.5] select 0;
_cone = (_list2 select 0);
if(isNil "_chck2") exitWith {};
deleteVehicle _cone;
["Deleted cone!",10,"green"] call A3L_Fnc_Msg;
cobra_cones = cobra_cones - 1;