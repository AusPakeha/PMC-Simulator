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
    ["Fast Travel to Molos Air Facility", Molos_Taxi, "Travelling to Molos Air Facility | Orion Private Security Group Facility"],
    ["Fast Travel to OPSG Boat Docks", C12Boat_Taxi, "Travelling to OPSG Boat Dock"],
    ["Fast Travel to Altis International Airport", AIA_Taxi, "Travelling to Altis International Airport"],
    ["Fast Travel to Pyrgos", C12Boat_Taxi, "Travelling to Pyrgos"]
];

// Add actions dynamically
{
    _x params ["_actionText", "_taxi", "_title"];
    This addAction [_actionText, {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments params ["_taxi", "_title"];
        [_taxi, _title] call A3M_fnc_Teleport;
    }, [_taxi, _title]];
} forEach _teleportLocations;
