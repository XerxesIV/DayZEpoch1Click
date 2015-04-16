if (!isDedicated) then {
	fnc_usec_selfActions =				compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\fn_selfActions.sqf";		
	dayz_spaceInterrupt =				compile preprocessFileLineNumbers "DAYZ_CODE\ACTIONS\dayz_spaceInterrupt.sqf";
	player_death =					compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\player_death.sqf";

	//Gui
	player_selectSlot =				compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\ui_selectSlot.sqf";
	player_updateGui =				compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\player_updateGui.sqf";
	yoloText = 					compile preprocessFileLineNumbers "ca\modules_e\functions\GUI\fn_dynamicText.sqf";
	
	//System
	player_spawn_2 =				compile preprocessFileLineNumbers "DAYZ_CODE\COMPILE\player_spawn_2.sqf";
	
		
	//Origins
	origins_checkNeededMaterial = compile preprocessFileLineNumbers "Origins\origins_checkNeededMaterial.sqf";
	origins_removeActions = compile preprocessFileLineNumbers "Origins\origins_removeActions.sqf";
};

	call compile preprocessFileLineNumbers "EpochMods\ClickActions\lib.sqf";
