
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"G4S Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,150],
		["ALRP_PC_Uniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_PASGT_BLK",nil,20],
		["G4S_CAP",nil,20]
		];
	};
	
	case 2:
	{
		[
		["G_Balaclava_TI_G_blk_F",nil,20]
		];
	};
	
	case 3:
	{
		[
		["TAC_V_Sheriff_BA_TBL",nil,3000],
		["ALRP_PestControl",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};