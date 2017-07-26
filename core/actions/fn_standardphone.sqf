/*
Charge phone to 100
*/
if(life_cash < 250) exitWith { titleText["STORE CLERK: Not enough money, I need $250.","PLAIN"]; };
if(life_battery > 99) exitWith { titleText["STORE CLERK: Already charged.","PLAIN"]; };
titleText["STORE CLERK: Okay, let me charge that for you.","PLAIN"];
uiSleep 3;
life_battery = 100;
life_cash = life_cash - 250;
playSound3D ["ALRPSounds\snds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
titleText["Charged, Thank You - Come Again!","PLAIN"];