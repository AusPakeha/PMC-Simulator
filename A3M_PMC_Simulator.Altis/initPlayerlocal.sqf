
// Add killed event handler to track player death
player addEventHandler ["Respawn", {
    params ["_unit", "_corpse"];
}];

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
			[] call A3M_fnc_openHUI;
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
	[] call A3M_fnc_openHUI;
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
	[] call A3M_fnc_openHUI;
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;

// /////////////////////////////////////////////////////////////////////////////////////////
// Item Lockers and Delivery

for "_i" from 1 to 7 do {
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

// /////////////////////////////////////////////////////////////////////////////////////////
// Medical Bay
[
    medic,
    "Access Medical Services",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
	[] call A3M_fnc_openTreatmentUI;
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;

// /////////////////////////////////////////////////////////////////////////////////////////
// Service Center
[
    crewman,
    "Access Vehicle Services",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
	[] call A3M_fnc_openSCUI;
    },
    {},
    [],
    2,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;
