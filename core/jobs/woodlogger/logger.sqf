/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a wood logger!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press SHIFT+4 to leave your current job."; };
if (Life_WoodLogger == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
cobra_waitleave = 1;
Life_Working = 1;
Life_WoodLogger = 1;
JobType = 4;
[true,"axe",1] call life_fnc_handleInv;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You are now working as a wood logger.</t>"];
uiSleep 3;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have been issued a axe and are now permitted to chop down trees in the designated area.</t>"];
cobra_waitleave = 0;
