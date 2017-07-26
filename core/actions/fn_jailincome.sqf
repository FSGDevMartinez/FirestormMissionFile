/*
	File: fn_jailIncome.sqf
	Author: Cobra
	
	Description:
	Allows people in jail to make a little bit of money.
*/
private["_loot"];
if (playerSide != civilian) exitWith {};
if (vehicle player != player) exitWith {};
if (life_junk == 1) exitWith {};
life_junk = 1;
_dice = random(100);
if (_dice < 90) then {
    hint "Sorting through trash....";
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    hint "You have collected 1 junk.";
    [true, "junk", 1] call life_fnc_handleInv;
    sleep 3;
} else {
    hint "You was lucky and found some valuable metal in the trash, you can sell this for extra.";
    [true, "metal", 1] call life_fnc_handleInv
};
life_junk = 0;