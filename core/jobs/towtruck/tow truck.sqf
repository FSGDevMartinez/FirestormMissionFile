/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/

//checks
if (playerside != civilian) exitWith { hint "Only civilians can become a tow truck driver!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press SHIFT+4 to leave your current job."; };
if (Life_TowTruck == 1) exitWith { hint "You're already a tow truck driver!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
//set variables
Life_Working = 1;
Life_TowTruck = 1;
JobType = 6;
cobra_towtruckold = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player addUniform "A3L_Worker_Outfit";
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have became a tow truck driver, a tow truck will be delivered to the impound lot for you to use. Once you're inside your tow truck you are able to tow vehicles to the impound lot and deposit them for cash.</t>"];
/*CHECK WHAT JOB CENTRE THE PLAYER IS AT*/
if (player distance (getMarkerPos "JobCentreLakeside") < 25) then {
_spawn = TaxiSpawn;
_nr = nearestObjects [TaxiSpawn, ["Car","Truck","Motorcycle"], 10];
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; Life_Working = 0;Life_TowTruck = 0;JobType = 0; };
vehspawned = "a3l_towtruck" createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreMorrison") < 25) then {
_spawn = TaxiSpawnMorrison;
_nr = nearestObjects [TaxiSpawnMorrison, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; Life_Working = 0;Life_TowTruck = 0;JobType = 0; };
vehspawned = "a3l_towtruck" createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreSan") < 25) then {
_spawn = JobCentreSan;
_nr = nearestObjects [JobCentreSan, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; Life_Working = 0;Life_TowTruck = 0;JobType = 0;};
vehspawned = "a3l_towtruck" createVehicle (position _spawn);
};
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your tow truck has been delivered succesfully. Remember: You will get an extra payment every 5 minutes until your contact expires. Your contract will last 30 minutes.</t>"];
//setup while loop
_counter = 6;
titleText["Your belongings have been stored in your locker, to get them back you need to sign off (SHIFT+4)","PLAIN"];
while {Life_TowTruck == 1} do {
uiSleep 300; //6*300 = 30 mins
if (!alive player) exitWith {  Life_Working = 0;Life_TowTruck = 0; deleteVehicle vehspawned; JobType = 0; };
if (Life_TowTruck == 0) exitWith {};
hintSilent parseText format["<t size='1.25' color='#ff0000'>A paycheck of $700 has arrived in your bank, head down to your local bank to collect it.</t>"];
cobra_paycheck = cobra_paycheck + 7;
_counter = _counter - 1; //reduce the counter by 1
if (_counter == 0) exitWith { hintSilent parseText format["<t size='1.25' color='#ff0000'>Your job contract has expired. Feel free to sign up to become a tow truck driver again!</t>"];
Life_Working = 0;
Life_TowTruck = 0;
JobType = 0;
deleteVehicle vehspawned; //delete the tow truck
player setUnitLoadout cobra_towtruckold;
 };
};