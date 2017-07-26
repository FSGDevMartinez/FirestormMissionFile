
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"LRF Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_NATO_UCP_R_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["H_Beret_Colonel",nil,20]
		];
	};
	
	case 2:
	{
		[
		["G_Bandanna_blk",nil,20]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000],
		["ALRP_LRF",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,500]		
		];
	};
};