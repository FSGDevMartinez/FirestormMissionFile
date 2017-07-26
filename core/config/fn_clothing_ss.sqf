
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"SS & DOJ Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["A3L_SSTie",nil,150],
		["A3L_SSNoTie",nil,150],
		["KAEL_SUITS_BR_Judge","Judge Suit",150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_headset_Glasses",nil,20],
		["G_Aviator",nil,20]
		];
	};
	
	case 2:
	{
		[
		["H_Cap_headphones",nil,20],
		["H_Beret_Colonel",nil,20],
		["TRYK_H_headsetcap_blk",nil,20]
		];
	};
	
	case 3:
	{
		[
		
		["A3L_deptjvest1","DOJ Vest",500],
		["TAC_V_Sheriff_BA_TB",nil,500]
		];
	};
	
	case 4:
	{
		[
        ["AM_PoliceBelt",nil,500],
		["cg_invisbp",nil,500],
        ["TRYK_B_Carryall_blk",nil,500]		
		];
	};
};