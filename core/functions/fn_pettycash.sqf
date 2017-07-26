// petty cash piles
if ( cgbankvault animationPhase "d_o_Anim" != 1 ) exitWith {
	["The vault door is closed, you cant grab cash right now...",30,"red"] call A3L_Fnc_Msg;
};
if (pstash1 getVariable "robbed") exitWith { hint "There is no petty cash left."; };
pstash1 setVariable ["robbed", true, true];

_funds = 12500 + round(random 17000); 

hint format ["You picked up %1 in petty cash..",_funds];

life_cash = life_cash + _funds;