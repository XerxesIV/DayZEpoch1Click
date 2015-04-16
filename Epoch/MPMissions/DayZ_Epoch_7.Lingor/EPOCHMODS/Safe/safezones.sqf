/*
   by: killerkiwi
   *updated on 24.12.2014
goes in to the init.sqf [] execVM "custom\safezone\safezone.sqf"; 
	
*/
USE_CANBUILD = false;		// if you don't want to define your own positions
USE_TraderCity = false;	//	if you don't want to define your own positions (Epoch 1.0.5)
USE_POSITIONS = true;	// to use own positions and radius
USE_AI_REMOVER = false;	// use this to remove Missionbots (AI) within 100m of a player if the player is in a SafeZone
USE_AntiSteal = true;	// use this to block opening gear if another player is within 3m!
USE_SPEEDLIMIT = true;	// very secret function, nobody is supposed to find out what it does.
	SPEEDLIMIT = 40;		// Only used if USE_SPEEDLIMIT is true.
USE_SIGNS = true;		// use this to build signs around the SafeZone
LOG_EnterLeave = true;	// This will log to your .rpt when a player enters or leaves a SafeZone! (only works with infiSTAR.de Admintools / AntiHack)
/* You can use USE_CANBUILD or/and (works together) the custom positions below (USE_POSITIONS) [position or zone,radius] */
/*
_infiSZ =
[
	[[6325.6772,7807.7412],150,true],
	[[4063.4226,11664.19],150,true],
	[[11447.472,11364.504],150,true],
	[[1606.6443,7803.5156],150,true],
	[[12944.227,12766.889],150,true],
	[[5068.6636,9723.4248],100,true],
	[[12060,12640,0],200,true] 
];
*/
if (dayZ_instance in [11]) then {
_infiSZ =
[
	[[4361.4937,2259.9526],100,true],
	[[13532.614,6355.9497],50,true], 
	[[7989.3354,2900.9946],50,true], 
	[[12060.471,12638.533],100,true], 
	[[13441.16,5429.3013],50,true], 
	[[11447.91,11364.536],125,true], 
	[[4064.2258,11665.938],125,true], 
	[[6325.6772,7807.7412],125,true], 
	[[1606.6443,7803.5156],125,true],
	[[12944.227,12766.889],125,true]
];
};
if (dayZ_instance in [24]) then {
_infiSZ =
[
	[[8246.7275,15490.344],100,true], 
	[[12397.357,5068.0298],100,true],
	[[11081.16,11771.656],100,true],
	[[15128.379,16421.879],150,true],
	[[2125.5425,7807.833],100,true],
	[[5372.1465,16091.704],100,true],
	[[6776.3237,16955.648],100,true],
	[[6055,8672],100,true],
	[[16835.688,5268.064],100,true],
	[[15520.298,13225.447],100,true],
	[[17097.861,9743.4033],100,true]
];
};
if (dayZ_instance in [16]) then {
_infiSZ =
[
	[[4763.8818,7484.0034],100,true], 
	[[5232.6299,8228.4785],75,true],
	[[9056.7129,4073.5034],75,true],
	[[1891.7347,3611.1328],75,true],
	[[3349.3503,2311.5425],75,true],
	[[8687.3086,3137.5818],75,true],
	[[4422.4429,1629.3304],75,true],
	[[7224.3823,727.15576],75,true],
	[[4338.8359,6317.54],75,true],
	[[2247.085,9473.3262],75,true],
	[[3804.6707,7656.6055],75,true],
	[[477.88,9675.97],50,true]
];
};
if (dayZ_instance in [13]) then {
_infiSZ =
[
	[[15309.663,9278.4912],55,true], 
	[[11698.81,15210.121],75,true],
	[[5538.7354,8762.2695],75,true],
	[[7376.6084,4296.5879],75,true],
	[[10948.426,654.90265],75,true],
	[[15587.822,16394.049],75,true],
	[[16555.732,10159.68],75,true],
	[[6815.0776,8534.1504],75,true],
	[[4066.3528,7265.0024],30,true],
	[[17497.631,7159.0879],30,true],
	[[17332.115,12930.239],30,true],
	[[10570.494,16772.477],30,true],
	[[10698.463,5983.665],30,true],
	[[5419.2437,9503.5479],30,true],
	[[13342.758,8611.9932],30,true],
	[[9859.4209,7471.5684],30,true],
	[[1754.5652,6809.1318],50,true]
];
};
if (dayZ_instance in [7]) then {
_infiSZ =
[
	[[6713.2769,6900.5156],40,true],
	[[4208.0181,1526.7664],40,true],
	[[6475.08,4179.19],25,true],
	[[3620.7532,1225.6466],25,true],
	[[2796.8137,5765.1563],25,true],
	[[5704.52,4844.83],25,true],
	[[3588.14,2727.14],25,true],
	[[1097.70,4991.69],25,true],
	[[2177.9265,2727.9063],40,true],
	[[4224.8149,6011.769],40,true],
	[[4186.9683,5033.5547],40,true],
	[[7060.7056,6044.1187],40,true],
	[[6881.3945,2206.4954],40,true],
	[[4194.5552,7853.3032],40,true]
];
};

