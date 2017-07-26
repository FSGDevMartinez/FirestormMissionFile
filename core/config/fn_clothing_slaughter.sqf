
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_hoodie_FR",nil,150],
		["TRYK_U_B_BLKOCP_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["jamie_blackhelmet",nil,35],
		["TRYK_H_Booniehat_MARPAT_WOOD",nil,35]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,10],
		["TRYK_kio_balaclavas",nil,10],
		["EWK_Glasses_Cig6",nil,10]
		];
	};
	
	case 3:
	{
		[
		["ALRP_HouseStark_Vestmemes",nil,3000],
		["V_PlateCarrier1_blk",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]	
		];
	};
};