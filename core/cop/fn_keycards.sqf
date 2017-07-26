/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
[] spawn {
	while {true} do {
	if (life_inv_keycard > 0) then {
		cobra_police = 1;
		player setVariable ["copLevel",1,true];
	} else {
		cobra_police = 0;
	};
	sleep 2;
	};
};
