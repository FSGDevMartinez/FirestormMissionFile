/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a taxi drivers!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press SHIFT+4 to leave your current job."; };
if (Life_Taxi == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
taxilist = ["ivory_rs4_taxi","ivory_190e_taxi"];
rand = count taxilist;
_randnum = round (random rand);
_randtaxi = taxilist select _randnum;
//
/*CHECK WHAT JOB CENTRE THE PLAYER IS AT*/
if (player distance (getMarkerPos "JobCentreLakeside") < 25) then {
_spawn = TaxiSpawn;
_nr = nearestObjects [TaxiSpawn, ["Car","Truck","Motorcycle"], 10];
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; Life_Working = 0;Life_Taxi = 0;JobType = 0;};
taxispawned = _randtaxi createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreMorrison") < 25) then {
_spawn = TaxiSpawnMorrison;
_nr = nearestObjects [TaxiSpawnMorrison, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; Life_Working = 0;Life_Taxi = 0;JobType = 0;};
taxispawned = _randtaxi createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreSan") < 25) then {
_spawn = JobCentreSan;
_nr = nearestObjects [JobCentreSan, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; Life_Working = 0;Life_Taxi = 0;JobType = 0;};
taxispawned = _randtaxi createVehicle (position _spawn);
};
JobType = 5;
Life_Working = 1;
Life_Taxi = 1;
cobra = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player addUniform "taxi_uni";
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have become a taxi driver, your job is to pick people up and drive them to their desired location.</t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>REMEMBER: If you do not stick inside of your taxi you run the risk of not being issued a company paycheck<./t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your belongings have been stored in your locker, to get them back you need to sign off (SHIFT+4)</t>"];
_count = 6;
while {Life_Taxi == 1} do {
	uiSleep 300; //6*300 = 30 mins
	_count = _count - 1;
	//if (_count == 1) then { hintSilent parseText format["<t size='1.25' color='#ff0000'>Your job contract will expire in 5 minutes! When your contract expires your taxi will automatically be returned.</t>"]; }:
	if (_count == 0) exitWith { hintSilent parseText format["<t size='1.25' color='#ff0000'>Your job contract has expired! Feel free to sign up again.</t>"]; JobType = 0; Life_Taxi = 0; Life_Working = 0;player setUnitLoadout cobra;};	
if(vehicle player != player) then
		{
		if(typeOf (vehicle player) == "ivory_rs4_taxi") then {
		if (!alive player) exitWith {  Life_Working = 0;Life_Taxi = 0; JobType = 0; };
		hintSilent parseText format["<t size='1.25' color='#ff0000'>A paycheck of $700 has arrived in your bank, head down to your local bank to collect it.</t>"];
		cobra_paycheck = cobra_paycheck + 7; 
		};
	};
};
