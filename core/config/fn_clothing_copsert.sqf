#include <macro.h>
/*
	File: fn_clothing_copsert.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"SERT Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["Fox_Sert","SERT Command Uniform",100],
		["CG_SERT3","SERT Uniform",100]
		];
	};
	
	case 1:
	{
		[
		["SO_SERTGRNCAPBK","SERT Patrol Hat 1",25],
		["SO_SERTWHITEBLK","SERT Patrol Hat 2",25],
		["SO_SERTWHITEBLKBK","SERT Patrol Hat 3",25],
		["CG_sert_H2","Task Force Helmet",25],
		["H_Cap_police","SERT Cap",25],
		["H_Beret_blk","SERT Headgear",25],
		["H_Beret_02","SERT Command Headgear",25],
		["CG_sert_H3","SERT High Threat Helmet",25],
		["TRYK_H_ghillie_over_green","Ghillie Suit",25]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,55]
		];
	};
	
	case 3:
	{
		[
		["SERT_VESTV1","SERT Vest",25]
		];
	};
	
	case 4:
	{
		[
        ["AM_PoliceBelt","Tactical Police Belt",25],
		["B_UAV_01_backpack_F","UAV Backpack",50]		
		];
	};
};