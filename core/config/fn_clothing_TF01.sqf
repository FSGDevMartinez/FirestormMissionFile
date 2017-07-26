
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"TF01 Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_ACU",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_PASGT_BLK",nil,20],
		["TRYK_UA_CAP",nil,20]
		];
	};
	
	case 2:
	{
		[
		["TAC_PMC_ID_W2",nil,10]
		];
	};
	
	case 3:
	{
		[
		["ALRP_TF1",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};