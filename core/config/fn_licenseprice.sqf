/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "rpd": {0};
	case "faceless": {0};
	case "corleones": {0};
	case "sov": {0};
	case "marshals": {0};
	case "konvicted": {0};
	case "firm": {0};
	case "supernova": {0};
	case "tomwalker": {0};
	case "hitmen": {0};
	case "hooded": {0};
	case "goodwin": {0};
	case "mafia": {0};
	case "redwood": {0};
	case "nigo": {0};
	case "narco": {0};
	case "TF01": {0};
	//end of new gangs
	case "driver": {200}; //Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {1800}; //Firearm/gun license cost
	case "dive": {400}; //Diving license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "heroin": {2500}; //Heroin processing license cost
	case "marijuana": {11500}; //Marijuana processing license cost
	case "medmarijuana": {150}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {26000}; //Rebel license cost
	case "truck": {5000}; //Truck license cost
	case "diamond": {3500};
	case "cocaine": {15000};
	case "sand": {1450};
	case "mair": {1500};
	case "home": {9500};
	case "ss": {0};
	case "rifle": {3800};
	case "forestry": {3500};
	case "uranium": {5000}; 
	case "insurance": {4500};
	case "meth": {15000};
	case "coke": {15000};
	//Whitelisted Gangs
	case "outsiders": {0};
	case "ghost": {0};
	case "nightwatch": {0};
	case "blackops": {0};
	case "whitefamily": {0};
	case "blackwatch": {0};
	case "shadow": {0};
	case "house": {0};
	case "lakesiderebforce": {0};
	case "slaughter": {0};
	case "strife": {0};
	case "Taurus": {0};
	case "cid": {0};
	case "sert": {0};
	case "lospepe": {0};
	case "phantom": {0};
};