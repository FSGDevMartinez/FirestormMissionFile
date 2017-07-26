/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { ["Only civilians are permitted to use the mystery weapon dealer!",10,"red"] call A3L_Fnc_Msg; };
if (!license_civ_rebel) exitWith { ["You need a rebel license to use the mystery weapon dealer!",10,"red"] call A3L_Fnc_Msg; };
if (cobra_mysterymemes == 1) exitWith { ["You are already using the mystery weapon dealer!",10,"red"] call A3L_Fnc_Msg;  };
if (life_cash < 10500) exitWith { ["You do not have enough money ($10,500) to use the mystery weapon dealer.",10,"red"] call A3L_Fnc_Msg; };
life_cash = life_cash - 10500;
cobra_mysterymemes = 1;
//array of memes
memes = [
"RH_ttracker",
"RH_mp412",
"RH_python",
"RH_M16a1",
"RH_M16A3",
"RH_kimber_nw",
"hgun_ACPC2_F",
"hgun_Pistol_heavy_01_F",
"RH_vp70",
"RH_muzi",
"RH_tec9",
"RH_vz61",
"RH_g18",
"RH_ar10",
"RH_m4_des",
"RH_m4_tg",
"RH_m4_wdl",
"hlc_rifle_ak74_dirty",
"hlc_rifle_ak74_dirty2",
"hlc_smg_mp5k_PDW",
"RH_g17",
"RH_g19",
"RH_m9",
"hgun_Rook40_F",
"RH_mk2",
"RH_m9c",
"hgun_P07_F",
"RH_gsh18",
"RH_Hk416",
"A3L_AK47sgold",
"RH_ttracker_g",
"hgun_Pistol_heavy_02_F",
"RH_fnp45t",
"FHQ_arifle_ACR_snw",
"SMG_05_F",
"hgun_PDW2000_F"
];
/*Weapon*/
rand = count memes;
_randnum = round (random rand);
_MysteryWeapon = memes select _randnum;

/*Ammo*/
_ammoamt = 1 + (round random 4);
_MysteryAmmo = (getarray (configFile >> "CFGWeapons" >> _MysteryWeapon >> "magazines") select 0);  


["Crate ordered, good luck!",8,"green"] call A3L_Fnc_Msg;
uiSleep 1;
player allowdamage false;
crate = "RHpistammobox" createVehicleLocal (getpos player);  
player disablecollisionwith crate;
crate setpos (getposATL player);	
crate allowDamage false;
clearWeaponCargoGlobal crate;
clearMagazineCargoGlobal crate;
clearItemCargoGlobal crate;
crate addWeaponCargo [_MysteryWeapon,1];
crate addMagazineCargo [_MysteryAmmo,_ammoamt];
player allowdamage true;
["Your crate will despawn in 20 seconds.",8,"blue"] call A3L_Fnc_Msg;
_time = 20;
while {_time > 0} do {
	uiSleep 1;
	_time = _time - 1;
	if (!alive player) exitWith { cobra_mysterymemes = 0; deleteVehicle crate;};
	if (_time == 0) exitWith { deleteVehicle crate; cobra_mysterymemes = 0; hint "Your crate despawned.";  };
};