
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Strife Family Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_PCUHsW5",nil,150]
		];
	};
	
	case 1:
	{
		[
		["kio_skl_msk_pun",nil,20]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,20]
		];
	};
	
	case 3:
	{
		[
		["ALRP_Strife",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};