private["_version"];
_version = "1.4.0";
diag_log text format["DZAP: loading version %1",_version];
diag_log text format["DZAP: loading function library..."];
call compile preprocessFileLineNumbers "EpochMods\dzap\lib.sqf";
if(DZE_CLICK_ACTIONS_ENABLE) then {
    diag_log text format["DZAP: loading click actions handler..."];
    call compile preprocessFileLineNumbers "EpochMods\ClickActions\init.sqf";
    if(DZE_DEPLOYBIKE_ENABLE) then {
        diag_log text format["DZAP: loading deploy Bike addon..."];
        call compile preprocessFileLineNumbers "EpochMods\bike\init.sqf";
    };
    if(DZE_SUICIDE_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading suicide addon..."];
        call compile preprocessFileLineNumbers "EpochMods\suicide\init.sqf";
    };
};

    if(DZE_LIFT_TOW_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading Lift and Tow addon..."];
        call compile preprocessFileLineNumbers "EpochMods\L&T\init.sqf";
    };
	
    if(DZE_REFUEL_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading refuel addon..."];
        call compile preprocessFileLineNumbers "EpochMods\Refuel\init.sqf";
    };
	
    if(DZE_BASEJUMP_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading basejump addon..."];
        call compile preprocessFileLineNumbers "EpochMods\Basejump\init.sqf";
    };