//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
If(DZE_VIEWDISTANCE_ENABLE)then{
BINOCULAR = [
	["Binocular_Vector","View Distance:","systemChat('Change View Distance Locally. Click on one of the distance options');","true"],
    ["Binocular_Vector","400 Meters","setViewDistance 400; systemChat('ViewDistance: 400'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","500 Meters","setViewDistance 500; systemChat('ViewDistance: 500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","2500 Meters","setViewDistance 2500; systemChat('ViewDistance: 2500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular_Vector","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","View Distance:","systemChat('Change View Distance Locally. Click on one of the distance options');","true"],
    ["Binocular","400 Meters","setViewDistance 400; systemChat('ViewDistance: 400'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","500 Meters","setViewDistance 500; systemChat('ViewDistance: 500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","2500 Meters","setViewDistance 2500; systemChat('ViewDistance: 2500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"],
	["Binocular","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]
	];
} else {
	BINOCULAR = [];
};


DZE_CLICK_ACTIONS = BINOCULAR;