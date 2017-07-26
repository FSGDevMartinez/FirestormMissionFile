
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["A3L_EC_SERTK",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_headsetcap_od_Glasses",nil,20],
		["TRYK_r_cap_od_Glasses",nil,20],
		["TRYK_r_cap_blk_Glasses",nil,20]
		];
	};
	
	case 2:
	{
		[
		["KA_MCU",nil,10],
		["Mask_M40_OD",nil,10]
		];
	};
	
	case 3:
	{
		[
		["TRYK_V_ArmorVest_Delta2",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]
		];
	};
};