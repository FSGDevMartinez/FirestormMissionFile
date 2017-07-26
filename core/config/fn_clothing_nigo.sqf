
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,150],
		["TRYK_U_B_JSDF_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["jamie_blackhelmet",nil,35],
		["TRYK_H_Helmet_JSDF",nil,35]
		];
	};
	
	case 2:
	{
		[
		["G_Balaclava_blk",nil,10],
		["G_Bandanna_oli",nil,10]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000],
		["V_PlateCarrier1_tna_F",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};