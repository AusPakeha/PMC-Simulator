private _holdActionParams = [
    "Access Internet",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {[] call A3M_fnc_homepage_openUI;},
    {},
    [],
    2,
    0,
    false,
    false
];

for "_i" from 1 to 8 do {
    _laptop = missionNamespace getVariable [format ["laptop%1", _i], objNull];
    if (!isNull _laptop) then {
        ([_laptop] + _holdActionParams) call BIS_fnc_holdActionAdd;
    };
};

([LuchtComp] + _holdActionParams) call BIS_fnc_holdActionAdd;
([laptopS] + _holdActionParams) call BIS_fnc_holdActionAdd;
([AOdesk] + _holdActionParams) call BIS_fnc_holdActionAdd;