if (isServer) exitWith
{
	if (USE_SIGNS) then
	{
		{
			_center = _x select 0;
			_radius = _x select 1;
			_lSign = _x select 2;
			if (_lSign) then
			{
				for '_i' from 0 to 360 step (270 / _radius)*2 do
				{
					_location = [(_center select 0) + ((cos _i) * _radius), (_center select 1) + ((sin _i) * _radius),0];
					_dir = ((_center select 0) - (_location select 0)) atan2 ((_center select 1) - (_location select 1));
					_object = createVehicle ['Sign_sphere100cm_EP1', _location, [], 0, 'CAN_COLLIDE'];
					//	_object = createVehicle ['SignM_FARP_Winchester_EP1', _location, [], 0, 'CAN_COLLIDE'];
					//	_object setVehicleInit 'this setObjectTexture [0,''Addons\SafeZones\sign.paa''];';
					_object setDir _dir;
				};
			};
		} forEach _infiSZ;
	};
};
waitUntil {((!isNil 'dayz_animalCheck') || (!isNil 'dayz_medicalH') || (!isNil 'dayz_slowCheck') || (!isNil 'dayz_gui'))};
if (isNil 'inSafeZone') then { inSafeZone = false; } else { if (typename inSafeZone != 'BOOL') then { inSafeZone = false; }; };
[_infiSZ] spawn {
	_infiSZ = _this select 0;
	_startSafeZone =
	{
		if (isNil 'outNow') then
		{
			_msg = 'ENTERING SAFEZONE\nGOD MODE ON\nNO KILLING/RAMMING\nBEWARE OF THIEVES!';
			hint _msg;
			taskHint [_msg, [0,1,0,1], 'taskDone'];
			inNow = nil;
			outNow = true;
			
			if (LOG_EnterLeave) then
			{
				PVDZE_send = [player,'SafeZoneState',[1]];
				publicVariableServer 'PVDZE_send';
			};
		};
		player_fired = {
			deleteVehicle (nearestObject [_this select 0,_this select 4]);
			cutText ['You can not fire in a SafeZone!','WHITE IN'];
		};
		wild_spawnZombies = {};
		zombie_generate = {};
		
		fnc_usec_damageHandler = {};
		player removeAllEventHandlers 'handleDamage';
		player addEventHandler ['handleDamage', {false}];
		player allowDamage false;
		_veh = vehicle player;
		_szs = _veh getVariable ['inSafeZone',0];
		if (_szs == 0) then
		{
			_veh setVariable ['inSafeZone',1,true];
			if (player != _veh) then
			{
				_veh removeAllEventHandlers 'Fired';
				_veh addEventHandler ['Fired', {_this call player_fired;}];
				{
					_x removeAllEventHandlers 'Fired';
					_x addEventHandler ['Fired', {_this call player_fired;}];
				} forEach (crew _veh);
				vehicle_handleDamage = {false};
				_veh removeAllEventHandlers 'HandleDamage';
				_veh addeventhandler ['HandleDamage',{ _this call vehicle_handleDamage } ];
				_veh allowDamage false;
			};
		};
		_notInSafeZone =
		[
			'MAAWS','RPG7V','M136','RPG18','STINGER',
			'MeleeHatchet_DZE','MeleeHatchet','MeleeCrowbar','MeleeMachete','MeleeFishingPole','MeleeSledge',
			'MeleeBaseBallBatNails','MeleeBaseBallBatBarbed','MeleeBaseBallBat'
		];
		_cwep = currentWeapon player;
		if (_cwep in _notInSafeZone) then
		{
			_swep = '';
			{
				if ((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith
				{
					_swep = _x;
				};
			} forEach (weapons player);
			if (_swep == '') then
			{
				player playActionNow 'PutDown';
				_iPos = getPosATL player;
				_radius = 1;
				_removed = ([player,_cwep,1] call BIS_fnc_invRemove);
				if (_removed == 1) then
				{
					_item = createVehicle ['WeaponHolder', _iPos, [], _radius, 'CAN_COLLIDE'];
					_item addWeaponCargoGlobal [_cwep,1];
				};
			}
			else
			{
				player selectweapon _swep;
			};
		};
		if (isNil 'oR3F_TIRED_FNCT_Voile_Noir') then {oR3F_TIRED_FNCT_Voile_Noir = R3F_TIRED_FNCT_Voile_Noir;};
		if (isNil 'oR3F_TIRED_FNCT_DoBlackVanish') then {oR3F_TIRED_FNCT_DoBlackVanish = R3F_TIRED_FNCT_DoBlackVanish;};
		R3F_TIRED_FNCT_Voile_Noir = {};
		R3F_TIRED_FNCT_DoBlackVanish = {};
	};
	_endSafeZone =
	{
		if (isNil 'inNow') then
		{
			if (str fnc_usec_damageHandler == '{}') then
			{
				_msg = 'LEAVING SAFEZONE\nGOD MODE OFF';
				hint _msg;
				taskHint [_msg, [1,0,0.1,1], 'taskFailed'];
			};
			inNow = true;
			outNow = nil;
			
			if (LOG_EnterLeave) then
			{
				PVDZE_send = [player,'SafeZoneState',[0]];
				publicVariableServer 'PVDZE_send';
			};
		};
		wild_spawnZombies = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\wild_spawnZombies.sqf';
		zombie_generate = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\zombie_generate.sqf';
		
		
		player_fired = {
			_this call compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_fired.sqf';
			_unit = _this select 0;
			_weapon = _this select 1;
			_muzzle = _this select 2;
			_mode = _this select 3;
			_ammo = _this select 4;
			_magazine = _this select 5;
			_projectile = _this select 6;
			_screenToWorld = screenToWorld [0.5,0.5];
			_near = _screenToWorld nearEntities ['AllVehicles',100];
			{
				if (isPlayer _x) then
				{
					_szs = _x getVariable ['inSafeZone',0];
					if (_szs == 1) then
					{
						deleteVehicle (nearestObject [_unit,_ammo]);
					};
				};
			} forEach _near;
		};
		
		fnc_usec_unconscious = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_unconscious.sqf';
		object_monitorGear = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\object_monitorGear.sqf';
		vehicle_handleDamage = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\vehicle_handleDamage.sqf';
		
		_veh = vehicle player;
		_szs = _veh getVariable ['inSafeZone',0];
		if (_szs == 1) then
		{
			_veh setVariable ['inSafeZone',0,true];
			if (player != _veh) then
			{
				_veh removeAllEventHandlers 'HandleDamage';
				_veh addeventhandler ['HandleDamage',{ _this call vehicle_handleDamage } ];
				_veh allowDamage true;
			};
		};
		
		_end = false;
		if (isNil 'gmadmin') then
		{
			_end = true;
		}
		else
		{
			if (gmadmin == 0) then
			{
				_end = true;
			};
		};
		if (_end) then
		{
			player allowDamage true;
			fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
			player removeAllEventHandlers 'HandleDamage';
			player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
		};
	};
	while {1 == 1} do
	{
		if (isNil 'inSafeZone') then { inSafeZone = false; } else { if (typename inSafeZone != 'BOOL') then { inSafeZone = false; }; };
		_state = false;
		if (isNil 'USE_POSITIONS') then { USE_POSITIONS = false; } else { if (typename USE_POSITIONS != 'BOOL') then { USE_POSITIONS = false; }; };
		if (USE_POSITIONS) then
		{
			{
				_z = _x select 0;
				_r = _x select 1;
				if ((vehicle player) distance _z < _r) then {_state = true;};
			} forEach _infiSZ;
		};
		if (isNil 'USE_CANBUILD') then { USE_CANBUILD = true; } else { if (typename USE_CANBUILD != 'BOOL') then { USE_CANBUILD = true; }; };
		if (USE_CANBUILD) then
		{
			if (isNil 'canbuild') then { canbuild = true; } else { if (typename canbuild != 'BOOL') then { canbuild = true; }; };
			if (!canbuild) then {_state = true;};
		};
		if (isNil 'USE_TraderCity') then { USE_TraderCity = true; } else { if (typename USE_TraderCity != 'BOOL') then { USE_TraderCity = true; }; };
		if (USE_TraderCity) then
		{
			if (isNil 'isInTraderCity') then { isInTraderCity = false; } else { if (typename isInTraderCity != 'BOOL') then { isInTraderCity = false; }; };
			if (isInTraderCity) then {_state = true;};
		};
		if (_state) then
		{
			inSafeZone = true;
			call _startSafeZone;
			{
				if (!isNull _x) then
				{
					if !(isPlayer _x) then
					{
						deletevehicle _x;
					};
				};
			} forEach ((vehicle player) nearEntities ['zZombie_Base',50]);
			
			if (isNil 'USE_AI_REMOVER') then { USE_AI_REMOVER = false; } else { if (typename USE_AI_REMOVER != 'BOOL') then { USE_AI_REMOVER = false; }; };
			if (USE_AI_REMOVER) then
			{
				{
					if ((!isNull group _x) && (getPlayerUID _x == '')) then
					{
						deleteVehicle _x;
					};
				} forEach (player nearEntities ['Man',100]);
			};
		}
		else
		{
			inSafeZone = false;
		};
		uiSleep 2;
		if (!inSafeZone) then
		{
			call _endSafeZone;
		};
	};
};
if ((USE_AntiSteal) || (USE_SPEEDLIMIT)) then
{
	[] spawn {
		_USE_AntiSteal = USE_AntiSteal;
		_USE_SPEEDLIMIT = USE_SPEEDLIMIT;
		_speedlimit = SPEEDLIMIT;
		while {1 == 1} do
		{
			if (inSafezone) then
			{
				if (_USE_AntiSteal) then
				{
					_cnt = {isPlayer _x && _x != player} count (player nearEntities [['CAManBase'],4]);
					if ((_cnt > 0) && (!isNull (findDisplay 106))) then
					{
						(findDisplay 106) closedisplay 0;
						closeDialog 0;closeDialog 0;closeDialog 0;
						_log = format['%1 You are not allowed to open Gear while near another player!',name player];
						cutText [_log,'PLAIN'];
						hint _log;
					};
				};
				if (_USE_SPEEDLIMIT) then
				{
					_obj = vehicle player;
					if !(_obj isKindOf 'Plane') then
					{
						_speed = abs speed _obj;
						if ((_obj != player) && (_speed > _speedlimit)) then
						{
							_vel = velocity _obj;
							_x = 0.8;
							if (_speed > 50) then {_x = 0.1;};
							_velNew = [(_vel select 0) * _x, (_vel select 1) * _x,(_vel select 2) * _x];
							_obj SetVelocity _velNew;
						};
					};
				};
			}
			else
			{
				uiSleep 2;
			};
			uiSleep .01;
		};
	};
};