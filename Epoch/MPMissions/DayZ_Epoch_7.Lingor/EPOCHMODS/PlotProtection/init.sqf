if(isServer) exitWith {};
diag_log text "PLOTBUFF: loading config...";
call compile preprocessFileLineNumbers "EpochMods\PlotProtection\config.sqf";
diag_log text "PLOTBUFF: spawning thread...";
[] spawn {
    diag_log text "PLOTBUFF: waiting for player reference";
    waitUntil {!(isNull player);};
    diag_log text "PLOTBUFF: launching main removal loop";
    while {!(isNull player)} do {
        private["_removedZombies"];
        _removedZombies = 0;
        {
            {
                _removedZombies = _removedZombies + 1;
                deleteVehicle _x;
            } forEach (_x nearEntities ["zZombie_Base",DZE_PLOTBUFF_REMOVE_ZOMBIE_RADIUS]);
        } forEach ((position player) nearObjects["Plastic_Pole_EP1_DZ",DZE_PLOTBUFF_PLAYER_DISTANCE_CHECK]);
        if (_removedZombies > 0) then {
            diag_log text format["PLOTBUFF: removed %1 zombies near plot poles",_removedZombies];
        };
        sleep 5;
    };
};