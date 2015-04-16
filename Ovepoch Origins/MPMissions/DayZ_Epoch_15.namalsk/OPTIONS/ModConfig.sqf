if (!isDedicated) then {
	if (DZE_SAFEZONE_ENABLE) then {
		[] execVM "EpochMods\Safe\safezones.sqf";  	
	};
	
	if (DZE_SERVICEPOINT_ENABLE) then {
		[] execVM "EpochMods\Service\service_point.sqf";  	
	};
	
	if(DZE_CLICK_ACTIONS_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\ClickActions\init.sqf";
		if(DZE_DEPLOYVEHICLE_ENABLE) then {
			call compile preprocessFileLineNumbers "EPOCHMODS\ClickActions\vehicles\init.sqf";
		};
		if(DZE_SUICIDE_ENABLE) then {
			call compile preprocessFileLineNumbers "EpochMods\Suicide\init.sqf";
		};
	};
};

	if(DZE_BASEJUMP_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\BaseJump\init.sqf";
	};

	if(DZE_LIFTANDTOW_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\L&T\init.sqf";
	};
		
	if(DZE_REFUEL_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\Refuel\init.sqf";	
	};	

	if (DZE_PLOTPROTECTION_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\PlotProtection\init.sqf";
	};

	if (DZE_REGEN_ENABLE) then {
		call compile preprocessFileLineNumbers "EpochMods\Regen\regenblood.sqf";
	};
