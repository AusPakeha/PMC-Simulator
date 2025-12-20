A3M_TravelClass = createHashMapObject [[
    ["#type", "ITravelClass"],
    ["#create", {
        _self set ["destinations", createHashMap];

        private _destinations = createHashMap;
        _destinations set ["taxiObjects", [
            C12_Taxi,
            Molos_Taxi,
            C12Boat_Taxi,
            AIA_Taxi,
            Pyrgos_Taxi,
            ShootingRange_Taxi
        ]];
        _destinations set ["actionTexts", [
            ["OPSG Compound C12 Taxi", "Travel to OPSG Compound C12"],
            ["Molos Airfield", "Travel to Molos Airfield | NATO Facility"],
            ["OPSG Boat Docks", "Travel to OPSG Boat Docks"],
            ["Altis International Airport", "Travel to Altis International Airport"],
            ["Pyrgos", "Travel to Pyrgos"],
            ["Shooting Range", "Travel to the Shooting Range"]
        ]];

        _self set ["destinations", _destinations];
    }],
    ["teleport", {
        params [["_data", "", [""]], ["_index", -1, [0]]];

        private _destinations = _self get "destinations";
        private _taxiObjects = _destinations get "taxiObjects";
        private _destination = _taxiObjects select _index;

        player moveInCargo _destination;
        playSound "A3M_Deuce";
        titleText [_destination getVariable ["titleText", "Travelling..."], "BLACK FADED", 5];
        titleFadeOut 1;
        player action ["Eject", _destination];
    }]
]];

missionNamespace setVariable ["A3M_TravelClass", A3M_TravelClass];
A3M_TravelClass;
