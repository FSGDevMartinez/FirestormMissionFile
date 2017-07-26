
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["U_PMC_CombatUniformLS_BSGPBB",nil,150],
		["U_PMC_CombatUniformRS_BSGPBB",nil,150]
		];
	};
	
	case 1:
	{
		[
		["H_Beret_blk",nil,20],
		["TRYK_H_PASGT_BLK",nil,20],
		["TRYK_R_CAP_BLK",nil,20],
		["H_Watchcap_blk",nil,20]
		];
	};
	
	case 2:
	{
		[
		["G_Bandanna_blk",nil,55],
		["G_Bandanna_oli",nil,55]
		];
	};
	
	case 3:
	{
		[
		["TAC_V_Sheriff_BA_TB2",nil,3000],
		["TAC_PBDFG2_B_1",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};