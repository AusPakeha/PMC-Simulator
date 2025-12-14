_taxi = [
    C12_Taxi,
    Molos_Taxi,
    C12Boat_Taxi,
    AIA_Taxi,
    Pyrgos_Taxi
];

_actionText = [
    "OPSG Compound C12 Taxi",
    "Molos Air Facility",
    "OPSG Boat Docks",
    "Altis International Airport",
    "Pyrgos"
];
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
    ["OPSG Compound C12 Taxi", C12_Taxi, "Travelling to OPSG Compound C12"],
    ["Molos Air Facility", Molos_Taxi, "Travelling to Molos Air Facility | OPSG Facility"],
    ["OPSG Boat Docks", C12Boat_Taxi, "Travelling to OPSG Boat Dock"],
    ["Altis International Airport", AIA_Taxi, "Travelling to Altis International Airport"],
    ["Pyrgos", Pyrgos_Taxi, "Travelling to Pyrgos"]
];

// Add actions dynamically
{
    _x params ["_actionText", "_taxi", "_title"];
    _taxi addAction [_actionText, {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments params ["_teleportLocations", "_taxi", "_title"];
        private _buttons = _teleportLocations apply {_x select 0};
        private _result = ["Select a destination:", "Fast Travel to", _buttons] call BIS_fnc_guiMessage;
        if (_result isEqualType 0 && {_result >= 0}) then {
            private _selected = _teleportLocations select _result;
            _selected params ["", "_selectedTaxi", "_selectedTitle"];
            [_selectedTaxi, _selectedTitle] call A3M_fnc_Teleport;
        };
    }, [_teleportLocations, _taxi, _title], 0, true, false];
} forEach _teleportLocations;
