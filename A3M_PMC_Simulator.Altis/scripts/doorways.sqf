///// Hq
[hqOutDoor, "Enter the HQ",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "hqIn");
hint "Entering the HQ!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, hqOutDoor];

[hqInDoor, "Exit the HQ",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "hqOut");
hint "Exiting the HQ!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, hqInDoor];

///// Armory
[armoryOutDoor, "Enter the Armory",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "armoryIn");
hint "Entering the Armory!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, armoryOutDoor];

[armoryInDoor, "Exit the Armory",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "armoryOut");
hint "Exiting the Armory!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, armoryInDoor];

////// Medical
[medOutDoor, "Enter the Infirmary",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "medIn"); hint "Entering the Infirmary!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, medOutDoor];

[medInDoor, "Exit the Infirmary",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "medOut");
hint "Exiting the Infirmary!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, medInDoor];

////// Jail
[JailOutDoor, "Enter the Jail",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "jailIn");
hint "Entering the Jail!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, JailOutDoor];

[jailInDoor, "Exit the Jail",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPosATL (getMarkerPos "jailOut");
hint "Exiting the Jail!"; },
{},
[],
3,
0,
false,
false
] remoteExec ["BIS_fnc_holdActionAdd", 0, jailInDoor];
