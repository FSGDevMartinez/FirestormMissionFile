
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["U_B_T_Soldier_F",nil,150],
		["TRYK_U_B_woodtan_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["H_Booniehat_dgtl",nil,20],
		["H_HelmetB_light",nil,20],
		["TRYK_H_PASGT_BLK",nil,20],
		["H_Beret_Colonel",nil,20]
		];
	};
	
	case 2:
	{
		[
		["TAC_shoulder_armorC2_OD",nil,55],
		["TRYK_Shemagh_TAN_NV",nil,55]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierIAGL_dgtl",nil,3000],
		["TAC_PBDFG2CPL_BK",nil,3000],
		["ALRP_RPD",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500],
		["B_Bergen_tna_F",nil,500]
		];
	};
};