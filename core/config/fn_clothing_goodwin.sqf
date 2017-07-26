
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Goodwin Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_ACU",nil,150],
		["TRYK_U_B_ACUTshirt",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_Helmet_ACU",nil,20],
		["TRYK_R_CAP_BLK",nil,20]
		];
	};
	
	case 2:
	{
		[
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};