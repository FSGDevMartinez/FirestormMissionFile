/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a miner!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press SHIFT+4 to leave your current job."; };
if (Life_Miner == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
cobra_waitleave = 1;
Life_Working = 1;
Life_Miner = 1;
JobType = 3;
[true,"pickaxe",1] call life_fnc_handleInv;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You are now working as a miner.</t>"];
uiSleep 3;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have been issued a pickaxe and are now permitted to mine in designed zones.</t>"];
cobra_waitleave = 0;
