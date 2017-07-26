class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";

	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
	};

	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
	};
	
	class Jobs
	{
		file = "core\jobs";
		class JobMenu {};
		class JobPressed {};
		class leavejob {};
		class jobType {};
		class deletejobvehicles {};
	};

	class Memes
	{
		file = "core\memes";
		class randWeapon {};
		class barrierPressed {};
		class barrierMenu {};
		class barriers {};
	};

	class Gold
	{
		file = "core\actions\robgold";
		class hackgold {};
		class closegold {};
		class stealgold {};
		class opengold {};
		class lockgold {};
	};

	class EvidenceLocker
	{
		file = "core\actions\evidencelocker";
		class hackevidencelocker {};
		class closeevidencelocker {};
		class openevidencelocker {};
		class lockevidencelocker {};
	};
	
	class TowTruck
	{
		file = "core\jobs\towtruck";
		class impound {};
	};

	class Repairman
	{
		file = "core\jobs\repairman";
		class fixshit {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class newLifeRule {};
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class stitchSelf {};
		class bandageSelf {};
		class splintSelf {};
		class epipenSelf {};
		class stitchPlayer {};
		class bandagePlayer {};
		class splintPlayer {};
		class healperson {};
		class healself {};
		class heatPlayer {};
		class coolPlayer {};
		class antiviralPlayer {};
		class painkillerPlayer {};
		class hydratePlayer {};
		class sheatPlayer {};
		class scoolPlayer {};
		class santiviralPlayer {};
		class spainkillerPlayer {};
		class shydratePlayer {};
		class epipenPlayer {};
		class revivePlayer {};
		class CPRPlayer {};
		class revived {};
		class medicMarkers {};
		class medicMarkers2 {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
	};

	class Actions
	{
		file = "core\actions";
		class playSound {};
		class jailIncome {};
		class havesex {};
		class AntiSpam {};
		class tieingActionb {};
		class tieingAction {};
		class breakout {};
		class createEvidence {};
		class destroyEvidence {};
		class gatherEvidence {};
		class lawyerSignup {};
		class rope {};
		class middlefinger {};
		class punchSystem {};
		class packupRoadblock {};
		class buyLicense {};
		class standardPhone {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class grabshovel {};
		class catchFish {};
		class sellBag {};
		class playSound2 {};
		class catchTurtle {};
		class dropFishingNet {};
		class postBail {};
		class phonecall {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pushVehicle2 {};
		class civpulloutAction {};
		class emspulloutAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupItem2 {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};
		class lockvault {};
		class openvault {};
		class closevault {};
		class hackvault {};

		class robShops {}; //Lakeside General
		class robLM {}; //Lakeside Market
		class robLG {}; //LosDiablos General
		class robLDM {}; //LosDiablos Market
		class robMG {}; //Morrison General
		class robMM {}; //Morrison Market
		class surrender {};
	};

	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class housePrice {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class prostitute {};
		class givekey1 {};
		class givekey2 {};
		class givekey3 {};
		class givekey4 {};
		class givekey5 {};
		class wipekeys {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};

	class Effects
	{
		file = "core\effects";
		class useMarijuana {};
		class useMeth {};
		class useCoke {};
		class useHeroin {};
		class useCigarette {};
		class useBEC {};
	};

	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};

		//Clothing Store Configs
		class clothing_TF01 {};
		class clothing_corleones {};
		class clothing_faceless {};
		class clothing_narco {};
		class clothing_strife {};
		class clothing_tomwalker {};
		class clothing_rpd {};
		class clothing_firm {};
		class clothing_konvicted {};
		class clothing_supernova {};
		class clothing_cop {};
		class clothing_ems {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
		class clothing_ss {};
		class clothing_lrf {};
		class clothing_shadow {};
		class clothing_house {};
		class clothing_slaughter {};
		class clothing_Taurus {};
		class clothing_nightwatch {};
		class clothing_whitefamily {};
		class clothing_blackops {};
		class clothing_blackwatch {};
		class clothing_targaryen {};
		class clothing_hitmen {};
		class clothing_goodwin {};
		class clothing_redwood {};
		class clothing_copcid {};
		class clothing_copsert {};
		class clothing_ghostsquad {};
		class clothing_nigo {};
		class clothing_outsiders {};
		class clothing_hooded {};
		class clothing_sov {};
		class clothing_pepe {};
		class clothing_cg {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class revokeLicense {};
		class viewBack {};
	};

	class Functions
	{
		file = "core\functions";
		class debugGear {};
		class treasure {};
		class collectPaycheck {};
		class vdmed {};
		class A3L_bankrobbery {};
		class pettycash {};
		class pettycash2 {};
		class A3L_PlantCharge {};
		class calWeightDiff {};
		class seizeObjects {};
		class untie {};
		class untieb {};
		class electric {};
		class fetchCfgDetails {};
		class hh {};
		class handleInv {};
		class hudSetup {};
		class stage1pain {};
		class stage2pain {};
		class stage3pain {};
		class hudUpdate {};
		class koilcombat {};
		class pickupitems {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class dropItems2 {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class enablecollisionwith {};
  		class disablecollisionwith {};
  		class destroyComms {};
	};

	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};

	class Civilian
	{
		file = "core\civilian";
		class removeWeapons {};
		class jailMe {};
		class tieing {};
		class throwcar {};
		class civescort {};
		class civstopescort {};
		class tieingb {};
		class jail {};
		class tazed {};
		class sharphit {};
		class blunthit {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class Parachuting {};
	};

	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};

	class Cop
	{
		file = "core\cop";
		class stripPlayer {};
		class fingerprint {};
		class patrolPoints {};
		class copSiren {};
		class callBackup {};
		class copMarkers {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class emsInteractionMenu {};
		class emsInteractionMenu2 {};
		class copInteractionMenu {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class testIntox {};
		class testIntoxClient {};
		class intoxTestReturn {};
		class fastRope {};
		class removeWeaponAction {};
		class removeWeaponActionCiv {};
		class removeWeapons {};
		class teargas {};
		class soundloop {};
	};
	
	class ThreatLevel
	{
		file = "core\cop\threatlevel";
		class ThreatLevelMenu {};
		class ThreatLevelPressed {};
	};
	
	class PrisonAlarm
	{
		file = "core\cop\prisonalarm";
		class prisonmenu {};
		class prisonmenupressed {};
	};

	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};

	class Shops
	{
		file = "core\shops";
		class licenses {};
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class stretcherpls {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class vehicleShopPreview {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};

	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class RoadBlockConc {};
		class axe {};
	};
	
	class Drugfield
	{
		file = "core\items\drugfield";
		class netting {};
		class packupnetting {};
		class generator {};
		class packupgenerator {};
		class light {};
		class packuplight {};
		class shovel {};
		class campfire {};
		class packupcampfire {};
	};

	class Seeds
	{
		file = "core\items\drugfield\seeds";
		class cannabisSeed {};
	};

	class Dialog_Controls
	{
		file = "dialog\function";
		class setCamPosition {};
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
	};
};
