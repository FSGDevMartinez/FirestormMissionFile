
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_NATO_UCP_GRY_R_CombatUniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_kio_balaclava_ear",nil,200]
		];
	};
	
	case 2:
	{
		[
		["TRYK_H_PASGT_BLK",nil,200]
		];
	};
	
	case 3:
	{
		[
		["V_PlateCarrier1_blk",nil,3000],
		["NWAVestALRP",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};