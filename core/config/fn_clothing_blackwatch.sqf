
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Blackwatch Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,150],
		["ALRP_Blackwatch_Uniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["kio_skl_msk_o",nil,10],	
		["kio_skl_msk_black",nil,10],
		["kio_skl_msk_red",nil,10],
		["kio_skl_msk",nil,10],
		["kio_skl_msk_grn",nil,10],
		["kio_skl_msk_p",nil,10]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,20]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000],
		["ALRP_Blackwatch",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};