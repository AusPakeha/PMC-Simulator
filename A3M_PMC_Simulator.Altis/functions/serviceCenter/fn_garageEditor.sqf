_CrewmanV_1 = _this select 0;

_CrewmanV_1 addAction ["<t color='#ff0000'>Open Vehicle Customization</t>", {
    if (vehicle player == player) then {
        private _vehicles = nearestObjects [missionNamespace getVariable "serviceCenter", ["Car", "Tank"], 2];
        if (count _vehicles > 0) then {
            [_vehicles select 0] call BIS_fnc_garage;
        } else {
            hint "Vehicle must be close to the service center marker.";
        };
    } else {
        hint "You must be outside the vehicle to customize it.";
    };
}, nil, 1.5, true, true, "", "_this distance _target < 5 && vehicle player == player"];

_CrewmanV_1 addAction ["<t color='#00ff00'>Service Vehicle</t>", {
    if (vehicle player == player) then {
        private _vehicles = nearestObjects [missionNamespace getVariable "serviceCenter", ["Car", "Tank"], 2];
        if (count _vehicles > 0) then {
            [_vehicles select 0] call A3M_fnc_reloadVehicle;
        } else {
            hint "Vehicle must be close to the service center marker.";
        };
    } else {
        hint "You must be outside the vehicle to service it.";
    };
}, nil, 1.5, true, true, "", "_this distance _target < 5 && vehicle player == player"];
