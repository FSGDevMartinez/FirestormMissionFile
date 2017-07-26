
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["A3L_EC_SERTK",nil,150],
		["U_PMC_BluTShirt_SJeans",nil,150],
		["TRYK_U_B_3c",nil,150],
		["U_PMC_BluPolo_BgPants",nil,150],
		["U_PMC_BlckPolo_BluPants",nil,150],
		["TRYK_HRP_USMC",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_headsetcap_od_Glasses",nil,20],
		["TRYK_r_cap_od_Glasses",nil,20],
		["TRYK_r_cap_blk_Glasses",nil,20],
		["H_Cap_pmc",nil,20],
		["TRYK_Spset_PHC1_Glasses",nil,20]
		];
	};
	
	case 2:
	{
		[
		["H_PilotHelmetHeli_PMC",nil,10]
		];
	};
	
	case 3:
	{
		[
		["TRYK_V_ArmorVest_Delta2",nil,3000],
		["V_PlateCarrier1_PMC_marpat",nil,3000],
		["V_PlateCarrier1_PMC_khki",nil,3000],
		["TRYK_Hrp_vest_od",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50],
		["TAC_LBT_LEGAB_CY",nil,50],
		["TRYK_kio_balaclava_ear",nil,50],
		["B_Parachute",nil,50]
		];
	};
};