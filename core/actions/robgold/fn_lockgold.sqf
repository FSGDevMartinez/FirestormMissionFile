/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault1 animationPhase "d_l_Anim" == 1) then {
	hint "You are locking the bank vault.";
	uiSleep 5;
	cgbankvault1 animate ["d_l_Anim",0];
	cgbankvault1 setVariable["hacked",false,true];
	suitcase1 setvariable ["robbed",false,true];
	suitcase2 setvariable ["robbed",false,true];
	suitcase3 setvariable ["robbed",false,true];
	hint "Vault locked.";
} else {
	hint "You dont have the keys to this vault.";
};