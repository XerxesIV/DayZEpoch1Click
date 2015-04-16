//  **FORMAT** -- (note no comma after last array entry)
//
//  DZE_DEPLOYABLES_CONFIG = [
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [...more stuff here...]
//  ];
//    
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _clickItem    | class name of the item to click on                                  | string | "ItemToolbox"
// _deployOffset | [_side,_front,_up] array to offset the deployable when buiding      | array  | [0,2,1]
// _packDistance | how close does the packer need to be to pack the object?            | number | 5
// _damageLimit  | item can't be repacked if damage is > this. (-1 = no re-packing)    | number | 0.1
// _packAny      | can anyone repack the deployable?                                   | bool   | false
// _cargo        | clear the cargo of the deployable?                                  | bool   | false
// _hive         | write deployable to database?                                       | bool   | false
// _plot         | require a plot from the owner to build the deployable?              | bool   | false
// _simulation   | enable simulation (movement/damage) for the object? (true for cars) | bool   | true
// _road         | enable road building for this object?                               | bool   | true
// _deployables  | array of class names that can be deployed with this method          | array  | ["MMT_Civ"]
// _near         | array of items required nearby to build (workshop/fire/fueltank)    | array  | []
// _parts        | array of parts required to build (will be taken from player)        | array  | ["ItemToolbox"]


DZE_DEPLOYABLES_CONFIG = [
    // deploy a non-permanent bike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
    ["ItemToolbox",[0,2,2],5,0.1,true,true,false,false,true,true,["MMT_Civ"],[],["ItemToolbox"]],
	// deploy a non-permanent Gyro from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
    ["ItemToolbox",[0,5,2],7,0.1,true,true,false,false,true,true,["CSJ_GyroC"],[],["ItemToolbox","PartVRotor","PartEngine","PartFueltank"]],
	// deploy a non-permanent ATV from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
	["ItemToolbox",[0,5,2],7,0.1,true,true,false,false,true,true,["ATV_CZ_EP1"],[],["ItemToolbox","PartWheel","PartWheel","PartWheel","PartWheel","PartEngine","PartFueltank"]],
	// deploy a non-permanent MotorBike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
	["ItemToolbox",[0,5,2],7,0.1,true,true,false,false,true,true,["TT650_Civ"],[],["ItemToolbox","PartWheel","PartWheel","PartEngine","PartFueltank"]]
];

// **DZE_DEPLOYABLE_NAME_MAP format
//  
//  DZE_DEPLOYABLE_NAME_MAP = [
//      [_class,_name],
//      [_class,_name],
//      [... more ...]
//  ];
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _class        | class name of the item you want to replace the name of              | string | "Notebook"
// _name         | new name to display when right clicking                             | string | "Macbook Pro"
//
DZE_DEPLOYABLE_NAME_MAP = [
    ["Notebook","Macbook Pro"]
];

DZE_DEPLOYABLE_ADMINS = [];
