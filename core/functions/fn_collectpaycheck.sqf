/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can collect paychecks!"; };
if (cobra_paycheck == 0) exitWith { hint "You have no paychecks to collect!"; };
_pay = cobra_paycheck * 100;
cobra_paycheck = 0;
hintsilent format ["You collected paychecks that totalled up to $%1",_pay];
life_atmcash = life_atmcash + _pay;