/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
_memes = 0;
_uni = uniform player;
_vest = vest player;
_hat = headgear player;
_wep = currentWeapon player;

if (_uni == "U_B_CombatUniform_mcam" OR _uni == "U_B_CombatUniform_mcam_tshirt" OR _uni == "U_I_CombatUniform") then { player forceAddUniform "ALRPTrump"; _memes = 1; };
if (_vest == "V_PlateCarrier1_rgr" OR _vest == "V_PlateCarrierSpec_rgr" OR _vest == "V_PlateCarrierIA1_dgtl") then { removeVest player; _memes = 1;};
if (_hat == "H_HelmetB" OR _hat == "H_HelmetB_light_desert" OR _hat == "H_HelmetIA") then { removeHeadgear player; _memes = 1; };
if (_wep == "arifle_MX_ACO_pointer_F" OR _wep == "hgun_P07_F") then { removeAllWeapons player;  _memes = 1;};
if (_memes == 1) then {
removeAllAssignedItems player;	
uiSleep 2;
["You was issued with default gear because you had gear equipped that was not available to regular players.",15,"red"] call A3L_Fnc_Msg;
[] spawn SOCK_fnc_syncData;
_items = uniformItems player;
player forceAddUniform uniform player;
{player addItemToUniform _x} foreach _items;
_vestItems = vestItems player;
player addVest vest player;
{player addItemToVest _x} foreach _vestItems;
};