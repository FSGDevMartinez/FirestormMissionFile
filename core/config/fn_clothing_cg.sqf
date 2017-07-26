#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Coast Guard Clothing"];

_ret = [];
switch (_filter) do
{
	//uniforms
	case 0:
	{
		_ret set[count _ret,["FUTARM_BLUE_MT",nil,100]];
		_ret set[count _ret,["FUTARM_SOLDIER_BLUE_MT",nil,100]];
		_ret set[count _ret,["FUTARM_BROWN_MT",nil,100]];
		_ret set[count _ret,["FUTARM_GRAPE_MT",nil,100]];
		_ret set[count _ret,["FUTARM_GREEN_MT",nil,100]];
		_ret set[count _ret,["FUTARM_GUNNER_MT",nil,100]];
		_ret set[count _ret,["FUTARM_U_BASIC_MT",nil,100]];
		_ret set[count _ret,["FUTARM_U_PILOT_MT",nil,100]];
		_ret set[count _ret,["FUTARM_RED_MT",nil,100]];
		_ret set[count _ret,["FUTARM_WHITE_MT",nil,100]];
		_ret set[count _ret,["FUTARM_YELLOW_MT",nil,100]];
	};
	
	//hats
	case 1:
	{
		_ret set[count _ret,["FUTARM_H_BLUE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_BROWN_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_GRAPE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_GREEN_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_RED_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_WHITE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_YELLOW_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_GUNNER_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_MILCAP_BLUE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_H_MILCAP_MT",nil,25]];
	};
	
	//glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Lowprofile",nil,30],
			["KA_MCU",nil,55],
			["Mask_M40",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55],
			["G_Balaclava_oli",nil,55],
			["G_Bandanna_aviator",nil,75],
			["G_Balaclava_combat",nil,75],
			["KA_MCU",nil,75],
			["G_Balaclava_TI_G_blk_F",nil,75],
			["rpima_goggle_black",nil,75],
			["rpima_goggle_blue",nil,75],
			["rpima_goggle_green",nil,75],
			["rpima_goggle_orange",nil,75]
		];
	};
	
	//Vests
	case 3:
	{
		
		_ret set[count _ret,["FUTARM_V_BLACK_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_BLUE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_BROWN_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_GRAPE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_GREEN_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_RED_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_WHITE_MT",nil,25]];
		_ret set[count _ret,["FUTARM_V_YELLOW_MT",nil,25]];
	};
	
	//Backpack
	case 4:
	{
		_ret set[count _ret,["B_AssaultPack_blk",nil,25]];
		_ret set[count _ret,["cg_invisbp",nil,25]];
		_ret set[count _ret,["TRYK_B_Carryall_blk",nil,25]];
		_ret set[count _ret,["TRYK_B_Kitbag_blk",nil,25]];
		_ret set[count _ret,["TRYK_B_Medbag_BK",nil,25]];
		_ret set[count _ret,["TRYK_B_tube_blk",nil,25]];
		_ret set[count _ret,["B_UAV_01_backpack_F",nil,25]];
		_ret set[count _ret,["B_ViperHarness_blk_F",nil,25]];
		_ret set[count _ret,["B_Static_Designator_01_weapon_F",nil,25]];
	};
};

_ret;