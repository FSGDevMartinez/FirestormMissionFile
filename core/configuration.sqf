#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_racing = false;
koil_antispam = 0;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_koil_race = 0;
collectingt = 0;
life_koil_race2 = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_mcdonalds_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
life_respawn_timer = 3;
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_poop = 15;
life_std = 0;
life_suicidedeadman = 0;
pyd_dead_gear = [];
life_maxweightdone = 0;
life_eattotal = 0;
life_dirt = 0;
life_pizza = 0;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
cobra_justrobbed = false;
life_respawned = false;
life_removeWanted = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
life_escortTarget = objNull;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_nospampls = 0;
life_firing_range = false;
life_pickup_open = false;
/*DRUGFIELD VARIABLES*/
life_seeded = 0;
life_shovel = 0;
life_generatordrugfield = 0;
life_lightdrugfield = 0;
life_nettingdrugfield = 0;
life_campfiredrugfield = 0;
/*JOB VARIABLES*/
JobType = 0;
Life_Working = 0;
Life_TowTruck = 0;
Life_Delivery = 0;
Life_McDonalds = 0;
Life_Taxi = 0;
Life_Miner = 0;
Life_Repairman = 0;
Life_WoodLogger = 0;
cobra_waitjob = 0;
cobra_waitleave = 0;
cobra_fixing = 0;
life_workerwarned = 0;
/*BANKING VARIABLES*/
cobra_paycheck = 0;
/*OTHER NEW VARIABLES*/
Life_Patrolling = 0;
life_destroying = 0;
life_nospampls = 0;
life_karma = 0;
life_junk = 0;
cobra_mysterymemes = 0;
cobra_deployingcurrently = 0;
cobra_cones = 0;
cobra_barriers = 0;
antispam = 0;
MasterAdmin = 76561198332968271;
cobra_police = 1;
///////// IF THE DONATION GOAL IS REACHED CHANGE THE 0 TO 1 /////////
cobra_specialoffers = 0;
////////////////////////////////////////////////////////////////////////

//Persistent Saving
__CONST__(life_save_civ,TRUE);
__CONST__(life_save_yinv,TRUE);

//Revive constant variables.
__CONST__(life_revive_cops,FALSE);
__CONST__(life_revive_fee,735);

//House Limit
__CONST__(life_houseLimit,5);

//Gang related stuff?
__CONST__(life_gangPrice,7500);
__CONST__(life_gangUpgradeBase,1000);
__CONST__(life_gangUpgradeMultipler,2.5);

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 32; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 32; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_battery = 70;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,4);
life_cash = 0;//c
__CONST__(life_impound_car,35);
__CONST__(life_impound_boat,45);
__CONST__(life_impound_air,55);
life_istazed = false;
life_my_gang = ObjNull;
life_nlrtimer_stop = false;
life_nlrtimer_running = false;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 100; //Paycheck Amount
	};
	case independent: {
		life_atmcash = 7000;
		life_paycheck = 400;
	};
	case east:
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 200; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["A3L_Karts"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly);

life_inv_items =
[
"life_inv_gold",
"life_inv_keycard",
"life_inv_token",
"life_inv_bronzecoins",
"life_inv_goldcoins",
"life_inv_jewelry",
"life_inv_meth2",
"life_inv_condom",
"life_inv_medkit",
"life_inv_cleankit",
"life_inv_weddingring",
"life_inv_bandage",
"life_inv_tierope",
"life_inv_stitches",
"life_inv_splint",
"life_inv_mobilephone",
"life_inv_panicbutton",
"life_inv_epipen",
"life_inv_bec",
"life_inv_methu",
"life_inv_methp",
"life_inv_cokeu",
"life_inv_cokep",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_sand",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_cotton",
	"life_inv_cannabis",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cottonseeds",
	"life_inv_cannabisseeds",
	"life_inv_RoadBlockConc",
	"life_inv_uranium",
	"life_inv_uraniumr",
	"life_inv_axe",
	"life_inv_chainsaw",
	"life_inv_log",
	"life_inv_lumber",
	"life_inv_painkiller",
    "life_inv_lollypop",
	"life_inv_package",
	"life_inv_repairtools",
	//Drugfield
	"life_inv_netting",
	"life_inv_light",
	"life_inv_generator",
	"life_inv_shovel",
	"life_inv_campfire",
	/////////////////
	"life_inv_metal",
	"life_inv_junk",
	//McDonalds
	"life_inv_burger",
	"life_inv_fries",
	"life_inv_pepsi"
];













