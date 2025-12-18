_Player = _this select 0;

_Player execVM "scripts\GF_Ambient_Environment_Sounds\Credits.sqf";// Please keep the Credits or add them to your Diary
_Player execVM "scripts\GF_Ambient_Environment_Sounds\GF_AES_init.sqf";

if (player getVariable ["isSneaky", false]) then {
	[player] execVM "INC_undercover\Scripts\initUCR.sqf";
};

// //////////////////////////////////////////////////////////////////////////////////////////////

for "_i" from 1 to 8 do {
	_laptop = missionNamespace getVariable [format ["laptop%1", _i], objNull];
	if (!isNull _laptop) then {
		[
			_laptop,
			"Access Internet",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
			"_this distance _target < 3",
			"_caller distance _target < 3",
			{},
			{},
			{
				_this execVM "scripts\homepage.sqf"
			},
			{},
			[],
			2,
			0,
			false,
			false
		] call BIS_fnc_holdActionAdd;
	};
};

[
    LuchtComp,
    "Access Internet",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
	_this execVM "scripts\homepage.sqf"
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;

[
    laptopS,
    "Access Internet",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
	_this execVM "scripts\homepage.sqf"
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;

// /////////////////////////////////////////////////////////////////////////////////////////

for "_i" from 1 to 6 do {
	_deliveries = missionNamespace getVariable [format ["deliveries%1", _i], objNull];
	if (!isNull _deliveries) then {
		[
			_deliveries,
			"Open Private Stash",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
			"_this distance _target < 3",
			"_caller distance _target < 3",
			{},
			{},
			{
				_this execVM "scripts\locker.sqf"
			},
			{},
			[],
			2,
			0,
			false,
			false
		] call BIS_fnc_holdActionAdd;
	};
};

[
    CmdLocker,
    "Open Private Stash",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
	_this execVM "scripts\locker.sqf"
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;
