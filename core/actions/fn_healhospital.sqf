/*
	File: fn_healHospital.sqf
	Author: Cobra
	www.armaliferp.co.uk
*/
if (license_civ_insurance) exitWith { 
hint "As you have health insurance, this hospital visit will not charge you anything."; 
titleCut ["", "BLACK FADED", 999]; 
uiSleep 10; 
player setDamage 0; 
player setVariable ["unconciouson",1,true]; 
player setVariable ["woundedon",1,true]; 
player setVariable ["fractureon",1,true]; 
player setVariable ["bleedingon",1,true];
titlecut [" ","BLACK IN",3];
};
if (life_atmcash > 5000) then {
life_atmcash = life_atmcash - 5000; 
hint "Please stay close.";
titleCut ["", "BLACK FADED", 999]; 
uiSleep 10; 
player setDamage 0; 
player setVariable ["unconciouson",1,true]; 
player setVariable ["woundedon",1,true]; 
player setVariable ["fractureon",1,true]; 
player setVariable ["bleedingon",1,true]; 
titlecut [" ","BLACK IN",3];
hint "The doctor has healed you for a small charge of $5000, to avoid this charge purchase health insurance.";
} else {
hint "You do not have enough money to be healed by the doctor. Either gain more money or purchase health insurance.";
};

