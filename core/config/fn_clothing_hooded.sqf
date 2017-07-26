
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Hooded Hooligans Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_PCUHsW7",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_PASGT_BLK",nil,10]
		];
	};
	
	case 2:
	{
		[
		["G_Bandanna_aviator",nil,20]
		];
	};
	
	case 3:
	{
		[
		["ALRP_HoodedHooligans",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};