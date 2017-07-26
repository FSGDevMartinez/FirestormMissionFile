
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_MARPAT_Wood_Tshirt",nil,150],
		["U_B_T_Soldier_F",nil,150]
		];
	};
	
	case 1:
	{
		[
		["H_Booniehat_dgtl",nil,20],
		["TRYK_H_Helmet_MARPAT_Wood",nil,20]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclavas",nil,20],
		["Mask_M40",nil,20]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierIAGL_dgtl",nil,3000],
		["ALRP_Firm",nil,3000]
		];
	};
	
	case 4:
	{
		[
		["B_Bergen_tna_F",nil,600],
        ["cg_invisbp",nil,500]		
		];
	};
};