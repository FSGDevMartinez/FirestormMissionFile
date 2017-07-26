
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_OD_OD_R_CombatUniform",nil,150],
		["TRYK_U_B_BLKBLK_R_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_R_CAP_BLK",nil,10],	
		["TRYK_R_CAP_OD_US",nil,10],
		["H_Beret_02",nil,10],	
		["H_Beret_blk",nil,10],
		["H_Beret_Colonel",nil,10]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,20],
		["Mask_M40_OD",nil,20]
		];
	};
	
	case 3:
	{
		[
		["ALRP_Out1",nil,3000],
		["ALRP_Out2",nil,3000],
		["TRYK_V_ArmorVest_Delta",nil,3000],
		["TRYK_V_ArmorVest_Ranger",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};