
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Hitmen Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["KAEL_SUITS_BR_F22",nil,150],
		["TRYK_U_B_BLK",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TAC_shoulder_armor_BK",nil,100],
		["TAC_SF10",nil,100]
		];
	};
	
	case 2:
	{
		[
		["jamie_blackhelmet",nil,10],	
		["TAC_K6C",nil,10]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierInd_PMC_blk",nil,3000],
		["TAC_V_Sheriff_BA_TBL7",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["TRYK_B_Carryall_blk",nil,500],
		["cg_invisbp",nil,500],
		["TAC_SG_SK",nil,10]
		];
	};
};