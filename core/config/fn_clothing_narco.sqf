
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLK_OD",nil,150]
		];
	};
	
	case 1:
	{
		[
		["jamie_blackhelmet",nil,200]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclava_ESS",nil,200]
		];
	};
	
	case 3:
	{
		[
		["TAC_FS_FO_mL_B",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};