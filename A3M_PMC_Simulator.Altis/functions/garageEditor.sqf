_CrewmanV_1 = _this select 0;

_CrewmanV_1 addAction ["<t color='#ff0000'>Open Vehicle Customization</t>", {
    // Check if the player is in a vehicle
    if (vehicle player != player) then {
        // Open the Virtual Garage for the current vehicle
        [vehicle player] call BIS_fnc_garage;
    } else {
        // Optional: Hint if player is not in a vehicle
        hint "You must be inside a vehicle to customize it.";
    }
}, nil, 1.5, true, true, "", "_this distance _target < 5"];

_CrewmanV_1 addAction ["<t color='#00ff00'>Service Vehicle</t>", {
    // Check if the player is in a vehicle
    if (vehicle player != player) then {
        // Call the reload function for the current vehicle
        [vehicle player] call A3M_fnc_reloadVehicle;
    } else {
        // Optional: Hint if player is not in a vehicle
        hint "You must be inside a vehicle to service it.";
    }
}, nil, 1.5, true, true, "", "_this distance _target < 5"];