//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
    //New Cobra
	["license_civ_insurance","civ"],
	//
	//NEW POLICE LICENSES
	["license_cop_cid","cop"],
    ["license_cop_sert","cop"],
	["license_cop_marshals","cop"],
    /////////////////////////
	["license_civ_meth","civ"],
    ["license_civ_coke","civ"],
	["license_cop_air","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_diamond","civ"],
	["license_civ_sand","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_rifle","civ"],
	["license_civ_uranium","civ"],
	["license_civ_forestry","civ"],
	//NEW
	["license_civ_narco","civ"],
	["license_civ_faceless","civ"],
	["license_civ_corleones","civ"],
	["license_civ_nigo","civ"],
	["license_civ_konvicted","civ"],
	["license_civ_tomwalker","civ"],
	["license_civ_firm","civ"],
	["license_civ_goodwin","civ"],
	["license_civ_ghost","civ"],
	["license_civ_redwood","civ"],
	["license_civ_supernova","civ"],
	["license_civ_rpd","civ"],
	////////////////
	["license_civ_lakesiderebforce","civ"],
	["license_civ_hitmen","civ"],
	["license_civ_strife","civ"],
	["license_civ_sov","civ"],
	["license_civ_nightwatch","civ"],
	["license_civ_blackops","civ"],
	["license_civ_whitefamily","civ"],
	["license_civ_blackwatch","civ"],
	["license_civ_outsiders","civ"],
	["license_civ_hooded","civ"],
	["license_civ_slaughter","civ"],
	["license_civ_Taurus","civ"],
	["license_civ_house","civ"],
	["license_civ_shadow","civ"],
	["license_civ_TF01","civ"],
	["license_civ_secretservice","civ"],
	//EzGangs
	["license_civ_lospepe","civ"],
	["license_civ_phantom","civ"]
	];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",120],["heroinp",250],["cocaine",150],["cocainep",350],["cannabis",250],["marijuana",300],["uranium",500],["uraniumr",500],["hackingtool",1000],["blastingcharge",1000],["boltcutter",350],["keycard",40],["methp",400],["cokeu",40],["cokep",500]];


