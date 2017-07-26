
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_AOR2_OD_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_headsetcap_od_Glasses",nil,20],
		["TRYK_r_cap_od_Glasses",nil,20],
		["H_HelmetSpecB",nil,20]
		];
	};
	
	case 2:
	{
		[
		["G_Balaclava_TI_G_tna_F",nil,10],
		["Mask_M40_OD",nil,10]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_rgr_noflag_F",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50],
		["B_Bergen_tna_F",nil,50]
		];
	};
};