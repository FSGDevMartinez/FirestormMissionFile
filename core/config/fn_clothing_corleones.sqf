
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Shadow Family Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_PCUHsW8",nil,150],
		["U_B_Wetsuit",nil,200]
		];
	};
	
	case 1:
	{
		[
			["G_Diving",nil,50]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,10]
		];
	};
	
	case 3:
	{
		[
		["ALRP_Corleones",nil,3000],
		["V_RebreatherB",nil,500]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};