serverTraders = ["GUE_Worker2","Soldier_Sniper_KSVK_PMC","Soldier_GL_PMC","GUE_Soldier_Pilot","GUE_Woodlander3","Worker4","Reynolds_PMC",
"Soldier_Sniper_PMC","GUE_Soldier_3","RU_Doctor","Doctor","UN_CDF_Soldier_Pilot_EP1","RU_Worker4","RU_Woodlander4","Citizen3","RU_Damsel5",
"Dr_Hladik_EP1","GUE_Commander","GUE_Soldier_CO","Profiteer2_EP1","RU_Farmwife5","GUE_Woodlander1","RU_Worker1","GUE_Soldier_2"];

/*---------------------------------------------------------------------------
			HERO VENDORS
---------------------------------------------------------------------------*/

//COMBINATION VENDOR
menu_Soldier_Sniper_PMC = [
	[["Ammunition",478],["Clothes",575],["Helicopter Armed",493],["Military Armed",562],["Trucks Armed",479],["Weapons",477],["Overwatch Sniper",1011],["Overwatch Sidearm",1001],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"hero"
];
//SUPPLIES
menu_GUE_Woodlander3 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"hero"
];
//MEDICAL
menu_RU_Doctor = [
	[["Chemlites / Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"hero"
];
//FOOD & DRINK
menu_RU_Damsel5 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"hero"
];

/*---------------------------------------------------------------------------
			BANDIT VENDORS
---------------------------------------------------------------------------*/

//COMBINATION VENDOR
menu_GUE_Woodlander1 = [
	[["Ammunition",577],["Clothing",575],["Helicopter Armed",512],["Military Armed",569],["Trucks Armed",534],["Weapons",627],["Overwatch Sniper",1011],["Overwatch Sidearm",1001],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"hostile"
];
//SUPPLIES
menu_RU_Worker1 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"hostile"
];
//MEDICAl
menu_Dr_Hladik_EP1 = [
	[["Chemlites / Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"hostile"
];
//FOOD & DRINK
menu_RU_Farmwife5 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"hostile"
];

/*---------------------------------------------------------------------------
			NEUTRAL VENDORS
---------------------------------------------------------------------------*/

//MEDICAL
menu_Doctor = [
	[["Chemlites / Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
//SUPPLIES
menu_RU_Worker4 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"neutral"
];
//WEAPONS
menu_Soldier_Sniper_KSVK_PMC = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns and Single Shot",641],["Sniper Rifle",640],["Submachine Guns",642],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch G3",1006],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"neutral"
];
//AMMUNITION
menu_Soldier_GL_PMC = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns and Single Shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"neutral"
];
//FOOD & DRINK
menu_Citizen3 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Tin Bar",101]],
	"neutral"
];


/*---------------------------------------------------------------------------
			NEUTRAL VEHICLE VENDORS
---------------------------------------------------------------------------*/

menu_GUE_Soldier_3 = [
	[["Bikes And Atv",587],["Buses And Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Overwatch Civ Car",1015],["Overwatch Nissian Car",1016]],
	[],
	"neutral"
];
menu_RU_Woodlander4 = [
	[["Bikes And Atv",587],["Buses And Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Overwatch Civ Car",1015],["Overwatch Nissian Car",1016]],
	[],
	"neutral"
];
menu_Worker4 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];
menu_Profiteer2_EP1 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];
menu_GUE_Soldier_Pilot = [
	[["Helicopter Unarmed",519],["Airplanes",517],["Overwatch Camel",1014]],
	[],
	"neutral"
];
menu_UN_CDF_Soldier_Pilot_EP1 = [
	[["Helicopter Unarmed",519],["Airplanes",517],["Overwatch Camel",1014]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			FRIENDLY VENDORS
---------------------------------------------------------------------------*/

//WEAPONS
menu_GUE_Commander = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns And Single Shot",641],["Sniper Rifle",640],["Submachine Guns",642],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch G3",1006],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"friendly"
];
//AMMUNITION
menu_GUE_Soldier_CO = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns And Single Shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"friendly"
];
//HELICOPTERS
menu_GUE_Worker2 = [
	[["Helicopter Armed",493]],
	[],
	"friendly"
];

/*---------------------------------------------------------------------------
			WHOLESALE VENDORS
---------------------------------------------------------------------------*/

//EAST BRIDGE
menu_GUE_Soldier_2 = [
	[["Wholesale",636]],
	[],
	"neutral"
];
//WEST BRIDGE
menu_Reynolds_PMC = [
	[["Wholesale",636]],
	[],
	"neutral"
];
