
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Locker"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["CG_EMS2","Probationary EMT Uniform",50],
			["CG_EMS3","EMT Uniform",50],
			["CG_EMS5","Senior EMT Uniform",50],
			["CG_EMS7","Paramedic Uniform",50],
			["CG_EMS4","FTO EMT",50],
			["CG_EMS6","FTO Senior EMT",50],
			["CG_EMS1","Lieutenant & Captain Uniform",50],
			["Emsoff_uni","High Command Uniform",50],
			["Fire_uni1","S&R Pilot’s Uniform",50],
			["U_B_Wetsuit","S&R Diver Uniform",50],
			["CG_EMS10","ERT Uniform",50]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_headset2","Low Risk Headset",20],
			["TRYK_H_headsetcap_blk","Low Risk Headset + Hat",20],
			["TRYK_H_PASGT_BLK","High Risk Headgear",20],
			["H_CrewHelmetHeli_B","S&R Pilot Helmet",20],
			["H_PilotHelmetHeli_B","S&R Co-Pilot Helmet",20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Mask_M40",nil,50],
			["G_B_Diving",nil,20],
			["G_Aviator",nil,20],
			["G_Bandanna_aviator",nil,20],
			["G_Bandanna_blk",nil,20],
			["G_Spectacles_Tinted",nil,20],
			["TRYK_US_ESS_Glasses_BLK",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["TAC_PBDFG2_B_1","High Risk Vest",30],
			["TAC_FS_FO_B","Low Risk Vest",30],
			["V_RebreatherB","Rebreather",30],
			["fsgvest11","Thomas' Vest",30]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,50],
			["B_Kitbag_blk_Medic",nil,50],
			["koilmedicwhite",nil,50],
			["koilmedicblue",nil,50],
			["koilmedicyellow2",nil,50],
			["koilmedicdarkred",nil,50]
		];
	};
};
