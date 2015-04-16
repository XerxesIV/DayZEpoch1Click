player removeAction s_clothes;
s_clothes = -1;

private["_body","_result"];
_body = _this select 3;
_model = typeOf _body;
_count = (({isPlayer _x} count (nearestObjects [player, ["CAManBase"], 5])) - 1);

switch (_model) do {
	case "Survivor2_DZ": {
		_model = "Disabled";
	};
	case "Survivor3_DZ": {
		_model = "Disabled";
	};
	case "Bandit1_DZ": {
		_model = "Disabled";
	};
};

_isModel = isClass (configFile >> "CfgMagazines" >> ("Skin_" + _model));

if (_count > 0) exitWith {
	_msg = "You can't take clothes from a body when a player is within 5m of you!";
	systemChat (""+str _msg+"");
	['self',_msg,'<t size =""0.5""align=""left""font=""Zeppelin33"">',name player] spawn AH_fnc_dynTextMsg;
};
if !(_isModel) then {
	_msg = "These clothes can not be taken!";
	systemChat (""+str _msg+"");
	['self',_msg,'<t size =""0.5""align=""left""font=""Zeppelin33"">',name player] spawn AH_fnc_dynTextMsg;
};
if (_isModel) then {
	_model = "Skin_" + _model;
	_result = [player,_model] call BIS_fnc_invAdd;
	if (_result) then {
		player playActionNow "PutDown";
		private["_name","_method"];
		_name = _body getVariable["bodyName","unknown"];
		_method = _body getVariable["deathType","unknown"];
		_class = "Survivor2_DZ";
		_position = getPosATL _body;
		_dir = getDir _body;
		//---------_currentAnim = animationState _body;
		private ["_weapons","_magazines","_primweapon","_secweapon"];
		_weapons = weapons _body;
		_primweapon = primaryWeapon _body;
		_secweapon = secondaryWeapon _body;
		if (!(_primweapon in _weapons) && _primweapon != "") then {_weapons = _weapons + [_primweapon];};
		if (!(_secweapon in _weapons) && _secweapon != "") then {_weapons = _weapons + [_secweapon];};
		_magazines = magazines _body;
		private ["_newBackpackType","_backpackWpn","_backpackMag"];
		dayz_myBackpack = unitBackpack _body;
		if (isNull (unitBackpack _body)) then {
			_hasBackPack = false;
		} else {
			_hasBackPack = true;
			_newBackpackType = typeOf dayz_myBackpack;
			_backpackWpn = getWeaponCargo dayz_myBackpack;
			_backpackMag = getMagazineCargo dayz_myBackpack;
		};
		_currentWpn = currentWeapon _body;
		_muzzles = getArray(configFile >> "cfgWeapons" >> _currentWpn >> "muzzles");
		if (count _muzzles > 1) then {_currentWpn = currentMuzzle _body;};
		_body setPosATL dayz_spawnPos;
		_oldUnit = _body;
		_group = createGroup west;
		_newUnit = _group createUnit [_class,position player,[],0,"NONE"];
		_newUnit setPosATL _position;
		_newUnit setDir _dir;
		{_newUnit removeMagazine _x;} forEach magazines _newUnit;
		removeAllWeapons _newUnit;
		{if (typeName _x == "ARRAY") then {_newUnit addMagazine [_x select 0,_x select 1];} else {_newUnit addMagazine _x;};} forEach _magazines;
		{_newUnit addWeapon _x;} forEach _weapons;
		if (str(_weapons) != str(weapons _newUnit)) then {
			{_weapons = _weapons - [_x];} forEach (weapons _newUnit);
			{_newUnit addWeapon _x;} forEach _weapons;
		};
		if (_primweapon != (primaryWeapon _newUnit)) then { _newUnit addWeapon _primweapon; };
		if (_secweapon != (secondaryWeapon _newUnit) && _secweapon != "") then { _newUnit addWeapon _secweapon; };
		if (_hasBackPack) then {
			_newUnit addBackpack _newBackpackType;
			_oldBackpack = dayz_myBackpack;
			dayz_myBackpack = unitBackpack _newUnit;
			_backpackWpnTypes = [];
			_backpackWpnQtys = [];
			if (count _backpackWpn > 0) then {
				_backpackWpnTypes = _backpackWpn select 0;
				_backpackWpnQtys = _backpackWpn select 1;
			};
			_countr = 0;
			{
				dayz_myBackpack addWeaponCargoGlobal [_x,(_backpackWpnQtys select _countr)];
				_countr = _countr + 1;
			} forEach _backpackWpnTypes;
			_backpackmagTypes = [];
			_backpackmagQtys = [];
			if (count _backpackmag > 0) then {
				_backpackmagTypes 	= _backpackMag select 0;
				_backpackmagQtys 	= _backpackMag select 1;
			};
			_countr = 0;
			{
				dayz_myBackpack addmagazineCargoGlobal [_x,(_backpackmagQtys select _countr)];
				_countr = _countr + 1;
			} forEach _backpackmagTypes;
		};
		removeAllWeapons _oldUnit;
		{
			_oldUnit removeMagazine _x;
		} forEach magazines _oldUnit;
		deleteVehicle _oldUnit;
		_oldUnit = nil;
		_newUnit setDamage 1;
		_newUnit setVariable["bodyName",_name,true];
		_newUnit setVariable["deathType",_method,true];
	} else {cutText ["You need a free slot to take clothing.", "PLAIN DOWN"];};
};