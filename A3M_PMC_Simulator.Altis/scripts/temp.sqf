// Add hold action to hqDoor for teleporting to HQ marker
[hqDoor, "Teleport to HQ",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
"_this distance _target < 3",
"_caller distance _target < 3",
{},
{},
{ player setPos (getMarkerPos "hq");
hint "Teleported to HQ!"; },
{},
[],
3,
0,
false,
false
] call BIS_fnc_holdActionAdd;
