/*Mission Loading*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 7;				//The instance
dayZ_serverName = "EPOCH";
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen

//disable radio messages
enableRadio true;

// Prevent messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500;
dayz_MapArea = 12000;

//Load in compiled functions
diag_log "Loading Server Options";
execVM "OPTIONS\EpochConfig.sqf";
call compile preprocessFileLineNumbers "OPTIONS\Loader.sqf";
diag_log "Server Options Loaded";

// Dayz Epoch Events
EpochEvents = [["any","any","any","any",5,"crash_spawner"],["any","any","any","any",10,"crash_spawner"],["any","any","any","any",15,"supply_drop"],["any","any","any","any",25,"ikea"],["any","any","any","any",35,"supply_drop"],
["any","any","any","any",40,"crash_spawner"],["any","any","any","any",45,"supply_drop"],["any","any","any","any",50,"ikea"]];

//Load in compiled functions
call compile preprocessFileLineNumbers "DAYZ_CODE\INIT\variables.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "DAYZ_CODE\INIT\compiles.sqf";
progressLoadingScreen 0.7;
call compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\player_traderMenu.sqf";
progressLoadingScreen 0.8;
call compile preprocessFileLineNumbers "TRADERS\server_traders.sqf";
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

diag_log "Loading Server Monitor & Server Executions!";
if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

diag_log "Loading Dedicated Executions!";
if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
	
	//Remote Messages
	_nil = [] execVM "DAYZ_CODE\COMPILE\remote_message.sqf";

	//Mod Loader
	execVM "OPTIONS\ModConfig.sqf";
};

execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

if (!isNil "dayZ_serverName") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText dayZ_serverName;
	};
};

diag_log "Finalizing Server Startup, Loading BIS_Effects";
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf";
