serverTraders = ["RU_Worker1","Dr_Annie_Baker_EP1","CIV_EuroWoman01_EP1","ibr_lingorman2s","Worker2","TK_CIV_Woman03_EP1","ibr_lingorman3s","ibr_lingorman5s","ibr_lingorman4","ibr_lingorman2","Citizen2_EP1","Worker1","RU_Madam3","Pilot","CIV_EuroMan02_EP1","CIV_EuroMan01_EP1","ibr_lingorman7s","Damsel3","Rocker4","Worker4","ibr_lingorman7","ibr_lingorman5","Citizen3_EP1","ibr_lingorman6","ibr_lingorman6s","TK_CIV_Woman02_EP1","Pilot_EP1","TK_CIV_Worker01_EP1","RU_Doctor","Functionary1","TK_CIV_Takistani04_EP1"];
/*---------------------------------------------------------------------------
			HERO VENDORS
---------------------------------------------------------------------------*/
menu_Functionary1 = [
	[["Ammunition",478],["Clothes",575],["Helicopter Armed",493],["Military Armed",562],["Trucks Armed",479],["Weapons",477],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"hero"
];

/*---------------------------------------------------------------------------
			BANDIT VENDORS
---------------------------------------------------------------------------*/
// Bandit Trader
menu_TK_CIV_Takistani04_EP1 = [
	[["Ammunition",577],["Clothing",575],["Helicopter Armed",512],["Military Armed",569],["Trucks Armed",534],["Weapons",627],["Overwatch Pistol Ammo",1012],["Overwatch Gun Ammo",1013]],
	[],
	"hostile"
];

/*---------------------------------------------------------------------------
			NEUTRAL VENDORS
---------------------------------------------------------------------------*/
// Mad Scientist 
menu_RU_Doctor = [
	[["Chemlites / Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];

// Whiskey's Parts Shop
menu_RU_Worker1 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"neutral"
];

// Lyle's Parts
menu_Worker1 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"neutral"
];

// Stella's General Goods
menu_TK_CIV_Woman03_EP1 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"neutral"
];

// Bag Lady Gina
menu_RU_Madam3 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"neutral"
];

// Samish Shop
menu_TK_CIV_Woman02_EP1 = [
	[["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Tin Bar",101]],
	"neutral"
];

/*---------------------------------------------------------------------------
			NEUTRAL WEAPON VENDORS
---------------------------------------------------------------------------*/
// Chucks Weapons
menu_ibr_lingorman7 = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns and Single Shot",641],["Sniper Rifle",640],["Submachine Guns",642],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch G3",1006],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"neutral"
];
// Buck's Shot
menu_ibr_lingorman5 = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns and Single Shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch Hk416",1008],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			NEUTRAL VEHICLE VENDORS
---------------------------------------------------------------------------*/
// Rommelo's Raceway
menu_TK_CIV_Worker01_EP1 = [
	[["Bikes And Atv",587],["Buses And Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Origins Cars",915]],
	[],
	"neutral"
];

// Jim's Used Cars
menu_Worker4 = [
	[["Buses and Vans",588],["Cargo Trucks",586],["Trucks",590],["Used Cars",520],["Overwatch Civ Car",1015],["Overwatch Nissian Car",1016],["Origins Cars",915]],
	[],
	"neutral"
];

// Rodger's 4x4
menu_ibr_lingorman7s = [
	[["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Utility Vehicles",591]],
	[],
	"friendly"
];

// Big Bob's Boats
menu_ibr_lingorman5s = [
	[["Boats Armed",673],["Boats Unarmed",672],["Origins Boats",914]],
	[],
	"neutral"
];
// Juan's Tour Boats
menu_ibr_lingorman4 = [
	[["Boats Unarmed",672],["Origins Boats",914]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			FRIENDLY VENDORS
---------------------------------------------------------------------------*/
// Tina's Tarts
menu_Damsel3 = [
	[["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"friendly"
];

// Melly's Medical
menu_Dr_Annie_Baker_EP1 = [
	[["Chemlites / Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"friendly"
];

// Alejandria's General Supplies
menu_CIV_EuroWoman01_EP1 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"friendly"
];

// Axle's Repair Shop
menu_Worker2 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"friendly"
];

/*---------------------------------------------------------------------------
			FRIENDLY WEAPON VENDORS
---------------------------------------------------------------------------*/
// Joe's Weapons
menu_CIV_EuroMan01_EP1 = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns and Single Shot",641],["Sniper Rifle",640],["Submachine Guns",642],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch G3",1006],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"friendly"
];

// Jim's Ammo
menu_CIV_EuroMan02_EP1 = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns and Single Shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612],["Overwatch Vil",1002],["Overwatch Tar",1003],["Overwatch Sniper",1011],["Overwatch Scar",1004],["Overwatch Sidearm",1001],["Overwatch Mas",1007],["Overwatch Hk417",1009],["Overwatch Hk416",1008],["Overwatch Hk416",1008],["Overwatch Dmr",1010],["Overwatch Acr",1005]],
	[],
	"friendly"
];



/*---------------------------------------------------------------------------
			FRIENDLY VEHICLE VENDORS
---------------------------------------------------------------------------*/
// AWOL's Planes
menu_Pilot_EP1 = [
	[["Airplanes",517],["Helicopter Unarmed",519],["Overwatch Camel",1014],["Origins Gyros",916],["Origins Planes",917]],
	[],
	"friendly"
];

// Chip's Choppers
menu_Pilot = [
	[["Helicopter Unarmed",519]],
	[],
	"friendly"
];

// Sly's Moto
menu_Rocker4 = [
	[["Bikes And Atv",587],["Trucks",590],["Used Cars",520],["Overwatch Civ Car",1015],["Overwatch Nissian Car",1016],["Origins Cars",915]],
	[],
	"friendly"
];

// Jd'z Armed Boats
menu_ibr_lingorman2 = [
	[["Boats Armed",673],["Origins Boats",914]],
	[],
	"friendly"
];
// Green's Quality Cars
menu_Citizen2_EP1 = [
	[["Bikes And Atv",587],["Buses And Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Overwatch Civ Car",1015],["Overwatch Nissian Car",1016],["Origins Cars",915]],
	[],
	"friendly"
];

// Tire Guy
menu_ibr_lingorman6 = [
	[["Vehicle Parts",509]],
	[],
	"friendly"
];

// Raul's Parts
menu_ibr_lingorman6s = [
	[["Vehicle Parts",509]],
	[],
	"friendly"
];

/*---------------------------------------------------------------------------
			WHOLESALE VENDORS
---------------------------------------------------------------------------*/
// Santo's Wholesale
menu_Citizen3_EP1 = [
	[["Wholesale",636]],
	[],
	"neutral"
];

// Blivion's Wholesale Items
menu_ibr_lingorman2s = [
	[["Wholesale",636]],
	[],
	"neutral"
];


// Clive's Wholesale
menu_ibr_lingorman3s = [
	[["Wholesale",636]],
	[],
	"neutral"
];