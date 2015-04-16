// GLOBAL EPOCH CONFIG OPTIONS

//Tag a Friend
DZE_Friendly = true;

//Enable/Disable backpack contents being wiped if logging out or losing connection beside another player.
DZE_BackpackGuard = true; 

//Enable full moon nights by setting this to true. (Default: false)
dayz_fullMoonNights = true;

//Experimental feature that will parachute spawn all players into the game. (Default: false)
dayz_paraSpawn = false;

// Halo Jump 
DZE_HaloJump = true;

//Allows adding more potential spawn points. PLEASE NOTE: The extra markers named spawn5 - spawn10 must exist. (Default: 4)
//spawnMarkerCount = 10;

//Controls animal spawn limits (Default: 8)
dayz_maxAnimals = 8;

//Enables the ability to tame dogs with raw meat. (Default: false)
dayz_tameDogs = false;

//true will enable debug so that road debris and new vehicle spawns are visible via map markers. Also debug will enable "Save to arma.RPT" that allows access of a tool to obtain lootpos information for buildings used for adding support for additional maps. (Default: false)
DZEdebug = false;

//DZE_SelfTransfuse Allows Players to Self-Bloodbag
DZE_SelfTransfuse = true;

//DZE_selfTransfuse_Values = [blood amount, infection chance, cool-down
DZE_selfTransfuse_Values = [600, 10, 360];

//R3F Weight
DZE_R3F_WEIGHT = true;

//Damage player in debug area
DZE_Debug_Damage = false;

//Customize Death Messages
//Enables global chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgGlobal = false;

//Enables side chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgSide = false;

//Enables global title text messaging of player deaths.  (Default: false)
DZE_DeathMsgTitleText = false;

//Change amount of ammo boxes that spawn on the server.
MaxAmmoBoxes = 10;

//Change amount of mining veins on the server.
MaxMineVeins = 25;

//Enables Helicopter Lifting
DZE_HeliLift = false;

// (Default: 25)
DZE_HumanityTargetDistance = 25;

// (Default: true)
DZE_FriendlySaving = true;

//Able to surrender, which drops all weapons and places hands on head ( Default "/" keybind)
DZE_Surrender = false;

//If true it forces YES on the question to show name or not on players close to you.
DZE_ForceNameTags = false;  

// LOADOUT CONFIG OPTIONS

//Customize fresh spawn loadout
DefaultMagazines = ["ItemBandage","ItemBandage","6Rnd_45ACP","6Rnd_45ACP","15Rnd_W1866_Slug","15Rnd_W1866_Slug","ItemPainkiller"];  
DefaultWeapons = ["revolver_EP1","Winchester1866","ItemFlashlight","ItemMap","ItemRadio","ItemToolbox"];  
DefaultBackpack = "DZ_Patrol_Pack_EP1";  
DefaultBackpackWeapon = "";

// BUILDING CONFIG OPTIONS

//If True will allow building on roads
DZE_BuildOnRoads = false;

//Distance where the building limits will look for objects.
DZE_checkNearbyRadius = 30;

//Change the number of constructed objects within range of a 30m Plot Pole. (default=150). Be very carefull with this number, as setting it too high will cause a huge amount of local lag**
DZE_BuildingLimit = 500; 

//Non destructable bases
DZE_GodModeBase = false;   //Buildables will be indestructable from the NEXT restart they were placed if set to true.

//DZE_requireplot override variable added
DZE_requireplot = 1; 

//Plot Pole Area
DZE_PlotPole = [50,65];

//Build Steps
DZE_StaticConstructionCount = 1; 

//Maintain Damage
//DZE_DamageBeforeMaint = 0.09;

//Maintain Range
//DZE_maintainRange = ((DZE_PlotPole select 0)+20); //range where it maintains. Default: (plotradius + 20 meters)

// Vector Building 

//ZED CONFIG OPTIONS
//Max number of zombies spawned per player. (Default: 40)
dayz_maxLocalZombies = 40;

//Starting global max zombie count, this will increase for each player within 400m (Default: 40)
dayz_maxGlobalZombiesInit = 40;

//This is the amount of global zombie limit increase per player within 400m (Default: 10)
dayz_maxGlobalZombiesIncrease = 10;

//Total zombie limit (Default: 500)
dayz_maxZeds = 750;

//Disables zombies attacking vehicles.  (Default: false)
dayz_zedsAttackVehicles = true;

//Enables Player to Spawn as Zombie after being infected
DZE_PlayerZed = false;

//TRADER CONFIG OPTIONS
//Enable purchased vehicle parachute spawning setting this to true. (Default: false)
DZE_TRADER_SPAWNMODE = false;

//Force Tags at Trader
DZE_ForceNameTagsInTrader = true;

//Controls the distance that you can sell a vehicle to the traders.
dayz_sellDistance = 20;
dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

//Mission Based Traders
DZE_ConfigTrader = true;

//VEHICLE CONFIG OPTIONS
//Set the Amount of possible heli Crashes on Spawn
OldHeliCrash = true;
MaxHeliCrashes= 20; // Default = 5

//Vehicle Ammo Saving
DZE_vehicleAmmo = 0;

//Controls the max overall vehicle limit if this limit is reached no new vehicles will spawn.
MaxVehicleLimit = 250;

//Sets the lowest possible damage a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleDamageLow = 25;

//Sets the highest possible damage a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleDamageHigh = 75;

//Sets the lowest possible fuel level a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleFuelLow = 25;

//Sets the highest possible fuel level a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleFuelHigh = 75;

//To change how many debris spawn edit the MaxDynamicDebris variable in the missions init.sqf.
MaxDynamicDebris = 100; // Max number of road debris spawns (Default: 100)

//Force Save
DZE_AllowForceSave = false; // force a save of a vehicle to database

//CUSTOM LOOT CONFIG OPTIONS

// Custom Mission Loot Table (Default: false)
DZE_MissionLootTable = True;

// Loot Spawn Timer (Default: 10)
DZE_LootSpawnTimer = 10;
