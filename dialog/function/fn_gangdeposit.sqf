#include <macro.h>
if (life_cash == 0) exitWith { hint "You do not have any cash to deposit!"; closeDialog 1; };
life_atmcash = life_atmcash + life_cash;
life_cash = 0;
closeDialog 1;
hint "You deposited all of your cash!";
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
