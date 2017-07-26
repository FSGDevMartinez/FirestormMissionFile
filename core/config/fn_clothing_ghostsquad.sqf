
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Ghosts Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLK",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_kio_balaclava_ear",nil,10],
		["TRYK_kio_balaclavas",nil,10]
		];
	};
	
	case 2:
	{
		[
		["TRYK_R_CAP_BLK",nil,20],
		["TRYK_H_PASGT_BLK",nil,20]
		];
	};
	
	case 3:
	{
		[
		["ALRP_Ghost",nil,3000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]	
		];
	};
};