// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

//Nigger
if (isServer) then {
	//bank stuff m8
	cgbankvault setvariable ["robbed",false,true];
	pstash1 setvariable ["robbed",false,true];
	pstash2 setvariable ["robbed",false,true];
	// gold
	cgbankvault1 setvariable ["robbed",false,true];
	suitcase1 setvariable ["robbed",false,true];
	suitcase2 setvariable ["robbed",false,true];
	suitcase3 setvariable ["robbed",false,true];
	//jail
	evidencelocker setvariable ["robbed",false,true];
};

// Different depending on server
//tf_radio_channel_name = "ArmA 3 Life - US #1";
//tf_radio_channel_name = "ArmA 3 Life - EU #1";

enableSaving [false, false];
[] execVM "KRON_Strings.sqf";

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "EzLife";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "nominemarkers.sqf";


StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

