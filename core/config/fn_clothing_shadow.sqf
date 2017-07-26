
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Shadow Family Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["kio_skl_msk_pun",nil,35],
		["kio_skl_msk_black",nil,35],
		["kio_skl_msk_blood",nil,35],
		["kio_skl_msk_fire",nil,35],
		["kio_skl_msk_UK",nil,35]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclavas",nil,10],
		["Mask_M40",nil,10],
		["Mask_M40_OD",nil,10]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};