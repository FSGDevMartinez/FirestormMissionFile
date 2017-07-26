/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/

//checks
if (playerside != civilian) exitWith { hint "Only civilians can become a tow truck driver!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press SHIFT+4 to leave your current job."; };
if (Life_Repairman == 1) exitWith { hint "You're already a repairman!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
//set variables
Life_Working = 1;
Life_Repairman = 1;
JobType = 7;
cobra_repairmanold = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
player addUniform "A3L_Worker_Outfit";
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have became a repairman, your role is to fix broken or damaged objects around Jackson County. Everytime you fix an object you have a chance of being issued a small reward.</t>"];
//setup while loop
_counter = 8;
titleText["Your belongings have been stored in your locker, to get them back you need to sign off (SHIFT+4)","PLAIN"];
uiSleep 7;
titleText["To repair objects you need to look at them and press END on your keyboard.","PLAIN"];
while {Life_Repairman == 1} do {
uiSleep 300; 
if (!alive player) exitWith {  Life_Working = 0;Life_Repairman = 0;  JobType = 0; };
if (Life_Repairman == 0) exitWith {};
hintSilent parseText format["<t size='1.25' color='#ff0000'>A paycheck of $600 has arrived in your bank, head down to your local bank to collect it.</t>"];
cobra_paycheck = cobra_paycheck + 6;
_counter = _counter - 1; //reduce the counter by 1
if (_counter == 0) exitWith { hintSilent parseText format["<t size='1.25' color='#ff0000'>Your job contract has expired. Feel free to sign up to become a repairman again!</t>"];
Life_Working = 0;
Life_Repairman = 0;
JobType = 0;
player setUnitLoadout cobra_repairmanold;
 };
};