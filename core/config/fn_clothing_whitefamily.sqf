
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_MARPAT_Wood_Tshirt",nil,150],
		["TRYK_U_B_BLKBLK_CombatUniform ",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_Helmet_MARPAT_Wood",nil,55],
		["CG_sert_H3",nil,55]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,200]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierInd_PMC_blk",nil,3000],
		["V_PlateCarrier1_PMC_marpat",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};