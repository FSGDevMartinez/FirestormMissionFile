[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		if(!life_is_arrested) then { 
			life_hunger = life_hunger - 10;
		};
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};


	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			if(!life_is_arrested) then { 
			life_thirst = life_thirst - 10;
			};
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_water;
		//[] call _fnc_karma;
		sleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_food;
		//[] call _fnc_karma;
		[7] call SOCK_fnc_updatePartial;
	};
};

[] spawn
{
	while{true} do
	{
	waitUntil {life_eattotal > 90};
		player playMove "AmovPercMstpSnonWnonDnon_Scared2";
		sleep 2;
   		life_eattotal = 0;
   		life_hunger = 10;
   		life_poop = 0;
	};

};


//Uranium
[] spawn
{
    while {true} do
    {
        private["_damage"];
        sleep 1;
        while {((player distance (getMarkerPos "uranium_1") < 50) && (player getVariable["Revive",TRUE]))} do
        {
            if(uniform player == "U_C_Scientist") then
            {
                hint "You're currently in a radioactive zone however, your clothes are protecting you.";
                sleep 15;
				hint "You still feel mild effects from the radiation, but nothing too serious.";
				life_thirst =  50;
                life_hunger =  50;
				player say2d "cough";
				[] call life_fnc_hudUpdate;
				sleep 15;
				player say2d "cough"; 
				sleep 15; 
				player say2d "cough"; 


            }else
            {
                hint "You have entered a highly radioactive zone, get out now.";
				sleep 10;
				player setFatigue 1;
				player say2d "radioactive";
				enableCamShake true;
				addcamShake[random 4, 2, random 4];
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [8];
				"dynamicBlur" ppEffectCommit 8;
				sleep 10;
				player say2d "cough";
				_damage = damage player;
                _damage = _damage + 0.3;
                player setDamage (_damage);
                [] call life_fnc_hudUpdate;
                sleep 45;
            };
        };
    };
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};


[] spawn
{
	while{true} do
	{
		sleep 5;		
		while{ koildeb > 1 || koildebi > 1 || koildebii > 1 || koildebiii > 1 || koildebiiii > 1 } do
		{

			_totalpain = koildeb + koildebi + koildebii + koildebiii + koildebiiii;

			if(_totalpain < 12) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.5],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 11 && _totalpain < 18) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.33],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 17) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};
			sleep 2;
		};
	};
};

[] spawn
{
	private["_me","_you"];
	while{true} do
	{
		waitUntil {player getvariable "search"};
		player setVariable["search",false,true];
		_handle = [player] spawn life_fnc_dropItems2;
		waitUntil {scriptDone _handle};
		life_carryWeight = 0;
	};
};

[] spawn
{
	while {true} do
	{
		sleep 3;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};





//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 110;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "You are completely sober.";};
				case (life_intox == 0.08): {hint "You can now legally drive.";};
			};
		};
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 seems intoxicated.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_intox > 0.08} do 
		{
 		    "dynamicBlur" ppEffectEnable true;
    	    "dynamicBlur" ppEffectAdjust [0.5];
            "dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 1;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};