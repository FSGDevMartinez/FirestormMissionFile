
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,150],
		["TRYK_U_B_PCUHsW9",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_PASGT_BLK",nil,10],	
		["H_CrewHelmetHeli_B",nil,10]
		];
	};
	
	case 2:
	{
		[
		["G_Balaclava_TI_blk_F",nil,20],
		["G_Balaclava_TI_G_blk_F",nil,10]
		];
	};
	
	case 3:
	{
		[
		["TRYK_V_ArmorVest_Delta",nil,3000],
		["TAC_V_tacv10LC_BK",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};