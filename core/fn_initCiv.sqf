
tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;


if(life_is_arrested) then
{
	disableUserInput false;
	[false,false,life_arrestMinutes] call fnc_jailsetup;
}
	else
{
	disableUserInput true;
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)};
};

player addRating 9999999;
player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_copMarkers;
[] spawn life_fnc_DebugGear;
[] execVM "core\cop\fn_keycards.sqf";