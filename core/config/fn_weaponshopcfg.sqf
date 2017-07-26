#include <macro.h>

private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS medic!"};
                        default {
                                ["EMS Supplies Shop",
                                        [
                                            ["FirstAidKit",nil,25],
                                            ["Medikit",nil,50],
                                            ["ToolKit",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS medic!"};
                        default {
                                ["EMS Basic Shop",
                                        [
                                            ["A3L_Extinguisher",nil,35],
                                            ["30Rnd_test_mag","Fire Extinguisher Refill",10],
                                            ["tf_anprc152",nil,10],
                                            ["tf_rt1523g",nil,30],
                                            ["ItemGPS",nil,25],
                                            ["ItemMap",nil,15],
                                            ["Binocular",nil,125],
                                            ["ToolKit",nil,50],
                                            ["pmc_earpiece",nil,50],
                                            ["Chemlight_red",nil,20]
                                        ]
                                ];
                        };
                };
        };

        case "coastguard_weapons":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS medic!"};
                        default {
                                ["CG Armory",
                                        [
                                            ["RH_compM2l",nil,55],
					    ["optic_MRCO",nil,55],
					    ["optic_LRPS",nil,90],
					    ["optic_Arco_blk_F",nil,90],
					    ["optic_SOS",nil,88],
					    ["optic_Hamr",nil,88],
					    ["RH_cmore",nil,88],
                                            ["RH_ta01nsn_2D",nil,88],
					    ["A3L_CCO",nil,88],
					    ["RH_barska_rds",nil,88],
					    ["acc_flashlight",nil,55],
					    ["FirstAidKit",nil,25],
                                            ["Medikit",nil,50],
                                            ["ToolKit",nil,50],
					    ["Radar_Gun",nil,10],
                                            ["Binocular",nil,15],
					    ["alrp_policegps",nil,10],
                                            ["ItemGPS",nil,10],
					    ["ItemMap",nil,10],
					    ["Itemwatch",nil,10],
					    ["ItemCompass",nil,10],
                                            ["NVGoggles",nil,20],
                                            ["pmc_earpiece",nil,50],
                                            ["tf_anprc152",nil,10],
                                            ["tf_rt1523g",nil,30],

                                            ["rr_m249",nil,3000],
                                            ["hlc_smg_mp5a4",nil,3000],
                                            ["hlc_rifle_awcovert_BL",nil,3000],
                                            ["RHARD_M4DDRD_B_F",nil,3000],
                                            ["RH_g19",nil,3000],
                                            ["RH_p226s",nil,3000],
                                            ["m249_mag",nil,3000],
                                            ["hlc_30Rnd_9x19_B_MP5",nil,30],
                                            ["hlc_5rnd_300WM_AP_AWM",nil,30],
                                            ["hlc_5rnd_300WM_SBT_AWM",nil,30],
                                            ["30Rnd_556x45_Stanag",nil,30],
                                            ["RH_17Rnd_9x19_g17",nil,30],
                                            ["RH_15Rnd_9x19_SIG",nil,30],
                                            ["30Rnd_test_mag_Tracer",nil,30],
                                            ["optic_ACO_grn",nil,30],
                                            ["RH_compm4s",nil,30],
                                            ["RH_ta01nsn_tan_2D",nil,30],
                                            ["NVGogglesB_blk_F",nil,30],
                                            ["tf_rt1523g",nil,30],
                                            ["tf_rt1523g",nil,30]
                                        ]
                                ];
                        };
                };
        };

         case "cop_marshals":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Marshal!"};
                        case (__GETC__(life_coplevel) < 1): {"You need to be in Marshals to enter this shop"};
                        default
                        {
                                ["DTU Weapons Locker",
                                        [
                                        ["RH_PDW",nil,200],
					["RH_30Rnd_6x35_mag",nil,20],
                                        ["RH_M4A6",nil,100],
                                        ["RH_30Rnd_68x43_FMJ",nil,85],
                                        ["hlc_rifle_bcmjack",nil,100],
                                        ["hlc_30rnd_556x45_EPR",nil,85],
                                        ["FHQ_arifle_ACR_blk",nil,20],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,20],
                                        ["RH_M4_moe",nil,200],
                                        ["RH_30Rnd_556x45_Mk318",nil,20],
					["optic_ERCO_blk_F",nil,65],
					["optic_AMS",nil,20],
					["RH_hbsd",nil,65],
                                        ["muzzle_snds_M",nil,65],
                                        ["muzzle_snds_H",nil,65],
                                        ["RH_saker",nil,65],
					["FHQ_muzzle_snds_68SPC",nil,65],
                                        ["muzzle_snds_B",nil,65],
					["RH_fa556",nil,65],
                                        ["hlc_rifle_aku12",nil,200],
										["hlc_30Rnd_545x39_B_AK",nil,65],
										["RH_M27IAR",nil,200],
										["RH_30Rnd_556x45_M855A1",nil,65],
										["hlc_rifle_SAMR",nil,200],
										["hlc_30rnd_556x45_EPR",nil,65],
										["RH_shortdot",nil,65],
										["RH_ta31rmr_2d",nil,65],
										["hlc_muzzle_545SUP_AK",nil,65]
										]
                                ];
                        };
                };
        };

		case "cop_sheriffofc":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Officer!"};
                        default
                        {
                                ["Officer/Senior Officer Shop",
                                        [
                                        ["arifle_Mk20_plain_F",nil,250],
                                        ["30Rnd_556x45_Stanag",nil,20],
                                        ["RH_M4_ris_m",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["arifle_SDAR_F",nil,120],
                                        ["20Rnd_556x45_UW_mag",nil,15],
                                        ["RH_cmore",nil,20],
                                        ["FHQ_smg_p90_black",nil,250],
                                        ["FHQ_50Rnd_57x28_Mag",nil,20],
					["RH_g19",nil,250],
                                        ["RH_17Rnd_9x19_g17",nil,20],
                                        ["RH_M16A4",nil,500],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_fn57",nil,200],
                                        ["RH_20Rnd_57x28_FN",nil,20],
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5]
                                        ]
                                ];
                        };
                };
        };

		case "cop_sheriffcpl":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Corporal!"};
                        default
                        {
                                ["Corporal Shop",
                                        [
                                        ["RH_M4_ris_m",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_fnp45",nil,200],
                                        ["RH_15Rnd_45cal_fnp",nil,20],
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5]
                                        ]
                                ];
                        };
                };
        };
        
        case "cop_sheriffsgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5],
                                        ["RH_gsh18",nil,200],
                                        ["RH_18Rnd_9x19_gsh",nil,20],
					["arifle_Katiba_F",nil,200],
					["30Rnd_65x39_caseless_green",nil,20],
					["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
					["RH_shortdot",nil,20],
					["RH_g18",nil,200],
					["RH_33Rnd_9x19_g18",nil,20],
					["RH_M16A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["FHQ_arifle_ACR_snw",nil,200],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,20],
                                        ["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_shortdot",nil,20]
                                        ]
                                ];
                        };
                };
        };


        case "cop_sheriffcsgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Chief Sergeant!"};
                        default
                        {
                                ["FTO Shop",
                                        [
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5],
                                        ["RH_gsh18",nil,200],
                                        ["RH_18Rnd_9x19_gsh",nil,20],
					["arifle_Katiba_F",nil,200],
					["30Rnd_65x39_caseless_green",nil,20],
					["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
					["RH_shortdot",nil,20],
					["RH_g18",nil,200],
					["RH_33Rnd_9x19_g18",nil,20],
					["RH_M16A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["FHQ_arifle_ACR_snw",nil,200],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,20],
                                        ["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_shortdot",nil,20]
                                        ]
                                ];
                        };
                };
        };

        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        default
                        {
                                ["Patrol Gear Shop",
                                        [
                                                ["RH_compM2l",nil,55],
						["optic_MRCO",nil,55],
						["optic_LRPS",nil,90],
						["optic_Arco_blk_F",nil,90],
						["optic_SOS",nil,88],
						["optic_Hamr",nil,88],
						["RH_cmore",nil,88],
                                                ["RH_ta01nsn_2D",nil,88],
						["A3L_CCO",nil,88],
						["RH_barska_rds",nil,88],
						["acc_flashlight",nil,55],
						["FirstAidKit",nil,25],
                                                ["Medikit",nil,50],
                                                ["ToolKit",nil,50],
						["Radar_Gun",nil,10],
                                                ["Binocular",nil,15],
						["alrp_policegps",nil,10],
                                                ["ItemGPS",nil,10],
						["ItemMap",nil,10],
						["Itemwatch",nil,10],
						["ItemCompass",nil,10],
                                                ["NVGoggles",nil,20],
                                                ["pmc_earpiece",nil,50],
                                                ["tf_anprc152",nil,10],
                                                ["tf_rt1523g",nil,30]
                                        ]
                                ];
                        };
                };
        };

        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Officer!"};
                        default
                        {
                                ["Officer/Senior Shop",
                                        [
                                        ["arifle_Mk20_plain_F",nil,250],
                                        ["30Rnd_556x45_Stanag",nil,20],
                                        ["RH_M4_ris_m",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["arifle_SDAR_F",nil,120],
                                        ["20Rnd_556x45_UW_mag",nil,15],
                                        ["RH_cmore",nil,20],
                                        ["FHQ_smg_p90_black",nil,250],
                                        ["FHQ_50Rnd_57x28_Mag",nil,20],
					["RH_g19",nil,250],
                                        ["RH_17Rnd_9x19_g17",nil,20],
                                        ["RH_M16A4",nil,500],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_fn57",nil,200],
                                        ["RH_20Rnd_57x28_FN",nil,20],
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5]
                                        ]
                                ];
                        };
                };
        };
        case "recruit":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not a Cadet!"};
                        default
                        {
                                ["Cadet Shop",
                                        [

                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5],
                                        ["RH_m9",nil,250],
                                        ["RH_15Rnd_9x19_M9",nil,20],
                                        ["hlc_smg_mp5k_PDW",nil,275],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,20],
                                        ["RH_cmore",nil,50]
                                        ]
                                ];
                        };
                };
        };
         case "cop_corporal":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Corporal!"};
                        default
                        {
                                ["Corporal Shop",
                                        [
                                        ["RH_M4_ris_m",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_fnp45",nil,200],
                                        ["RH_15Rnd_45cal_fnp",nil,20],
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5]
                                        ]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sergeant/Chief Sergeant Shop",
                                        [
                                        ["CSW_M26C",nil,200],
                                        ["CSW_Taser_Probe_Mag",nil,5],
                                        ["RH_gsh18",nil,200],
                                        ["RH_18Rnd_9x19_gsh",nil,20],
					["arifle_Katiba_F",nil,200],
					["30Rnd_65x39_caseless_green",nil,20],
					["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
					["RH_shortdot",nil,20],
					["RH_g18",nil,200],
				        ["RH_33Rnd_9x19_g18",nil,20],
					["RH_M16A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
                                        ["RH_M27IAR",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["FHQ_arifle_ACR_snw",nil,200],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,20],
                                        ["RH_compm4s",nil,20],
                                        ["RH_eotech553mag",nil,20],
                                        ["RH_shortdot",nil,20]
                                        ]
                                ];
                        };
                };
        };
        case "cop_captain":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Captain!"};
                        default
                        {
                                ["Captain/Lieutenant Shop",
                                        [
                                        ["CSW_M26C",nil,200],
					["CSW_Taser_Probe_Mag",nil,5],
					["RH_bullb",nil,200],
					["RH_6Rnd_454_Mag",nil,20],
					["RH_M4_moe_b",nil,200],
					["RH_30Rnd_556x45_M855A1",nil,200],
                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
					["RH_compm4s",nil,20],
					["RH_eotech553mag",nil,20],
					["RH_shortdot",nil,20],
					["optic_DMS",nil,20]
                                        ]
                                ];
                        };
                };
        };
        case "cop_r2":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 6): {" You are not part of SERT!"};
                      	default
                        {
                                ["SERT Armoury",
                                        [
                                        ["CSW_M26C",nil,200],
					["CSW_Taser_Probe_Mag",nil,5],
					["RH_g18",nil,200],
					["RH_33Rnd_9x19_g18",nil,200],
                                        ["RH_m9",nil,10],
                                        ["RH_15Rnd_9x19_M9",nil,10],
                                        ["RH_m9qd", nil,0],
                                        ["RH_uspm",nil,200],
                                        ["RH_16Rnd_40cal_usp",nil,20],
                                        ["hlc_rifle_samr2",nil,200],
                                        ["hlc_30rnd_556x45_EPR",nil,20],
                                        ["RH_Hk416",nil,200],
					["RH_30Rnd_556x45_M855A1",nil,20],
					["FHQ_arifle_M4std_long_blk",nil,200],
					["30Rnd_556x45_Stanag",nil,20],
					["FHQ_arifle_G36C_black",nil,200],
					["30Rnd_556x45_Stanag",nil,20],
                                        ["hlc_rifle_CQBR",nil,200],
                                        ["hlc_30rnd_556x45_EPR",nil,00],
				        ["RH_M4_moe_b",nil,200],
					["RH_30Rnd_556x45_M855A1",nil,20],
					["hlc_rifle_ak12",nil,200],
				        ["hlc_45Rnd_545x39_t_rpk",nil,20],
					["arifle_CTAR_blk_F",nil,200],
					["30Rnd_580x42_Mag_F",nil,20],
					["RH_M4A6",nil,200],
					["RH_30Rnd_68x43_FMJ",nil,20],
					["hlc_rifle_M4",nil,200],
					["hlc_30rnd_556x45_EPR",nil,20],
                                        ["RH_SR25EC",nil,500],
                                        ["RH_20Rnd_762x51_M80A1",nil,20],
                                        ["KPFS_G22",nil,200],
                                        ["kpfs_5Rnd_86x70_G22",nil,20],
					["FHQ_srifle_M2010_BLK",nil,200],
					["FHQ_rem_5Rnd_300Win_M2010",nil,20],
					["hlc_rifle_awMagnum_BL_ghillie",nil,200],
					["hlc_5rnd_300WM_FMJ_AWM",nil,20],
					["optic_AMS",nil,20],
					["hlc_muzzle_snds_g3",nil,20],
					["RH_accupoint",nil,20],
					["RH_matchsd",nil,20],
					["muzzle_snds_M",nil,20],
					["optic_DMS",nil,20],
					["RH_compm4s",nil,20],
                                        ["RH_barska_rds",nil,20],
                                        ["RH_qdss_nt4",nil,20],
                                        ["muzzle_snds_M",nil,20],
					["RH_SFM952V",nil,20],
					["RH_ta31rmr",nil,20],
					["RH_ta31rmr_2D",nil,20],
					["RH_eotech553mag",nil,20],
					["optic_Arco_blk_F",nil,20],
					["RH_shortdot",nil,20],
					["muzzle_snds_58_blk_F",nil,20],
					["muzzle_snds_H",nil,20],
					["hlc_muzzle_545SUP_AK",nil,20],
					["muzzle_snds_58_blk_F",nil,20],
					["RH_m110sd_t",nil,20],
					["RH_leu_mk4",nil,20],
					["RH_gemtech9",nil,20],
				        ["muzzle_snds_B",nil,20],
					["hlc_muzzle_556NATO_KAC",nil,20],
					["Rangefinder",nil,20],
					["B_UavTerminal",nil,20],
                                        ["gign_shield", nil,500],
                                        ["SmokeShellYellow","Tear Gas",20],
                                        ["HandGrenade_Stone", nil,20]
                                        ]
                                ];
                        };
                };
        };

        case "cop_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not a part of State Command!"};
                        default
                        {
                                ["State Command Store",
                                        [
					["RH_M16A6",nil,500],
                                        ["RH_30Rnd_68x43_FMJ",nil,20],
					["hlc_rifle_bcmblackjack",nil,500],
                                        ["29rnd_300BLK_STANAG",nil,20],
                                        ["hlc_muzzle_300blk_KAC",nil,20],
                                        ["hlc_rifle_Bushmaster300",nil,500],
                                        ["29rnd_300BLK_STANAG",nil,20],
                                        ["hlc_muzzle_300blk_KAC",nil,20],
                                        ["prpl_benelli",nil,500],
					["prpl_8Rnd_12Gauge_Slug",nil,20],
                                        ["prpl_8Rnd_12Gauge_Pellets",nil,20],
					["KA_SCAR_H_Black_Grip",nil,200],
                                        ["SCAR_20_Inches_Barrel",nil,200],
					["KA_SCAR_H_20rnd_Mk319_SOST_mag",nil,200],
                                        ["AN94_MTK83",nil,500],
                                        ["KA_30Rnd_545x39_7N22_AP",nil,20],
                                        ["AN94_MUZZLE_ATG_545",nil,20],
                                        ["KA_M98B",nil,500],
					["KA_M98B_10Rnd_338_FMJ_Mag",nil,20],
                                        ["KA_M98B_Silencer",nil,20],
                                        ["arifle_AK12_F",nil,500],
                                        ["30Rnd_762x39_Mag_Tracer_F",nil,20],
                                        ["muzzle_snds_B",nil,20],
                                        ["LMG_03_F",nil,500],
					["200Rnd_556x45_Box_F",nil,20],
                                        ["muzzle_snds_M",nil,20],
                                        ["rr_m4",nil,500],
					["M4m855a1_mag",nil,20],
                                        ["SF556blk_ej",nil,20],
                                        ["RH_leu_mk4",nil,20],
					["RH_compm4s",nil,20],
					["RH_eotech553mag",nil,20],
					["RH_shortdot",nil,20],
					["optic_DMS",nil,20],
                                        ["RH_15Rnd_9x19_SIG",nil,20],
					["RH_hb_b",nil,500],
					["RH_30Rnd_762x35_FMJ",nil,20],
					["optic_Holosight_blk_F",nil,20],
					["hlc_rifle_RU556",nil,500],
					["hlc_muzzle_556NATO_KAC",nil,20],
					["hlc_rifle_bcmjack",nil,500],
					["hlc_30rnd_556x45_EPR",nil,20],
                                        ["A3L_m4a3",nil,500],
                                        ["A3L_M4Mag",nil,20],
                                        ["RH_m9",nil,500],
                                        ["RH_15Rnd_9x19_M9",nil,20],
                                        ["JM_Taser_26",nil,200],
                                        ["JM_26_Cartridge",nil,100],
					["RH_kimber_nw",nil,500],
				        ["RH_7Rnd_45cal_m1911",nil,20],
					["RH_gemtech45",nil,20],		
                                        ["RH_M6X",nil,20],
					["RH_sfn57",nil,500],
					["RH_X2",nil,500],
                                        ["RH_SAMR",nil,500],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],
                                        ["SmokeShell","Smoke Grenade",20],
					["RH_qdss_nt4",nil,50],
					["RH_SFM952V",nil,50],
					["RH_fa556",nil,50],
					["acc_flashlight",nil,500],
					["muzzle_snds_M",nil,50],
					["RH_spr_mbs",nil,50],
					["muzzle_snds_btrotex556",nil,50],
					["RH_hbsd",nil,50],
					["RH_Saker762",nil,50],
					["optic_AMS",nil,50]
					]
                                ];
                        };
                };
        };


        case "rebel_low":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You do not have the correct rebel license. Please purchase it and try again."};
                        default
                        {
                                ["Frag Pistol",
                                    [

				        ["RH_kimber_nw",nil,5850],
                                        ["RH_7Rnd_45cal_m1911",nil,150],

                                        ["hgun_ACPC2_F",nil,5850],
                                        ["9Rnd_45ACP_Mag",nil,150],

                                        ["hgun_Pistol_heavy_01_F",nil,6550],
                                        ["11Rnd_45ACP_Mag",nil,150],

                                        ["RH_vp70",nil,4500],
                                        ["RH_18Rnd_9x19_VP",nil,150],

                                        //Micro Uzi
                                        ["RH_muzi",nil,4500],
                                        ["RH_30Rnd_9x19_UZI",nil,150],

                                        //Tec9
                                        ["RH_tec9",nil,4500],
                                        ["RH_32Rnd_9x19_tec",nil,150],

                                        ["RH_vz61",nil,8000],
                                        ["RH_20Rnd_32cal_vz61",nil,150],

                                        //Glock 18
                                        ["RH_g18",nil,8000],
                                        ["RH_19Rnd_9x19_g18",nil,150],
                                        ["RH_33Rnd_9x19_g18",nil,150]


                                    ]
                                ];
                        };
                };
        };

        case "rebel_high":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian ur a Piggy!"};
                        case (!license_civ_rebel): {"You do not have the correct rebel license. Please purchase it and try again."};
                        default
                        {
                                ["Frag Shop",
                                    [
										["FHQ_arifle_Galil_black",nil,22000],
										["FHQ_25Rnd_762x51_Mag",nil,165],
										["FHQ_arifle_ACR_snw",nil,16500],
										["FHQ_rem_30Rnd_680x43_ACR",nil,165],
										["RH_eotech553",nil,350],
										["RH_ta31rmr_2D",nil,350],
										["optic_AMS",nil,350],
										["RH_ar10",nil,21500],
										["RH_20Rnd_762x51_AR10",nil,250],
										["RH_Delft","AR10 Sight",550],
										["RH_m4_des",nil,15000],
										["RH_m4_tg",nil,15000],
										["RH_m4_wdl",nil,15000],
										["RH_30Rnd_556x45_M855A1",nil,150],
									    ["optic_Hamr",nil,200],
										["optic_MRCO",nil,300],
										["RH_eotech553_tan",nil,75],

										["hlc_rifle_akm",nil,25000],
										["hlc_30Rnd_762x39_b_ak",nil,50],
										["hlc_rifle_ak74_dirty",nil,23500],
										["hlc_rifle_ak74_dirty2",nil,23500],
										["hlc_30Rnd_545x39_B_AK",nil,50],
										["hlc_optic_kobra",nil,55],
										["RH_M4A6",nil,18000],
                                        ["RH_30Rnd_68x43_FMJ",nil,85],
										["hlc_rifle_RK62",nil,19500],
										["hlc_30Rnd_762x39_b_ak",nil,235],
										["hlc_muzzle_762SUP_AK",nil,150],
										["RH_ta31rco_2D",150],

										["RH_sbr9_des",nil, 6000],
										["RH_sbr9_wdl",nil,6000],
										["RH_32Rnd_9mm_M822",nil,95],
										["hlc_rifle_slr107u_MTK",nil,29000],
										["hlc_30Rnd_762x39_b_ak",nil,95],

										["hlc_smg_mp5k_PDW",nil,5590],
										["hlc_30Rnd_9x19_B_MP5",nil,75]

                                    ]
                             ];
                        };
                };
        };

        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Uncle Cobra's Firearms",
                                        [
                                                ["RH_g17",nil,1750],
                                                ["RH_g19",nil,1850],
                                                ["RH_g19t",nil,1850],
                                                ["RH_17Rnd_9x19_g17",nil,125],

                                                ["RH_m9",nil,1850],
                                                ["RH_15Rnd_9x19_M9",nil,125],

                                                ["hgun_Rook40_F",nil,3350],
                                                ["16Rnd_9x21_Mag",nil,125],

						["RH_mk2",nil,3350],
                                                ["RH_10Rnd_22LR_mk2",nil,125],

						["RH_m9c",nil,1850],
                                                ["RH_15Rnd_9x19_M9",nil,125],

                                                ["hgun_P07_F",nil,3350],
                                                ["16Rnd_9x21_Mag",nil,125],

                                                ["RH_gsh18",nil,4150],
                                                ["RH_18Rnd_9x19_gsh",nil,125]


                                        ]
                                ];
                        };
                };
        };

        case "secretservice":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_secretservice): {"You are not in secret service!"};
                        default
                        {
                                ["Secret Service Shop",
                                        [
                                                ["RH_g19",nil,500],
                                                ["RH_33Rnd_9x19_g18",nil,50],
                                                //
                                                ["RH_M4_ris",nil,500],
                                                ["RH_30Rnd_556x45_M855A1",nil,50],
                                                //
                                                 ["RH_M4A6",nil,500],
                                                 ["RH_30Rnd_68x43_FMJ",nil,50],
                                        //
                                                ["RH_M4sbr_b",nil,500],
                                                ["RH_30Rnd_556x45_M855A1",nil,50],
                                                //
                                                ["hlc_smg_mp5a3",nil,500],
                                                ["hlc_30Rnd_9x19_B_MP5",nil,50],
                                                //
                                                ["KPFS_G36C",nil,500],
                                                ["KPFS_30Rnd_556x45_G36",nil,50],
                                                //
                                                
                                                ["JM_Taserb_26",nil,200],
                                                ["JM_26_Cartridge",nil,50],

                                                ["RH_gemtech9",nil,200],
                                                ["RH_compM2l",nil,200],
                                                ["optic_ACO_grn",nil,200],
						["optic_Aco",nil,200],
                                                ["RH_qdss_nt4",nil,200],
                                                ["hlc_muzzle_Tundra",nil,200],
                                                ["RH_barska_rds",nil,200],
                                                ["RH_eotech553mag",nil,200],
                                                ["RH_qdss_nt4",nil,200],
                                                ["muzzle_snds_M",nil,200],
                                                ["ItemMap",nil,69],
                                                ["ItemMap",nil,69],
                                                ["tf_anprc152",nil,100],
                                                ["Binocular",nil,125],
                                                ["tf_microdagr",nil,50],
                                                ["ToolKit",nil,50],
                                                ["ItemCompass",nil,500],
                                                ["pmc_earpiece",nil,500]
                                                                                        ]
                                ];
                        };
                };
        };

        case "goodwin":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_goodwin): {"You are not part of the Goodwins!"};
                        default
                        {
                                ["Goodwins Weapon Locker", //5 guns
                                        [
                                                //////////////
                                                 ["RH_tec9",nil,3500],
                                                 ["RH_32Rnd_9x19_tec",nil,50],
                                                ///////////////////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,55],
                                                ////////////////
                                                ["RH_tecsd",nil,850],
                                                ["RH_fa556",nil,850],
                                                /////////////////////
                                                ["arifle_SPAR_01_blk_F",nil,15000],
                                                ["30Rnd_556x45_Stanag",nil,65],
                                                ["muzzle_snds_M",nil,300],
                                                /////////////////////
                                                ["srifle_DMR_07_blk_F",nil,17000],
                                                ["20Rnd_650x39_Cased_Mag_F",nil,70],
                                                ["muzzle_snds_65_TI_blk_F",nil,300],
                                                ////////////////////
                                                ["optic_AMS",nil,620],
                                                ["optic_MRCO",nil,420]
                                        ]
                                ];
                        };
                };
        };

          case "supernova":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_supernova): {"You are not part of this gang!"};
                        default
                        {
                                ["Supernova Weapon Locker", //4 GUNS
                                        [
                                                ["KPFS_G36A4",nil,17300],
                                                ["KPFS_30Rnd_556x45_G36",nil,85],
                                                ////
                                                ["RH_Hk416s",nil,15000],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
						["RH_fa556",nil,850],
                                                ////////////////////////////////
                                               ["FHQ_arifle_ACR_wdl",nil,16500],
                                                ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
						["FHQ_muzzle_snds_68SPC",nil,850],
                                                ////////////////
					        ["hlc_rifle_samr2",nil,18000],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
						["muzzle_snds_m_khk_F",nil,850],
						/////////////////////
						["optic_AMS",nil,65],
						["A3L_CCO",nil,88],
                                                ["optic_DMS",nil,620]
                                        ]
                                ];
                        };
                };
        };

         case "redwood":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_redwood): {"You are not part of this gang!"};
                        default
                        {
                                ["Redwood Rangers Weapon Locker", //6 GUNS
                                        [
                                                ["FHQ_arifle_M4_long_blk",nil,18000],
                                                ["30Rnd_556x45_Stanag",nil,85],
                                                ///
                                                ["FHQ_smg_p90_black",nil,13500],
                                                ["FHQ_50Rnd_57x28_Mag",nil,85],
                                                ////////////////////////////////
                                                ["hlc_smg_mp5k",nil,8750],
                                                ["hlc_30Rnd_9x19_B_MP5",nil,85],
					        ///
						["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
                                                ///////////////////
                                                ["hlc_rifle_SAMR",nil,14500],
                                                ["hlc_30rnd_556x45_EPR",nil,55],
                                                ////////////////
						["RH_fnp45t",nil,3000],
						["RH_15Rnd_45cal_fnp",nil,85],
						//////////
                                                ["muzzle_snds_M",nil,850],
                                                ["RH_fa556",nil,850],
						["hlc_muzzle_Tundra",nil,850],
						["RH_osprey",nil,850],
                                                ["muzzle_snds_M",nil,850],
                                                ["RH_tecsd",nil,850],
                                                ["muzzle_snds_B",nil,850],
                                                /////////////////////
                                                ["RH_compM2",nil,62],
                                                ["RH_docter",nil,62],
                                                ["optic_AMS",nil,65],
                                                ["RH_barska_rds",nil,22],
                                                ["RH_leu_mk4",nil,62],
                                                ["RH_m3lr",nil,60]
                                        ]
                                ];
                        };
                };
        };

         case "hooded":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_hooded): {"You are not part of this gang!"};
                        default
                        {
                                ["Hooded Hooligans Weapon Locker",  //5 GUNS
                                        [
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                ///
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ////////////////////////////////
						["RH_M16A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ///
						["RH_SAMR",nil,15000],
                                                ["RH_30Rnd_556x45_Mk262",nil,85],
                                                //////////////
                                                 ["RH_bullb",nil,4200],
                                                 ["RH_6Rnd_454_Mag",nil,50],
                                                ////////////////
                                                ["muzzle_snds_M",nil,850],
                                                ["RH_Saker762",nil,850],
                                                ["RH_qdss_nt4",nil,850],
                                                ["RH_tecsd",nil,850],
                                                ["muzzle_snds_B",nil,850],
                                                /////////////////////
                                                ["optic_DMS",nil,62],
                                                ["RH_barska_rds",nil,35]
                                        ]
                                ];
                        };
                };
        };

		case "rpd":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rpd): {"You are not part of the Rebel Police Department!"};
                        default
                        {
                                ["RPD Weapon Locker", //10 GUNS
                                        [
                                                //AK12
						["srifle_DMR_05_hex_F",nil,20000],
						["10Rnd_93x64_DMR_05_Mag",nil,85],
                                                ["muzzle_snds_93mmg",nil,850],
                                                //Type115
                                                ["arifle_ARX_blk_F",nil,18000],
                                                ["30Rnd_65x39_caseless_green",nil,85],
                                                ["muzzle_snds_65_TI_blk_F",nil,850],
                                                //
                                                ["RH_M27IAR",nil,16500],
						["RH_30Rnd_556x45_M855A1",nil,85],
					        ["RH_fa556",nil,850],
                                                /////
                                                ["RH_SAMR",nil,15000],
                                                ["RH_30Rnd_556x45_Mk262",nil,85],
                                                ["RH_qdss_nt4",nil,850],
                                                ///////
                                                ["FHQ_arifle_ACR_wdl",nil,16500],
                                                ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
						["FHQ_muzzle_snds_68SPC",nil,850],
                                                ////////////////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                ///////////////////
						["RH_fnp45",nil,8750],
						["RH_15Rnd_45cal_fnp",nil,85],
						["RH_osprey",nil,65],
						["optic_MRD",nil,65],
						////////////////////
						["hlc_rifle_bcmjack",nil,16500],
                                                ["30Rnd_556x45_Stanag",nil,85],
						["muzzle_snds_M",nil,850],
						////////////////////
						["RH_g18",nil,4000],
                                                ["RH_33Rnd_9x19_g18",nil,65],
						["RH_gemtech9",nil,850],
                                                /////
                                                ["hlc_smg_mp510",nil,15000],
                                                ["hlc_30Rnd_10mm_B_MP5",nil,65],
						["hlc_muzzle_Agendasix10mm",nil,850],
                                                ////
						["optic_Arco_blk_F",nil,850],
						["RH_eotech553mag_tan",nil,65],
						["optic_AMS",nil,65],
						["RH_shortdot",nil,35],
						["optic_Hamr",nil,35],
						["RH_ta31rmr_2D",nil,65],
						["RH_SFM952V",nil,22],
						["acc_pointer_IR",nil,850],
						["RH_compm4s",nil,35],
						["RH_ta648",nil,65]
						///////////////
                                        ]
                                ];
                        };
                };
        };

		case "sov": //4 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_sov): {"You are not part of this gang!!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_qdss_nt4",nil,850],
                                                ///////////////////
						["RH_Hk416",nil,15000],
						["RH_30Rnd_556x45_M855A1",nil,85],
						["RH_fa556",nil,850],
						////////////////////
						["RH_sbr9",nil,5000],
                                                ["RH_32Rnd_9mm_M822",nil,85],
						////////////////////
						["RH_eotech553mag",nil,75],
						["optic_AMS",nil,65],
						["RH_barska_rds",nil,35],
					        ["RH_ta31rmr",nil,52],
						["RH_compM2l",nil,35]
						///////////////
                                        ]
                                ];
                        };
                };
        };


        case "Taurus":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_Taurus): {"You are not part of Pest Control!"};
                        default
                        {
                                ["Pest Control Weapon Locker",
                                        [
						//RRA LAR
                                                ["hlc_rifle_samr2",nil,15950],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_m_khk_F",nil,850],
                                                //KATIBA
						["arifle_Katiba_F",nil,17200],
						["30Rnd_65x39_caseless_green",nil,85],
                                                ["muzzle_snds_H",nil,850],
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                ["hlc_rifle_RU556",nil,17600],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
						["hlc_muzzle_556NATO_KAC",nil,850],
                                                //////
						["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_SPR",nil,85],
						["muzzle_snds_M",nil,850],
                                                ////////////////
                                                ["RH_fnp45t",nil,8750],
                                                ["RH_gemtech45",nil,55],
                                                ["RH_docter",nil,55],
                                                ["RH_15Rnd_45cal_fnp",nil,85],
						////////////////////
						["RH_M16A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_qdss_nt4",nil,850],
						////////////////
						["optic_AMS",nil,85],
						["optic_DMS",nil,85],
					        ["RH_ta31rmr",nil,85],
						["optic_Arco_blk_F",nil,85],
						["RH_eotech553mag",nil,85],
						["RH_compM2",nil,60]
                                        ]
                                ];
                        };
                };
        };

		 case "corleones":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_corleones): {"You are not a part of this gang!"};
                        default
                        {
                                ["Corleones Weapon Locker", //8 GUNS
                                        [
                                                ["RH_PDW",nil,10000],
                                                ["RH_30Rnd_6x35_mag",nil,85],
					        ["muzzle_snds_H",nil,850],
                                                //////////////////////
                                                ["SG553",nil,16400],
                                                ["30Rnd_556x45_Stanag",nil,85],
					        ["muzzle_snds_M",nil,850],
                                                //////////////////////
                                                ["KPFS_G36K",nil,17300],
                                                ["KPFS_30Rnd_556x45_G36",nil,85],
                                                //////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                //////////////////////
                                                ["RH_m4a1_ris",nil,13700],
                                                ["RH_30Rnd_556x45_M855A1",nil,65],
					        ["RH_fa556",nil,850],
                                                ////////////////
                                                ["arifle_SDAR_F",nil,12500],
                                                ["20Rnd_556x45_UW_mag",nil,85],
                                                ///////////////////////////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                //////////////////////
                                                ["RH_uspm",nil,4000],
                                                ["RH_16Rnd_40cal_usp",nil,65],
						["RH_matchsd",nil,850],
                                                //////////////////////
                                                ["RH_Deaglem",nil,9500],
                                                ["RH_7Rnd_50_AE",nil,65],
                                                ["optic_Yorris",nil,85],
						////////////////
						["optic_AMS",nil,75],
						["optic_Hamr",nil,75],
						["RH_ta31rmr",nil,62],
						["RH_compM2",nil,62]
                                        ]
                                ];
                        };
                };
        };

		 case "strife": //5 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_strife): {"You are not a part of this gang!"};
                        default
                        {
                                ["Strife Weapon Locker",
                                        [
                                                ["hlc_rifle_hk33a2RIS",nil,17000],
                                                ["hlc_30rnd_556x45_b_HK33",nil,85],
						["hlc_muzzle_snds_HK33",nil,850],
                                                //////////////////////////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_qdss_nt4",nil,850],
                                                ////////////////////////////
                                                ["FHQ_arifle_ACR_snw",nil,16500],
                                                ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
						["FHQ_muzzle_snds_68SPC",nil,850],
						///////////////////////////
                                                ["FHQ_arifle_M4std_long_snow",nil,18000],
                                                ["30Rnd_556x45_Stanag",nil,85],
						["muzzle_snds_M",nil,850],
						///////////////////////////
						["RH_tec9",nil,4200],
                                                ["RH_32Rnd_9x19_tec",nil,55],
						["RH_tecsd",nil,500],
					        ////////////////
						["RH_ta31rmr_2D",nil,850],
						["RH_ta31rmr",nil,620],
						["RH_compM2",nil,620]
                                        ]
                                ];
                        };
                };
        };

		case "narco": //4 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_narco): {"You are not a part of this gang!"};
                        default
                        {
                                ["Narco Weapon Locker",
                                        [
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["30Rnd_556x45_Stanag",nil,85],
						["muzzle_snds_M",nil,850],
                                                ////////////////////////
                                                ["FHQ_smg_p90_black",nil,15500],
						["FHQ_50Rnd_57x28_Mag",nil,85],
                                                ["muzzle_snds_M",nil,850],
                                                ////
                                                ["FHQ_arifle_G36C_black",nil,12500],
					        ["30Rnd_556x45_Stanag",nil,75],
                                                ["muzzle_snds_M",nil,850],
                                                ////////////////
                                                ["RH_M16A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_fa556",nil,850],
                                                ////////////////
                                                ["RH_M4A6",nil,18000],
					        ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
						////////////////
						["RH_t1",nil,850],
						["RH_ta31rmr_2D",nil,620],
						["RH_eotech553mag",nil,850],
						["optic_AMS",nil,620],
						["RH_compm4s",nil,620]
                                        ]
                                ];
                        };
                };
        };

		 case "tomwalker": // 3 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_tomwalker): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
                                                ["RH_M27IAR",nil,16500],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
						//M4A6
					        ["RH_M4A6",nil,18000],
					        ["RH_30Rnd_68x43_Match",nil,85],
					        ["RH_qdss_nt4",nil,850],
					        ////////////////
                                                ["RH_Mk12mod1_wdl",nil,18000],
                                                ["RH_30Rnd_556x45_Mk262",nil,85],
                                                ["RH_spr_mbs_wdl",nil,850],
						////////////////
						["RH_qdss_nt4",nil,850],
						["RH_fa556_des",nil,850],
						["TRYK_Shemagh_G_NV",nil,55],
						///////////////
						["RH_ta31rco_tan",nil,55],
                                                ["RH_barska_rds",nil,55],
						["optic_AMS",nil,55]
                                        ]
                                ];
                        };
                };
        };


        case "spartan": //5 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_spartan): {"You are not part of Spartan Vanguard!"};
                        default
                        {
                                ["Spartan Vanguard Weapon Locker",
                                        [
                                                ["KPFS_G36",nil,14500],
                                                ["KPFS_30Rnd_556x45_G36",nil,75],
                                                ///
                                                ["RH_M4_moe_b",nil,13000],
						["RH_30Rnd_556x45_M855A1",nil,85],
                                                ["RH_qdss_nt4",nil,850],
                                                //M4A6
					        ["RH_M4A6",nil,18000],
					        ["RH_30Rnd_68x43_Match",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                /////
						["hlc_rifle_samr2",nil,15950],
                                                ["30Rnd_556x45_Stanag",nil,85],
                                                ///
						["RH_shortdot",nil,15],
						["RH_compM2",nil,85],
						["RH_barska_rds",nil,85],
						["muzzle_snds_58_blk_F",nil,850],
						["RH_gemtech9",nil,850],
                                                ///
						["RH_bull",nil,6500],
                                                ["RH_6Rnd_454_Mag",nil,55],
                                                ////
                                                ["optic_AMS",nil,200],
						["optic_Arco_blk_F",nil,85],
                                                ["muzzle_snds_B",nil,850],
						["muzzle_snds_M",nil,850],
                                                ["RH_fa762",nil,355],
                                                ["RH_peq15b",nil,200],
						["RH_saker",nil,200],
						["RH_eotech553mag",nil,200],
                                                ["acc_flashlight",nil,355],
                                                ["RH_ta31rmr",nil,120]
                                        ]
                                ];
                        };
                };
        };

        case "hitmen": //6 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_hitmen): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
						["RH_g19",nil,1850],
                                                ["RH_17Rnd_9x19_g17",nil,12],
                                                //M4A1
                                                ["RH_M4_moe_b",nil,10000],
                                                ["RH_60Rnd_556x45_M855A1",nil,80],
                                                ["RH_saker",nil,500],
                                                //M4A1 snow
                                                ["FHQ_arifle_M4std_long_snow",nil,12000],
                                                ["30Rnd_556x45_Stanag",nil,75],
                                                ["muzzle_snds_M",nil,500],
                                                //SamR
                                                ["RH_SAMR",nil,21000],
                                                ["RH_30Rnd_556x45_Mk262",nil,60],
                                                ["RH_qdss_nt4",nil,500],
                                                //ACR
                                                ["FHQ_arifle_ACR_blk",nil,11000],
                                                ["FHQ_rem_30Rnd_680x43_ACR_Tracer_White",nil,50],
                                                //M4A1 Green
                                                ["RH_M4_moe_g",nil,10000],
                                                ["RH_30Rnd_556x45_M855A1",nil,80],
                                                ["RH_qdss_nt4_wdl",nil,600],
                                                //BCM Jack
                                                ["hlc_rifle_bcmjack",nil,19000],
                                                ["hlc_30rnd_556x45_EPR",nil,80],
                                                ["muzzle_snds_m_snd_F",nil,500],
                                                //Deagle
                                                ["RH_Deaglem",nil,5000],
                                                ["RH_7Rnd_50_AE",nil,30],
                                                ["RH_demz",nil,250],
                                                //Attchments
                                                ["optic_Yorris",nil,200],
                                                ["RH_ta648",nil,700],
                                                ["RH_LTdocter",nil,600],
                                                ["RH_leu_mk4",nil,1000],
                                                ["RH_ta31rco",nil,600],
                                                ["RH_ta31rmr",nil,900],
                                                ["RH_gemtech9",nil,600],
                                                ["RH_ta01nsn",nil,450]
                                        ]
                                ];
                        };
                };
        };
		
		case "TF01": //6 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_TF01): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
						["FHQ_arifle_M4std_long_blk",nil,9500],
                                                ["30Rnd_556x45_Stanag",nil,82],
                                                ////
                                                ["hlc_rifle_bcmjack",nil,19000],
                                                ["hlc_30rnd_556x45_EPR",nil,80],
                                                ["muzzle_snds_m_snd_F",nil,500],
                                                /////
                                                ["FHQ_arifle_ACR_blk",nil,11000],
                                                ["FHQ_rem_30Rnd_680x43_ACR_Tracer_White",nil,50],
                                                //SamR
                                                ["RH_p226",nil,8500],
                                                ["RH_15Rnd_9x19_SIG",nil,60],
                                                //Attchments
                                                ["RH_compM2l",nil,600],
                                                ["RH_eotech553",nil,600]
                                        ]
                                ];
                        };
                };
        };

		 case "firm": //7 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_firm): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
                                                ["hlc_rifle_CQBR",nil,17300],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                /////
                                                ["RH_Mk12mod1",nil,17000],
                                                ["RH_30Rnd_556x45_Mk262",nil,85],
                                                 //M4A6
					        ["RH_M4A6",nil,18000],
					        ["RH_30Rnd_68x43_Match",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                //cyrus
						["srifle_DMR_05_hex_F",nil,17200],
						["10Rnd_93x64_DMR_05_Mag",nil,85],
                                                ["muzzle_snds_93mmg",nil,850],
                                                /////
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_SPR",nil,85],
						["muzzle_snds_M",nil,850],
                                                ////////////////////
						["RH_Hk416s",nil,15000],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
						["RH_fa556",nil,850],
						//////////////////////////////////
						["RH_g18",nil,9500],
                                                ["RH_33Rnd_9x19_g18",nil,55],
                                                //ATACH /////////////////
						["RH_gemtech9",nil,55],
                                                ["RH_ta31rmr",nil,65],
						["optic_Yorris",nil,35],
                                                ["RH_demz",nil,35],
                                                ["optic_AMS",nil,85],
                                                ["optic_Hamr",nil,75],
                                                ["optic_MRCO",nil,45],
                                                ["optic_DMS",nil,85]
                                        ]
                                ];
                        };
                };
        };

        case "nightwatch": //7 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_nightwatch): {"You are not part of this gang!"};
                        default
                        {
                                ["Nightwatch Weapon Locker",
                                        [
						///////////////
						["RH_M16A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
                                                ///////////////////////////////
                                                ["RH_Mk12mod1",nil,17000],
                                                ["RH_30Rnd_556x45_Mk262",nil,85],
                                                ///
                                                ["RH_M4_moe",nil,15000],
                                                ["RH_30Rnd_556x45_Mk318",nil,85],
                                                //
                                                ["RH_M27IAR",nil,17000],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
                                                //
                                                ["FHQ_smg_p90_black",nil,15000],
                                                ["FHQ_50Rnd_57x28_Mag",nil,85],
                                                //
                                                ["arifle_MXM_Black_F",nil,18000],
                                                ["30Rnd_65x39_caseless_mag",nil,85],
                                                ["muzzle_snds_H",nil,850],
                                                ///////////////////////////////
                                                ["RH_m4a1_ris_des",nil,13700],
                                                ["RH_30Rnd_556x45_M855A1",nil,65],
                                                ///////////////////////////////
                                                ["RH_Deaglem",nil,9500],
                                                ["RH_7Rnd_50_AE",nil,85],
                                                 ["RH_demz",nil,850],
                                                 ["optic_Yorris",nil,850],
                                                //ATACH
                                                ["optic_AMS",nil,250],
                                                ["RH_fa556",nil,850],
                                                ["RH_compM2",nil,250],
                                                ["RH_compm4s",nil,250],
                                                ["optic_ERCO_blk_F",nil,550],
                                                ["muzzle_snds_M",nil,850],
                                                ////////////////////////////////
                                                ["RH_fa556_des",nil,850],
                                                ["muzzle_snds_M",nil,850],
                                                ["RH_tecsd",nil,750]
                                        ]
                                ];
                        };
                };
        };

   case "faceless": //4 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_faceless): {"You are not part of this gang!"};
                        default
                        {
                                ["Faceless Ones Weapon Locker",
                                        [
                                                 //AUG
						["Hlc_rifle_auga3_b",nil,16600],
						["hlc_30Rnd_556x45_B_AUG",nil,85],
                                                ["hlc_muzzle_snds_AUG",nil,850],
                                                ///////////////////////////////
                                                ["KPFS_G36",nil,14500],
                                                ["KPFS_30Rnd_556x45_G36",nil,75],
                                                ///////////////////////////////
                                                //AR15 MAGPUL Carbine
                                                ["hlc_rifle_RU5562",nil,15300],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_M",nil,850],
                                                //RRA LAR
                                                ["hlc_rifle_samr2",nil,15950],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_m_khk_F",nil,850],
                                                //ATACH
                                                ["optic_AMS",nil,69],
                                                 ["optic_MRCO",nil,69],
                                                ["RH_fa556",nil,850],
                                                ["RH_compM2",nil,25],
                                                ["RH_compm4s",nil,25],
                                                ["optic_ERCO_blk_F",nil,55],
                                                ////////////////////////////////
                                                ["muzzle_snds_B",nil,850],
                                                ["RH_hbsd",nil,850],
                                                ["RH_m110sd",nil,850]
                                        ]
                                ];
                        };
                };
        };

	case "house": //11 GUNS
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_house): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [
					            //SDAR
                      ["arifle_SDAR_F",nil,9500],
                      ["20Rnd_556x45_UW_mag",nil,85],
                      //MP5/10
                      ["hlc_smg_mp510",nil,15000],
                      ["hlc_30Rnd_10mm_B_MP5",nil,85],
                      ["hlc_muzzle_Agendasix10mm",nil,850],
                      //AR15 Sanitised Carbine
                      ["hlc_rifle_RU556",nil,15300],
                      ["hlc_30rnd_556x45_EPR",nil,85],
                      ["muzzle_snds_M",nil,850],
                      //M27 IAR
		      ["RH_M27IAR",nil,16500],
		["RH_30Rnd_556x45_Mk262",nil,85],
		 ["RH_qdss_nt4",nil,850],
		//Remington ACR
		 ["FHQ_arifle_ACR_blk",nil,16500],
		  ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
		   ["FHQ_muzzle_snds_68SPC",nil,85],
			 //RRA LAR
                      ["hlc_rifle_samr2",nil,15950],
                      ["hlc_30rnd_556x45_EPR",nil,85],
                      ["muzzle_snds_m_khk_F",nil,850],
					            //M4A6
					            ["RH_M4A6",nil,18000],
					            ["RH_30Rnd_68x43_FMJ",nil,85],
					            ["RH_qdss_nt4",nil,850],
					            //Raging Bull Black
					            ["RH_bullb",nil,6500],
					            ["RH_6Rnd_454_Mag",nil,85],
					            //Jack "BCM" Carbine
					            ["hlc_rifle_bcmjack",nil,16500],
					            ["hlc_30rnd_556x45_EPR",nil,85],
					            ["muzzle_snds_m_snd_F",nil,850],
						          //FNP 45
                      ["RH_fnp45t",nil,7750],
                      ["RH_osprey",nil,850],
                      ["optic_MRD",nil,850],
                      ["RH_15Rnd_45cal_fnp",nil,85],
					            //Attachments
						          ["optic_ERCO_blk_F",nil,69],
						          ["optic_MRCO",nil,69],
					            ["RH_SFM952V",nil,40],
					            ["optic_Arco_blk_F",nil,75],
					            ["RH_eotech553mag",nil,75],
					            ["RH_barska_rds",nil,75],
					            ["RH_ta648",nil,75],
					            ["optic_Hamr",nil,75],
					            ["optic_AMS",nil,75],
					            ["RH_ta31rmr_2D",nil,75]
                                        ]
                                ];
                        };
                };
        };

        case "blackwatch":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_blackwatch): {"You are not part of this gang!"};
                        default
                        {
                                ["Blackwatch Weapon Locker", //4 GUNS
                                        [
                                                /////
                                                ["RH_M16A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_qdss_nt4",nil,850],
                                                ///
                                                ["arifle_ARX_blk_F",nil,18000],
                                                ["30Rnd_65x39_caseless_green",nil,85],
                                                ["muzzle_snds_65_TI_blk_F",nil,850],
                                                ////
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_SPR",nil,85],
						["muzzle_snds_M",nil,850],
                                                ////
                                                ["RH_fnp45",nil,7750],
                                                ["RH_osprey",nil,850],
                                                ["optic_MRD",nil,850],
                                                ["RH_15Rnd_45cal_fnp",nil,85],
                                                ///////////////////
                                                ["RH_M4_moe_b",nil,13000],
						["RH_30Rnd_556x45_M855A1",nil,85],
                                                ["RH_qdss_nt4",nil,850],
                                                //attach
                                                ["FHQ_muzzle_snds_68SPC",nil,420],
						["RH_shortdot",nil,420],
                                                ["optic_Hamr",nil,420],
                                                ["RH_eotech553mag",nil,420],
                                                ["RH_LTdocter",nil,320],
                                                ["RH_ta31rmr_2D",nil,300],
						["RH_ta01nsn_2D",nil,90],
						["optic_AMS",nil,90],
						["muzzle_snds_B",nil,850],
                                                ["muzzle_snds_M",nil,850],
                                                ["RH_compM2",nil,200],
                                                ["RH_qdss_nt4",nil,850]
                                        ]
                                ];
                        };
                };
        };

	case "ghost":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_ghost): {"You are not part of the Ghost Squad!"};
                        default
                        {
                                ["Ghost Weapon Locker", //5 GUNS
                                        [
                                                ////
                                                ["arifle_Katiba_F",nil,17200],
						["30Rnd_65x39_caseless_green",nil,85],
                                                ["muzzle_snds_H",nil,850],
                                                ///
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
					        ["RH_qdss_nt4",nil,850],
                                                //
                                                ["arifle_ARX_blk_F",nil,18000],
                                                ["30Rnd_65x39_caseless_green",nil,85],
                                                ["muzzle_snds_65_TI_blk_F",nil,850],
                                                //RRA LAR
                                                ["hlc_rifle_samr2",nil,15950],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_m_khk_F",nil,850],
                                                //AR15 Sanitised Carbine
                                                ["hlc_rifle_RU556",nil,15300],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_M",nil,850],
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_M",nil,850],
					        ////////////////////////////////////////
                                                ["RH_Hk416",nil,16000],
                                                ["30Rnd_556x45_Stanag",nil,50],
                                                ///////////////////////
						["RH_ta31rmr",nil,65],
						["optic_AMS",nil,80],
						["RH_compM2",nil,50],
					        ["RH_eotech553",nil,50],
						["RH_barska_rds",nil,50],
						["optic_Hamr",nil,75],
						["optic_MRCO",nil,65]
                                        ]
                                ];
                        };
                };
        };
		
	case "pepe":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_pepe): {"You are not part of this gang!"};
                        default
                        {
                                ["Los Pepe Weapon Locker", //4 GUNS
                                        [
                                                ["RH_M27IAR",nil,10000],
                                                ["RH_qdss_nt4",nil,50],
												["RH_ta648",nil,50],
												["RH_60Rnd_556x45_M855A1",nil,20],
												["RH_SR25EC",nil,10000],
												["RH_m110sd",nil,10000],
												["optic_AMS",nil,15],
												["RH_20Rnd_762x51_M80A1",nil,20],
												["RH_fnp45",nil,3000],
												["RH_gemtech45",nil,3000],
												["RH_docter",nil,3000],
												["RH_15Rnd_45cal_fnp",nil,20],
												["RH_SAMR",nil,10000],
												["RH_qdss_nt4",nil,10],
												["RH_cmore",nil,10],
												["hlc_rifle_bcmblackjack",nil,10000],
												["hlc_muzzle_300blk_KAC",nil,10],
												["optic_Arco_blk_F",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["KA_SCAR_H_Black_AFG",nil,10000],
												["KA_SCAR_H_20rnd_Mk319_SOST_mag",nil,10],
												["SCAR_20_Inches_Barrel_Silencer",nil,10],
												["RH_eotech553mag",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["arifle_ARX_blk_F",nil,10000],
												["muzzle_snds_65_TI_blk_F",nil,10],
												["optic_Arco_blk_F",nil,10],
												["30Rnd_65x39_caseless_green",nil,10],
												["762x39_30rnds_AK47",nil,10],
												["srifle_IraqAK47Tactical2_F",nil,10000],
												["muzzle_AK47",nil,10],
												["optic_Hamr",nil,10],
												["RH_M4_moe_b",nil,10000],
												["RH_qdss_nt4",nil,10000],
												["RH_Deagles",nil,10000],
												["hlc_rifle_awmagnum_BL",nil,10000],
												["RH_leu_mk4",nil,10000],
												["hlc_rifle_samr2",nil,10000],
												["muzzle_MK18_L",nil,10000],
												["RH_compM2l",nil,10000]
												
                                        ]
                                ];
                        };
                };
        };
		
	case "phantom":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_pepe): {"You are not part of this gang!"};
                        default
                        {
                                ["PO Weapon Locker", //4 GUNS
                                        [
                                                ["RH_M27IAR",nil,10000],
                                                ["RH_qdss_nt4",nil,50],
												["RH_ta648",nil,50],
												["RH_60Rnd_556x45_M855A1",nil,20],
												["RH_SR25EC",nil,10000],
												["RH_m110sd",nil,10000],
												["optic_AMS",nil,15],
												["RH_20Rnd_762x51_M80A1",nil,20],
												["RH_fnp45",nil,3000],
												["RH_gemtech45",nil,3000],
												["RH_docter",nil,3000],
												["RH_15Rnd_45cal_fnp",nil,20],
												["RH_SAMR",nil,10000],
												["RH_qdss_nt4",nil,10],
												["RH_cmore",nil,10],
												["hlc_rifle_bcmblackjack",nil,10000],
												["hlc_muzzle_300blk_KAC",nil,10],
												["optic_Arco_blk_F",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["KA_SCAR_H_Black_AFG",nil,10000],
												["KA_SCAR_H_20rnd_Mk319_SOST_mag",nil,10],
												["SCAR_20_Inches_Barrel_Silencer",nil,10],
												["RH_eotech553mag",nil,10],
												["29rnd_300BLK_STANAG",nil,10],
												["arifle_ARX_blk_F",nil,10000],
												["muzzle_snds_65_TI_blk_F",nil,10],
												["optic_Arco_blk_F",nil,10],
												["30Rnd_65x39_caseless_green",nil,10],
												["762x39_30rnds_AK47",nil,10],
												["srifle_IraqAK47Tactical2_F",nil,10000],
												["muzzle_AK47",nil,10],
												["optic_Hamr",nil,10],
												["RH_M4_moe_b",nil,10000],
												["RH_qdss_nt4",nil,10000],
												["RH_Deagles",nil,10000],
												["hlc_rifle_awmagnum_BL",nil,10000],
												["RH_leu_mk4",nil,10000],
												["hlc_rifle_samr2",nil,10000],
												["muzzle_MK18_L",nil,10000],
												["RH_compM2l",nil,10000]
												
                                        ]
                                ];
                        };
                };
        };

        case "outsiders":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_outsiders): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker", //7 GUNS
                                        [
                                                 //bushmaster
						["hlc_rifle_Bushmaster300",nil,18700],
						["29rnd_300BLK_STANAG",nil,85],
                                                ["hlc_muzzle_300blk_KAC",nil,850],
                                                //m110
						["RH_m110",nil,21504],
						["RH_20Rnd_762x51_M80A1",nil,85],
                                                ["RH_m110sd_t",nil,850],
                                                //ACR
						["FHQ_arifle_ACR_blk",nil,16500],
						["FHQ_rem_30Rnd_680x43_ACR",nil,85],
                                                ["FHQ_muzzle_snds_68SPC",nil,850],
                                                //////
                                                ["hlc_rifle_bcmjack",nil,16500],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                ["muzzle_snds_M",nil,850],
                                                ////////////////////////////////
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
						["RH_saker",nil,850],
						//////////////////////////
						["RH_M4_ris_m",nil,14200],
                                                ["RH_30Rnd_556x45_M855A1",nil,75],
						////////////////
						["RH_bullb",nil,7500],
						["RH_6Rnd_454_Mag",nil,85],
						///////////
						["RH_qdss_nt4",nil,850],
						["hlc_muzzle_300blk_KAC",nil,850],
                                                ["muzzle_snds_B",nil,850],
                                                ["muzzle_snds_H",nil,850],
                                                /////////////////
						["RH_eotech553mag",nil,200],
						["optic_MRCO",nil,250],
						["optic_AMS",nil,300],
						["optic_Hamr",nil,300],
						["RH_LTdocter",nil,155],
						["RH_ta01nsn_2D",nil,300]

                                        ]
                                ];
                        };
                };
        };

		case "lrf":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_lakesiderebforce): {"You are not part of this gang!"};
                        default
                        {
                                ["Weapon Locker", //11 GUNS
                                        [
                                                //M16A4
						["RH_M16A4",nil,14250],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
					        //TEC9
						["RH_tec9",nil,4200],
						["RH_32Rnd_9x19_tec",nil,100],
						["RH_tecsd",nil,100],
                                                //M4A6
                                                ["RH_M4A6",nil,18000],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
                                                //AUG
                                                ["hlc_rifle_auga3_b",nil,15000],
                                                ["hlc_30Rnd_556x45_B_AUG",nil,85],
                                                ["hlc_muzzle_snds_AUG",nil,500],
                                                //
                                                ["RH_g18",nil,6000],
                                                ["RH_33Rnd_9x19_g18",nil,45],
                                                ["RH_gemtech9",nil,400],
						//M27
						["RH_M27IAR",nil,16500],
						["RH_30Rnd_556x45_M855A1",nil,85],
					        ["RH_fa556",nil,850],
						//
						["FHQ_smg_p90_black",nil,15500],
						["FHQ_50Rnd_57x28_Mag",nil,85],
						//ACR
						["FHQ_arifle_ACR_snw",nil,16500],
						["FHQ_rem_30Rnd_680x43_ACR",nil,85],
						//FN57
						["RH_fn57",nil,4200],
						["RH_20Rnd_57x28_FN",nil,85],
						//FN57 ATTACHS
						["RH_docter",nil,650],
						["RH_compM2",nil,85],
						//FN 45 TAC
					        ["RH_fnp45",nil,3000],
						["RH_15Rnd_45cal_fnp",nil,85],
						//SCOPES
						["RH_m110sd",nil,300],
						["FHQ_muzzle_snds_68SPC",nil,300],
						["optic_AMS",nil,300],
						["hlc_muzzle_300blk_KAC",nil,300],
						["RH_ta31rmr_2D",nil,300]

                                        ]
                                ];
                        };
                };
        };

		case "jail":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Jail Blackmarket Dealer",
                                        [
                                                ["A3L_makarov",nil,1500],
                                                ["A3L_makarovMag",nil,100],
												["KPFS_P1",nil,2000],
                                                ["KPFS_8Rnd_9x19_PARA",nil,150]
                                        ]
                                ];
                        };
                };
        };

        case "genstore":
        {
                ["Kain's General Store",
                        [
                                ["ItemMap",nil,69],
                                ["tf_anprc152",nil,100],
                                ["Binocular",nil,125],
                                ["tf_microdagr",nil,50],
                                ["ToolKit",nil,50],
                                ["ItemCompass",nil,500],
                                ["NVGoggles",nil,150],
                                ["pmc_earpiece",nil,500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200]
								]
                ];
        };
};
