
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Supernova Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,150],
		["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["G_Balaclava_TI_blk_F",nil,10]
		];
	};
	
	case 2:
	{
		[
		["TRYK_H_headset2",nil,20],
		["H_Beret_Colonel",nil,20]
		];
	};
	
	case 3:
	{
		[
		["ALRP_Supernova",nil,3000]
				];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]	
		];
	};
};