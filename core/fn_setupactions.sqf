
switch (playerSide) do
{
	case independent:
	{
		//Unblindfold person
		life_actions = life_actions + [player addAction["Remove blindfold",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "blindfolded") ']];

//Pickup Item
life_actions = life_actions + [player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) < 5 && !life_action_inUse ']];


		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0 ']];

		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0 ']];




		//Untie person
		life_actions = life_actions + [player addAction["Untie Person",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") ']];

	// Heli Fast Rope
		life_actions = life_actions + [player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_sContPlayer","","",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_sHeatPlayer",life_fnc_sheatPlayer,"",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_sCoolPlayer",life_fnc_scoolPlayer,"",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];;

		life_actions = life_actions + [player addAction[localize "STR_pAct_sHydratePlayer",life_fnc_shydratePlayer,"",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_sAntiViralPlayer",life_fnc_santiviralPlayer,"",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_sPainKillerPlayer",life_fnc_spainkillerPlayer,"",0,false,false,"",' (player getVariable "diseaseon") > 1 ']];

		//healself system
		life_actions = life_actions + [player addAction[localize "STR_pAct_BandageSelf",life_fnc_bandageSelf,"",0,false,false,"",' (player getVariable "bleedingon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_StitchSelf",life_fnc_stitchSelf,"",0,false,false,"",' (player getVariable "woundedon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_SplintSelf",life_fnc_splintSelf,"",0,false,false,"",' (player getVariable "fractureon") > 1 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_EpiPenSelf",life_fnc_epipenSelf,"",0,false,false,"",' (player getVariable "unconciouson") > 1 ']];


		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (vehicle player == player) ']];

	};
	case civilian:
	{
		//destroyevidence
		life_actions = life_actions + [player addAction["Destroy Evidence",life_fnc_destroyEvidence,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_Suitcase_F"']];

//Pickup Item
life_actions = life_actions + [player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) < 5 && !life_action_inUse ']];


		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0.2 && (life_inv_bandage > 0) ']];

		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.2 && (life_inv_bandage > 0) ']];



		// Heli Fast Rope
		life_actions = life_actions + [player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']];



		//Rob person
		life_actions = life_actions + [player addAction["<t color = '#a7afec'>Rob</t>",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && !(cursorTarget getVariable["robbed",FALSE]) && ( animationState cursorTarget == "Incapacitated" || cursorTarget getVariable "tied" || animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" ) ']];



		//Tie person
		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Tie Person</t>",life_fnc_tieingAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (animationState cursorTarget == "Incapacitated" || animationState cursorTarget == "AmovPercMstpSsurWnonDnon" && (!life_action_inUse) ) ']];

		//Untie person
		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Untie Person</t>",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && (!life_action_inUse) ']];

		life_actions pushBack (player addAction["<t color = '#a7afec'>Pat Down</t>",{[[],"life_fnc_removeWeaponAction",cursorTarget,false] call life_fnc_MP},"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) && (!life_action_inUse) ']);

		//Blindfold person
		life_actions = life_actions + [player addAction["<t color = '#d02b2b'>Blindfold Person</t>",life_fnc_tieingActionb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied")  && (!life_action_inUse) ']];

		//Unblindfold person
		life_actions = life_actions + [player addAction["<t color = '#d02b2b'>Remove blindfold</t>",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "blindfolded")  && (!life_action_inUse) ']];


		//Throw in car
		life_actions = life_actions + [player addAction["<t color = '#6baf41'>Throw in car</t>",life_fnc_throwcar,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") ']];

		//Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Move Person</t>",life_fnc_civescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "escorting")  && (!life_action_inUse) ']];

		//Stop Escort
		life_actions = life_actions + [player addAction["<t color = '#4170af'>Stop Escort</t>",life_fnc_civstopescort,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") && (cursorTarget getVariable["Escorting",false]) ']];


		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];




		//Remove Comms
		life_actions = life_actions + [player addAction["<t color = '#a7afec'>Destroy Radio/Gps</t>",life_fnc_destroyComms,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && ( animationState cursorTarget == "Incapacitated" || animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" || (cursorTarget getVariable "tied") || animationState cursorTarget == "AmovPercMstpSsurWnonDnon" ) ']];

		//Place Netting
		life_actions = life_actions + [player addAction["**ALRP Drugfield**",{if(!isNull life_netting) then {{detach _x} foreach (life_netting getvariable "netting"); _handle = [life_netting,"netting"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_netting,"netting"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_netting = ObjNull;};},"",999,false,false,"",'!isNull life_netting']];
	    //Packup Netting
		life_actions = life_actions + [player addAction["IGNORE",life_fnc_packupnetting,"",0,false,false,"",'
		_netting = nearestObjects[getPos player,["CamoNet_INDP_Curator_F"],3.5] select 0; !isNil "_netting" && !isNil {(_netting getVariable "netting")} && (count (_netting getVariable "netting") > 1)
		']];
		//Place Generator
		life_actions = life_actions + [player addAction["**ALRP Drugfield**",{if(!isNull life_generator) then {{detach _x} foreach (life_generator getvariable "generator"); _handle = [life_generator,"generator"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_generator,"generator"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_generator = ObjNull;};},"",999,false,false,"",'!isNull life_generator']];
	    //Packup Generator
		life_actions = life_actions + [player addAction["IGNORE",life_fnc_packupgenerator,"",0,false,false,"",'
		_generator = nearestObjects[getPos player,["Land_Portable_generator_F"],3.5] select 0; !isNil "_generator" && !isNil {(_generator getVariable "generator")} && (count (_generator getVariable "generator") > 1)
		']];
		//Place Light
		life_actions = life_actions + [player addAction["**ALRP Drugfield**",{if(!isNull life_light) then {{detach _x} foreach (life_light getvariable "light"); _handle = [life_light,"light"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_light,"light"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_light = ObjNull;};},"",999,false,false,"",'!isNull life_light']];
	    //Packup Light
		life_actions = life_actions + [player addAction["IGNORE",life_fnc_packuplight,"",0,false,false,"",'
		_chair = nearestObjects[getPos player,["Land_PortableLight_double_F"],3.5] select 0; !isNil "_light" && !isNil {(_light getVariable "light")} && (count (_light getVariable "light") > 1)
		']];
		//Place Campfire
		life_actions = life_actions + [player addAction["**ALRP Drugfield**",{if(!isNull life_campfire) then {{detach _x} foreach (life_campfire getvariable "campfire"); _handle = [life_campfire,"campfire"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_light,"campfire"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_campfire = ObjNull;};},"",999,false,false,"",'!isNull life_campfire']];
	    //Packup Campfire
		life_actions = life_actions + [player addAction["IGNORE",life_fnc_packupcampfire,"",0,false,false,"",'
		_campfire = nearestObjects[getPos player,["Campfire_burning_F"],3.5] select 0; !isNil "_campfire" && !isNil {(_campfire getVariable "campfire")} && (count (_campfire getVariable "campfire") > 1)
		']];
	};
	case west:
	{
		//Packup Roadblock
		life_actions = life_actions + [player addAction["Pack up RoadBlock",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']];

		//place roadblock
		life_actions = life_actions + [player addAction["Place Roadblock",{if(!isNull life_roadblock) then {{detach _x;} foreach (life_roadblock getvariable "roadblock");
		_handle = [life_roadblock,"roadblock"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [[life_roadblock,"roadblock"],"life_fnc_enablecollisionwith",true,false] call BIS_fnc_MP; life_roadblock = ObjNull;};},"",999,false,false,"",'!isNull life_roadblock']];

		//gatherevidence
		life_actions = life_actions + [player addAction["Gather Evidence",life_fnc_gatherEvidence,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_Suitcase_F"']];


		life_actions = life_actions + [player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (vehicle player == player) ']];

		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0.2 && (life_inv_bandage > 0) ']];

		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.2 && (life_inv_bandage > 0) ']];



//Pickup Item
life_actions = life_actions + [player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) < 5 && !life_action_inUse ']];

		/*
			Action now on delete key ingame, fuck this scroll shit - Pydrex
		life_actions = life_actions + [player addAction["Seize Items",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']];
		*/

		//Unblindfold person
		life_actions = life_actions + [player addAction["Remove blindfold",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "blindfolded") ']];

		//Untie person
		life_actions = life_actions + [player addAction["Untie Person",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 1.5 && isPlayer cursorTarget && (cursorTarget getVariable "tied") ']];

		//heal system
		life_actions = life_actions + [player addAction[localize "STR_pAct_NoBandagePlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable "bleedingon") == 2 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_NoStitchPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable "woundedon") == 2 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_NoSplintPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable "fractureon") == 2 ']];

		life_actions = life_actions + [player addAction[localize "STR_pAct_NoEpiPenPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable "unconciouson") == 2 ']];
	
	//DEADMAN SWITCH
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Deadman Switch</t>",life_fnc_DeadmanSwitch,"",0,false,false,"", '(vest player in ["SuicideVest", "SuicideVest_Camo", "SuicideVest_Brown", "SuicideVest_khaki", "SuicideVest_olive"]) && alive player && playerSide == civilian && !life_istazed']];
	
	// Heli Fast Rope
		life_actions = life_actions + [player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']];
	};
};
