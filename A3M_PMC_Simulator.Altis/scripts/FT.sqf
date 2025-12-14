private _taxi = [
    C12_Taxi,
    Molos_Taxi,
    C12Boat_Taxi,
    AIA_Taxi,
    Pyrgos_Taxi
];

[] call A3M_fnc_initTravelClass;

{
    _x addAction ["Fast Travel", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [] call A3M_fnc_openUI;
    }, [], 0, true, false];
} forEach _taxi;