/*
	Sell / buy arrays
*/
sell_array =
[
	["token",550],
	["bronzecoins",780],
	["goldcoins",880],
	["jewelry",5000],
	//old
	["junk",5],
	["metal",15],
	["gold",11000],
	//old
	["bec",50],
	["methp",595],
	["cokep",690],
	["apple",5],
	["heroinp",690],
	["marijuana",2500],
	["coffee",5],
	["bandage",5],
	["tierope",50],
	["stitches",5],
	["splint",5],
	["epipen",5],
	["donuts",6],
	["tbacon",25],
	["lockpick",60],
	["pickaxe",75],
	["redgull",12],
	["peach",55],
	["cocaine",300],
	["cocainep",550],
	["diamond",50],
	["diamondc",535],
	["glass",175],
	["fuelF",50],
	["wheat",38],
	["sunflower",66],
	["cotton",30],
	["wheat seed",10],
	["sunflower seed",10],
	["cotton seed",10],
	["cannabis seed",15],
	["RoadBlockConc",50],
	["uraniumr",620],
	["lumber",400]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["netting",250],
	["generator",250],
	["light",250],
	["shovel",850],
	["chair",125],
	["campfire",75],
	["cleankit",100],
	["medkit",500],
	["condom",10],
	["weddingring",150],
	["bandage",25],
	["tierope",200],
	["stitches",10],
	["splint",10],
	["epipen",10],
	["marijuana",3000],
	["methp",1500],
	["cokep",1500],
	["apple",5],
	["rabbit",5],
	["bec",50],
	["mobilephone",10],
	["panicbutton",10],
	["turtle",950],
	["water",7],
	["donuts",12],
	["coffee",10],
	["tbacon",75],
	["lockpick",100],
	["pickaxe",350],
	["axe",250],
	["chainsaw",500],
	["redgull",12],
	["fuelF",85],
	["wheat",40],
	["sunflower",67],
	["cotton",33],
	["wheat seed",25],
	["sunflower seed",25],
	["cotton seed",25],
	["cannabis seed",40],
	["peach",68],
	["spikeStrip",250],
	["blastingcharge",2000],
	["hackingtool",15000],
	["boltcutter",2500],
	["defusekit",250],
	["storagesmall",6500],
	["storagebig",13000],
	["painkiller",10],
	["lollypop",4],
	["pickaxe2",65],
	//new
	["burger",10],
	["fries",5],
	["pepsi",3]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[


			["cl3_enduro_aqua",0],
			["cl3_xr_1000_aqua",0],

			["cl3_enduro_babyblue",0],
			["cl3_xr_1000_babyblue",0],

			["cl3_enduro_babypink",0],
			["cl3_xr_1000_babypink",0],

			["cl3_enduro_black",0],
			["cl3_xr_1000_black",0],

			["cl3_enduro_blue",0],
			["cl3_xr_1000_blue",0],

			["cl3_enduro_burgundy",0],
			["cl3_xr_1000_burgundy",0],

			["cl3_enduro_cardinal",0],
			["cl3_xr_1000_cardinal",0],

			["cl3_enduro_dark_green",0],
			["cl3_xr_1000_dark_green",0],

			["cl3_enduro_flame",0],
			["cl3_xr_1000_flame",0],

			["cl3_enduro_flame1",0],
			["cl3_xr_1000_flame1",0],

			["cl3_enduro_flame2",0],
			["cl3_xr_1000_flame2",0],

			["cl3_enduro_gold",0],
			["cl3_xr_1000_gold",0],

			["cl3_enduro_green",0],
			["cl3_xr_1000_green",0],

			["cl3_enduro_grey",0],
			["cl3_xr_1000_grey",0],

			["cl3_enduro_lavender",0],
			["cl3_xr_1000_lavender",0],

			["cl3_enduro_light_blue",0],
			["cl3_xr_1000_light_blue",0],

			["cl3_enduro_light_yellow",0],
			["cl3_xr_1000_light_yellow",0],

			["cl3_enduro_lime",0],
			["cl3_xr_1000_lime",0],

			["cl3_enduro_marina_blue",0],
			["cl3_xr_1000_marina_blue",0],

			["cl3_enduro_navy_blue",0],
			["cl3_xr_1000_navy_blue",0],

			["cl3_enduro_orange",0],
			["cl3_xr_1000_orange",0],

			["cl3_enduro_purple",0],
			["cl3_xr_1000_purple",0],

			["cl3_enduro_red",0],
			["cl3_xr_1000_red",0],

			["cl3_enduro_sand",0],
			["cl3_xr_1000_sand",0],

			["cl3_enduro_silver",0],
			["cl3_xr_1000_silver",0],

			["cl3_enduro_white",0],
			["cl3_xr_1000_white",0],

			["cl3_enduro_yellow",0],
			["cl3_xr_1000_yellow",0],







			["tcg_hrly",0],
			["tcg_hrly_white",0],
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],

			["wirk_h3_limo",0],



			//CL3
			["cl3_mackr_del_blue",0],
			["cl3_mackr_del_american",0],
			["cl3_mackr_del_black",0],
			["cl3_mackr_del_black_gold",0],
			["cl3_mackr_del_black_white",0],
			["cl3_mackr_del_green_white",0],
			["cl3_mackr_del_red_white",0],
["Nhz_audia8limo",0],
			//CL3



			["C_Van_01_fuel_F",0],
			["I_G_Van_01_fuel_F",0],

			["A3L_BMW135Sport1",0],
			["A3L_BMW135Sport2",0],
			["A3L_BMW135Sport3",0],
			["A3L_BMW135Sport4",0],
			["A3L_BMW135Sport5",0],
			["A3L_BMW135White",0],
			["A3L_BMW135Black",0],
			["A3L_BMW135Blue",0],
			["A3L_BMW135Purple",0],
			["A3L_BMW135Red",0],

			["AM_Holden_RBlue",0],
			["AM_Holden_RRed",0],
			["AM_Holden_RWhite",0],
			["AM_Holden_RBlack",0],

	["AM_Holden_EMS",0],
		["AM_Holden_Police",0],
		["GNT_C185",0],
		["M1030",0],
		["A3L_EvoXrally_green",0],
		["A3L_EvoXrally_white",0],
		["A3L_EvoXrally_red",0],
		["A3L_EvoXrally_blue",0],
		["A3L_EvoXDarkGreen",0],
		["A3L_OffGreen",0],
		["A3L_EvoXOffYellow",0],
		["A3L_EvoXYellow",0],
		["A3L_EvoXPink",0],
		["A3L_EvoXPurple",0],
		["A3L_EvoXWhite",0],
		["A3L_EvoXBlack",0],
		["A3L_EvoXRed",0],
		["EvoXSo1",0],
		["EvoXSo2",0],
		["EvoXSo3",0],
		["EvoXSo4",0],
		["A3L_TaurusPD1",0],
		["A3L_TaurusPD2",0],
		["A3L_SuburbanCSO",0],
		["A3L_Suburban",0],
		["A3L_SuburbanUM",0],
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],

	["A3L_ChargerRed",0],
	["A3L_ChargerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhite",0],
	["A3L_Charger",0],

	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0]


];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
];
__CONST__(life_garage_sell,life_garage_sell);
