#include <macro.h>
if(playerSide in [west,independent]) exitWith 
{ 
["You cannot have sex while on duty, don't be silly!",15,"orange"] call A3L_Fnc_Msg;
};
if(life_std != 1) then 
{ 
["You are not wearing a condom, but screw it! Let's do this anyway, whatever the risk..",3,"green"] call A3L_Fnc_Msg;
};

if (life_atmcash > 1000) then
{
life_std = 0;
life_atmcash = life_atmcash - 1000;
titleCut ["", "BLACK FADED", 999];
[[player,"ssounds"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
uiSleep 20;
titlecut [" ","BLACK IN",3]; 
["Ewww... I feel dirty now, maybe I need a good spray of deodorant?",15,"red"] call A3L_Fnc_Msg;
life_dirt = 100;
player setfatigue 1;
life_poop = life_poop + 5;
[[player,"win"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
uiSleep 12;
player setFatigue 0;
["I think I caught something...",15,"red"] call A3L_Fnc_Msg;
[] call life_fnc_hudUpdate;
}
else
{
["Ummmm.... You do not have the $1000 I want. What? You think i work for free?",8,"red"] call A3L_Fnc_Msg;
};