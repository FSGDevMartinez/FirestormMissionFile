/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/


private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
	
			};
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "pepsi"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
	
			};
			life_thirst = 100;
			player setFatigue 0;
		};
	};

	case (_item == "weddingring"):
	{
		if( life_married != "-2" ) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				//cutText ["Great! Someone has married you, you get $1,500 from friends and family!","PLAIN",2];
				//life_cash = life_cash + 1500;
				if(life_married == "-1") then {
					life_married = "someone";
				};
				if(life_married != "") then {
				[[0,format["%1 just married %2! That is great isn't it? We wish them good luck!",profileName, life_married]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
				life_married = "-2";
				};
			};
		}
		else
		{
			cutText ["You cannot marry twice!","PLAIN",2];
		};
	};
	
	case (_item == "axe"):
	{
		[] spawn life_fnc_axe;
	};
	
	case (_item == "panicbutton"):
	{
		[] spawn life_fnc_callbackup;
	};

	case (_item == "condom"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_prostitute;
			};
	};
	
	case (_item == "shovel"):
	{
		[] spawn life_fnc_shovel;
	};
	
	case (_item == "cannabis seed"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_cannabisSeed;
			};
	};
	
	case (_item == "generator"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_generator;
			};
	};
	
	case (_item == "light"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_light;
			};
	};
	
	case (_item == "netting"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_netting;
			};
	};
	
	case (_item == "campfire"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_campfire;
			};
	};
	
	case (_item == "lollypop"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				closeDialog 0;
				uiSleep 5;
				["You take a lick of the lollypop.",8,"green"] call A3L_Fnc_Msg;
				player say2d "cough";
				uiSleep 2;
				closeDialog 0; 
				["Ewww.... Banana flavour!",8,"red"] call A3L_Fnc_Msg;
				life_thirst =  100;
				life_hunger =  100;
				[] call life_fnc_hudUpdate;
				uiSleep 10;
				closeDialog 0;
			};
	};

	case (_item == "cleankit"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				_currentuniform = Uniform player;
				life_action_inUse = true;
				if (vehicle player == player) then {
					uiSleep 6;
					[[player,"spray"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
				};
				if(_currentuniform isEqualTo "") then {
					hint "You feel cleansed and can now carry extra virtual weight.";
					life_dirt = 0;
					player setfatigue 0;
					if(life_maxweightdone != 1) then {
	  					life_maxWeightT = 52;
	  					life_maxWeight = life_maxWeight + 28;
	  					life_maxweightdone = 1;
  					};
				} else {
					Hint "Wow, this body cleaning kit is great - to bad I had my clothes on, atleast they are clean now!";
					life_dirt = 100;
					player setfatigue 1;
				};
				life_action_inUse = false;
			};
	};

	case (_item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			if(life_intox <= 0.02) then
			{
			life_intox = 0.00;
			}
			else
			{
			life_intox = life_intox - 0.02;			
			};			
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};

	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useMarijuana;
		};
	};

	case (_item == "methp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useMeth;
		};
	};

	case (_item == "cokep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useCoke;
		};
	};


	case (_item == "bec"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
			[] spawn life_fnc_useBEC;
		};
	};


	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn
			{
				titleText["You're so jacked up on Cocaine you can now sprint for 2 minutes","PLAIN"];
				player enableFatigue false;
				[] spawn life_fnc_useCocaine;
				player enableFatigue true;
			};
		};
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 injects some Heroin.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useHeroin;
		};
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item == "RoadBlockConc"):
	{
		if(!isNull life_roadblock) exitWith {hint "You already have a Road Block active in deployment"};
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadBlockConc;
			};
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			};

			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (6 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","donuts","tbacon","peach"]):
	{
		life_eattotal = life_eattotal + 10;
		playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
		[_item] call life_fnc_eatFood;
	};

	case (_item in ["fries","burger"]):
	{
		life_eattotal = life_eattotal + 10;
		playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
		[_item] call life_fnc_eatFood;
		[] spawn
			{
		life_mcdonalds_effect = time;
		player enableFatigue false;
		waitUntil {!alive player OR ((time - life_mcdonalds_effect) > (2 * 30))};
		player enableFatigue true;
		};
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "pickaxe2"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;