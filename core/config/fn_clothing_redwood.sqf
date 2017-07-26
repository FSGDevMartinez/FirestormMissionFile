
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Redwood Rangers Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_3CD_Ranger_BDU",nil,150],
		["TRYK_U_B_JSDF_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_ghillie_over",nil,20],
		["TRYK_UA_CAP2R",nil,20]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,20],
		["TRYK_kio_balaclava_ESS",nil,20]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierL_CTRG",nil,3000],
		["ALRP_Redwood",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};