// Generic teleport function
A3M_fnc_Teleport = {
    params ["_taxi", "_title"];
    player moveInCargo _taxi;
    playSound "A3M_Deuce";
    titleText [_title, "BLACK FADED", 10];
    titleFadeOut 5;
    player action ["Eject", _taxi];
};

// Array of teleport locations: [action text, taxi object, title text]
_teleportLocations = [
    ["Fast Travel to OPSG Compound C-12", C12_Taxi, "Travelling to OPSG Compound C-12"],
    ["Fast Travel to Molos Air Facility", Molos_Taxi, "Travelling to Molos Air Facility | OPSG Facility"],
    ["Fast Travel to OPSG Boat Docks", C12Boat_Taxi, "Travelling to OPSG Boat Dock"],
    ["Fast Travel to Altis International Airport", AIA_Taxi, "Travelling to Altis International Airport"],
    ["Fast Travel to Pyrgos", Pyrgos_Taxi, "Travelling to Pyrgos"]
];

// Add actions dynamically
{
    _x params ["_actionText", "_taxi", "_title"];
    _taxi addAction [_actionText, {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments params ["_taxi", "_title"];
        [_taxi, _title] call A3M_fnc_Teleport;
    }, [_taxi, _title], 0, true, false];
} forEach _teleportLocations;

/*
for "_i" from 1 to 8 do {
    _taxi = missionNamespace getVariable [format ["taxi%1", _i], objNull];
    if (!isNull _taxi) then {
        [
            _taxi,
            "Access Internet",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
            "_this distance _target < 3",
            "_caller distance _target < 3",
            {},
            {},
            { _this execVM "scripts\FT.sqf" },
            {},
            [],
            2,
            0,
            false,
            false
        ] call BIS_fnc_holdActionAdd;
    };
};
*/
