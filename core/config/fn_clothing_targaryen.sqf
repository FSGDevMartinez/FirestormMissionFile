
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Targaryen Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_shirts_BLK_PAD",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_woolhat",nil,20]
		];
	};
	
	case 2:
	{
		[
		["G_Tactical_Black",nil,10],
		["Mask_M40",nil,10]		
		];
	};
	
	case 3:
	{
		[
		["ALRP_HouseT_Vestmemes",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};