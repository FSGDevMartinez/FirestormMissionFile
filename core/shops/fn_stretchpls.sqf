/*
	File: fn_stretcherpls
*/

if(side player == independent && life_stretcher) then {
	life_stretcher = 0;
	hint "Stretcher spawned - You have reached your maximum of 1";
	_location = getpos player;
	_stretcher = "cg_Stretcher" createvehicle _location;
};