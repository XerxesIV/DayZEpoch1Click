fnc_remote_message = {

	private["_type","_message"];

	_type 		= _this select 0;
	_message 		= _this select 1;

	call {
		if(_type == "radio")		exitWith { 
			if(player hasWeapon "ItemRadio") then { 
				if(player getVariable["radiostate",true]) then {
					systemChat _message;
					[objNull,player,rSAY,"Radio_Message_Sound",30] call RE;
				};
			}; 
		};
		if(_type == "private")		exitWith { if(getPlayerUID player == (_message select 0)) then { systemChat (_message select 1); }; };
		if(_type == "global")		exitWith { systemChat _message; };
		if(_type == "hint") 		exitWith { hint _message; };
		if(_type == "titleCut") 	exitWith { titleCut [_message,"Plain Down",3]; };
		if(_type == "titleText") 	exitWith { titleText [_message, "PLAIN DOWN"]; titleFadeOut 10; };
		if(_type == "dynamic_text")	exitWith { 
			[
				format["<t size='0.40' color='#FFFFFF' align='center'>%1</t><br /><t size='0.70' color='#d5a040' align='center'>%2</t>",(_message select 0),(_message select 1)],
				0,
				0,
				10,
				0.5
			] spawn BIS_fnc_dynamicText; 
		};
	};
};

"RemoteMessage" addPublicVariableEventHandler { (_this select 1) spawn fnc_remote_message; };