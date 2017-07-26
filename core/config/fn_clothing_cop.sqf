#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"LSPD Clothing Store"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["cadet_uni","Cadet Uniform",100]];
		_ret set[count _ret,["ALRP_PD_Sweater","LSPD Patrol Sweater",100]];
		//_ret set[count _ret,["A3L_PDCPL","Patrol CPL Uniform",100]];
		///_ret set[count _ret,["A3L_PDSGT","Patrol SGT/CSGT Uniform",100]];
		////_ret set[count _ret,["A3L_EC_SOLT","Patrol LT Uniform",100]];
	//	_ret set[count _ret,["A3L_PDCPT","Patrol CPT Uniform",100]];
		_ret set[count _ret,["ALRP_SO_Sweater","Sheriff Patrol Sweater",100]];
		//_ret set[count _ret,["ALRP_SO_Officer","Sheriff Officer Uniform",100]];
	//	_ret set[count _ret,["ALRP_SO_Snr_Officer","Sheriff Senior Officer Uniform",100]];
		//_ret set[count _ret,["ALRP_SO_Corporal","Sheriff CPL Uniform",100]];
	//	_ret set[count _ret,["ALRP_SO_Sergeant","Sheriff SGT Uniform",100]];
//_ret set[count _ret,["ALRP_SO_Cheif_Sergeant","Sheriff CSGT Uniform",100]];
	//	_ret set[count _ret,["ALRP_SO_Lt","Sheriff LT Uniform",100]];
	//	_ret set[count _ret,["ALRP_SO_Capt","Sheriff CPT Uniform",100]];
	//	_ret set[count _ret,["ALRP_SO_Major","Sheriff MAJOR Uniform",100]];
		_ret set[count _ret,["ALRP_IA_Sweater","IA Sweater",100]];
		//_ret set[count _ret,["jamie_police2_2","IA Corporal Uniform",100]];
		//_ret set[count _ret,["jamie_police2","IA Senior Officer Uniform",100]];
		//_ret set[count _ret,["jamie_police2_3","IA Sergeant Uniform",100]];
		//_ret set[count _ret,["jamie_police2_4","IA Chief Sergeant Uniform",100]];
		//_ret set[count _ret,["jamie_police3","IA LT Uniform",100]];
		//_ret set[count _ret,["jamie_police3_1","IA CPT Uniform",100]];
		_ret set[count _ret,["ALRP_FTO_Sweater","FTO Sweater",100]];
		_ret set[count _ret,["TRYK_U_B_OD_OD_R_CombatUniform","CERT Uniform",100]];
		_ret set[count _ret,["crt_uniform","CERT Uniform",100]];
		_ret set[count _ret,["A3L_PDASSTCHIEF","Superintendent Uniform",100]];
		_ret set[count _ret,["A3L_PDCHIEF","Deputy Chief Uniform",100]];
		_ret set[count _ret,["TRYK_U_B_BLKTAN_CombatUniform","Command Clothing",100]];
		_ret set[count _ret,["A3LRideAlongJumper","State Command Operation Uniform",100]];
        _ret set[count _ret,["A3L_LVMS_AFB","Marshal Trial Uniform",100]];
		_ret set[count _ret,["A3L_LVMS_AL","Marshal Uniform",100]];
		_ret set[count _ret,["A3L_LVMS_Li","Marshal Command",100]];
		_ret set[count _ret,["herpCOMMAND1","State Command Uniform",100]];
		_ret set[count _ret,["KAEL_SUITS_BR_F12","State Command Formal Uniform",100]];
		_ret set[count _ret,["KAEL_SUITS_BR_F25","State Command Formal Uniform 2",100]];
		_ret set[count _ret,["TCG_TRP","Commissioner Uniform",100]];
		_ret set[count _ret,["U_B_Wetsuit","Wet Suit",100]];
		_ret set[count _ret,["RF_WING_3","Helicopter Pilot Uniform",100]];	
	};
	
	case 1:
	{
		_ret set[count _ret,["H_Cap_police","LSPD Cap",25]];
		_ret set[count _ret,["Campaign_Hat_Dark","Patrol Hat 1",25]];
		_ret set[count _ret,["Campaign_Hat_Washedout","Patrol Hat 2",25]];
		_ret set[count _ret,["Campaign_Hat_Tan","Patrol Hat 3",25]];
		_ret set[count _ret,["TRYK_H_PASGT_BLK","LSPD Code Red Helmet",25]];
		_ret set[count _ret,["ALRP_SO_Hat_GRN_Patch","Sheriff Cap",25]];
		_ret set[count _ret,["SO_SHERIFFGRNbk","Sheriff Cap (CSGT+)",25]];
		_ret set[count _ret,["TRYK_H_PASGT_BLK","CO Code Red Helmet",25]];
		_ret set[count _ret,["gign_helm","CERT Headgear",25]];
		_ret set[count _ret,["CG_sert_H6","Marshal Patrol Helmet",25]];
		_ret set[count _ret,["CG_sert_H2","Marshal Operational Helmet",25]];
		_ret set[count _ret,["H_Watchcap_camo","State Command Operation Cap",25]];
		_ret set[count _ret,["AM_PatrolHat","State Command Formal Hat",25]];
		_ret set[count _ret,["Campaign_Hat_Dark","State Command Campaign Hat",25]];
		_ret set[count _ret,["jamie_pcapblack","Chief of Staff Cap",25]];
		_ret set[count _ret,["A3L_sargehat","FTO Hat",25]];
		_ret set[count _ret,["TRYK_UA_CAP2R","Commissioner Hat",25]];
		_ret set[count _ret,["H_PilotHelmetHeli_B",nil,25]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Lowprofile",nil,30],
			["KA_MCU",nil,55],
			["Mask_M40",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55],
			["G_Balaclava_oli",nil,55],
			["G_Bandanna_aviator",nil,75]
		];
	};
	
	case 3:
	{
		
		_ret set[count _ret,["DON_Vest_Patrol","Trooper Patrol",25]];
		_ret set[count _ret,["HighThreatVestPolice1","Patrol Vest",25]];	
		_ret set[count _ret,["V_LSVSO_BLK","Sheriff Vest",25]];
		_ret set[count _ret,["SCommand_Vest","Sheriff Command Vest",25]];
		_ret set[count _ret,["ALRP_IA_VEST","IA Vest",25]];
		_ret set[count _ret,["V_CRT_CRL","CRT Vest",25]];
		_ret set[count _ret,["V_PlateCarrier1_PMC_blk","State Command Patrol Vest",25]];
		_ret set[count _ret,["fsgvest10","PD Commissioner Vest",25]];
		_ret set[count _ret,["TRYK_Hrp_vest_od","Helicopter Pilot Vest",25]];
		_ret set[count _ret,["V_RebreatherB","Rebreather",25]];
		_ret set[count _ret,["fsgvest1","Bobby Smith's Marshal Vest",25]];
		_ret set[count _ret,["fsgvest2","Hunter's Marshal Vest",25]];
		_ret set[count _ret,["fsgvest3","Martinez's Marshal Vest",25]];
		_ret set[count _ret,["fsgvest4","Michael's Marshal Vest",25]];
		_ret set[count _ret,["fsgvest5","Sean's Marshal Vest",25]];
		_ret set[count _ret,["fsgvest6","Alex's Marshal Vest",25]];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Tactical Police Belt",25]
		];
	};
};

_ret;
