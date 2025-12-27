A3M_JR2_Raid2 = {
    // Initialize global arrays for cleanup
    Raid2SpawnedGroups = [];
    Raid2SpawnedVehicles = [];

    // --- Configuration ---
    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;

    // Randomize city location
    private _city = nearestLocations [_center, ["NameCity"], _mapSize];
    private _selectedCity = selectRandom _city;
    private _cityPos = locationPosition _selectedCity;
    diag_log format ["[A3M] Raid 2 - City Selected"];

    // Move sg2 to city center
    "sg2" setMarkerPos _cityPos;
    private _safePos = [getMarkerPos "sg2", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    private _SG2tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    Raid2SpawnedGroups pushBack _SG2tm;
    [_SG2tm, getMarkerPos "sg2", random [50, 75, 100]] call BIS_fnc_taskPatrol;

    private _VehPatrol = [
        "A3M_Jeep_Wrangler_LMG",
        "A3M_Jeep_Wrangler_SPG9",
        "A3M_Offroad_AT",
        "A3M_Offroad_HMG"
    ];
    private _selectedVeh = selectRandom _VehPatrol;
    private _veh = createVehicle [_selectedVeh, _safePos, [], 0, "NONE"];
    Raid2SpawnedVehicles pushBack _veh;
    private _SG2vm = createVehicleCrew _veh;
    Raid2SpawnedGroups pushBack _SG2vm;
    [_SG2vm, getMarkerPos "sg2", random [50, 75, 100]] call BIS_fnc_taskPatrol;
    diag_log format ["[A3M] Raid 2 - EI and Veh patrol spawned"];

    // Move RO1-RO6 to random positions around city (200-500m radius)
    private _markers = ["RO1", "RO2", "RO3", "RO4", "RO5", "RO6"];
    {
        private _randomPos = _cityPos getPos [random [200, 350, 500], random 360];
        _x setMarkerPos _randomPos;
    } forEach _markers;
    diag_log format ["[A3M] Raid 2 - Defender markers moved"];

    _bluNums = west countSide allPlayers;

    private _safePosRO1 = [getMarkerPos "RO1", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    _RO1tm = [_safePosRO1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    Raid2SpawnedGroups pushBack _RO1tm;
    [_RO1tm, getMarkerPos "RO1"] call BIS_fnc_taskDefend;

    private _safePosRO2 = [getMarkerPos "RO2", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    _RO2tm = [_safePosRO2, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    Raid2SpawnedGroups pushBack _RO2tm;
    [_RO2tm, getMarkerPos "RO2"] call BIS_fnc_taskDefend;

    if (_bluNums > 10) then {
        private _safePosRO3 = [getMarkerPos "RO3", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        _RO3tm = [_safePosRO3, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        Raid2SpawnedGroups pushBack _RO3tm;
        [_RO3tm, getMarkerPos "RO3"] call BIS_fnc_taskDefend;

        private _safePosRO4 = [getMarkerPos "RO4", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        _RO4tm = [_safePosRO4, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        Raid2SpawnedGroups pushBack _RO4tm;
        [_RO4tm, getMarkerPos "RO4"] call BIS_fnc_taskDefend;
    };
    if (_bluNums > 20) then {
        private _safePosRO5 = [getMarkerPos "RO5", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        _RO5tm = [_safePosRO5, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        Raid2SpawnedGroups pushBack _RO5tm;
        [_RO5tm, getMarkerPos "RO5", 200] call BIS_fnc_taskPatrol;

        private _safePosRO6 = [getMarkerPos "RO6", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        _RO6tm = [_safePosRO6, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        Raid2SpawnedGroups pushBack _RO6tm;
        [_RO6tm, getMarkerPos "RO6", 200] call BIS_fnc_taskPatrol;
    };
    diag_log format ["[A3M] Raid 2 - Defenders spawned"];

    // Spawn barricades or wrecks on roads within 400m of sg2 with random rotations
    private _roads = _cityPos nearRoads 400;
    private _numBarricades = 5 + floor random 6; // 5-10 barricades
    private _barricades = [
        "Land_GarbageHeap_01_F",
        "Land_GarbageHeap_02_F",
        "Land_GarbageHeap_03_F",
        "Land_GarbageHeap_04_F",
        "Land_GarbageWashingMachine_F",
        "Land_GarbagePallet_F",
        "Land_GarbageBags_F"
    ];
    private _wreckTypes = [
        "Land_Wreck_Hunter_F",
        "Land_Wreck_Car_F",
        "Land_Wreck_Skodovka_F",
        "Land_Wreck_Ural_F",
        "Land_Wreck_Truck_F",
        "Land_Wreck_Car2_F",
        "Land_Wreck_Car3_F",
        "Land_Tyres_F",
        "Land_Wreck_Van_F",
        "Land_Wreck_Truck_dropside_F",
        "Land_V3S_wreck_F",
        "Land_Wreck_UAZ_F",
        "Land_Wreck_Offroad_F",
        "Land_Wreck_Offroad2_F"
        ];

        for "_i" from 1 to _numBarricades do {
        if (count _roads > 0) then {
            private _roadIndex = floor random count _roads;
            private _road = _roads select _roadIndex;
            _roads deleteAt _roadIndex;
            private _pos = getPos _road;

            // Check if the spot is relatively flat and empty (prevents spawning inside buildings or rocks)
            if ([_pos, 2, 360, false, false] call BIS_fnc_isFlatEmpty) then {
                private _wreckType = selectRandom _wreckTypes;
                private _barricadeType = selectRandom _barricades;

                private _veh = createVehicle [_wreckType, _pos, [], 0, "NONE"];
                private _bar = createVehicle [_barricadeType, [_pos, 0, 5] call BIS_fnc_relPos, [], 0, "NONE"];

                Raid2SpawnedVehicles pushBack _veh;
                Raid2SpawnedVehicles pushBack _bar;
                _veh setDir random 360;
                _bar setDir random 360;

                private _clutterTypes = ["Land_Barrel_empty_F", "Land_Pallet_F", "Land_Crate_wooden_F"];
                private _clutter = createVehicle [selectRandom _clutterTypes, _pos, [], 0, "CAN_COLLIDE"];
                Raid2SpawnedVehicles pushBack _clutter;
                _clutter setPos ([_pos, 1, random 360] call BIS_fnc_relPos); // Move slightly away from main object
                _clutter setDir random 360;
            };
        };
    };

    diag_log format ["[A3M] Raid 2 - Trash spawned"];

    Raid2Win = createTrigger ["EmptyDetector", (getMarkerPos "sg2")];
    Raid2Win setTriggerArea [250, 250, 0, false];
    Raid2Win setTriggerActivation ["WEST SEIZED", "EAST D", false];
    Raid2Win setTriggerType "NONE";
    Raid2Win setTriggerStatements ["{side _x == east} count thisList == 0 && {side _x == west} count thisList > 0", "remoteExecCall ['A3M_JR2_Raid2Clear', 2];", ""];

    MissionStatus = "M6";
    publicVariable "MissionStatus";

    Raid2Active = 1;
    publicVariable "Raid2Active";

    remoteExecCall ["A3M_MP_JR2_Raid2"];
};

A3M_MP_JR2_Raid2 = {
    A3MRaid2 = player createSimpleTask ["Move to the Enemy Terrorist City and eliminate the enemy forces."];
    A3MRaid2 setSimpleTaskDescription ["The Altian Government requests assistance in dealing with a foreign terrorist cell that has taken over an entire city. The Altian Government cannot risk an international incident by stepping in, but the Altian police forces are unprepared and ill equipped to handle this situation. OPSG is hereby contracted to eliminate all terror cells operating in Altis.", "Eliminate Terror Cell", "Terrorist City"];
    A3MRaid2 setSimpleTaskDestination (getMarkerPos "sg2");
    A3MRaid2 setTaskState "Assigned";
    player setCurrentTask A3MRaid2;
    playMusic "Assigned";
    ["TaskAssigned", ["Eliminate the foreign terrorist cell. Clear the area. See map."]] call BIS_fnc_showNotification;
};

A3M_JR2_Raid2Cleanup = {
    // Delete all spawned groups
    {
        if (!isNull _x) then {
            { deleteVehicle _x; } forEach units _x;
            deleteGroup _x;
        };
    } forEach Raid2SpawnedGroups;

    // Delete all spawned vehicles
    {
        if (!isNull _x) then {
            deleteVehicle _x;
        };
    } forEach Raid2SpawnedVehicles;

    // Clear the arrays
    Raid2SpawnedGroups = [];
    Raid2SpawnedVehicles = [];

    diag_log format ["[A3M] Raid 2 - Cleanup completed"];
};

A3M_JR2_Raid2Clear = {
    // Call cleanup function first
    call A3M_JR2_Raid2Cleanup;

    remoteExecCall ["A3M_MP_JR2_Raid2Clear"];
    "sg12" setMarkerPos (getMarkerpos "offmap");
    _markers setMarkerPos (getMarkerpos "offmap");

    B_DefenseBudget = (B_DefenseBudget + 2000000);
    publicVariable "B_DefenseBudget";

    MissionStatus = "M0";
    publicVariable "MissionStatus";

    Raid2Active = 0;
    publicVariable "Raid2Active";

    if (!isNull Raid2Win) then {deleteVehicle Raid2Win};
};

A3M_MP_JR2_Raid2Clear = {
    ["TaskDone", ["OPSG has successfully eliminated the Terror Cell."]] call BIS_fnc_showNotification;
    A3MRaid2 setTaskState "Succeeded";
    playMusic "Success";
    player addRating 2000;
    ["ScoreAdded", ["Terror Cell Eliminated!", 2000]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $2,000,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};
