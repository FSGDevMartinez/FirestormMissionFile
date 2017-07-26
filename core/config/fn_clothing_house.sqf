private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_PCUODs",nil,150],
		["U_O_Wetsuit",nil,150],
		["ALRP_Lannister_Uniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_PASGT_COYO",nil,550],
		["TRYK_H_PASGT_BLK",nil,550]
		];
	};
	
	case 2:
	{
		[
		["EWK_Shemag_LULZ",nil,200],
		["G_O_Diving",nil,200]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierL_CTRG",nil,3000],
		["V_RebreatherIR",nil,3000],
		["ALRP_Lan_Vestmemes",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};