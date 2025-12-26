A3M_JR1_Raid1 = {
    // --- Configuration ---
    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;

    // Randomize city location
    private _village = nearestLocations [_center, ["NameVillage"], _mapSize];
    private _selectedVillage = selectRandom _village;
    private _villagePos = locationPosition _selectedVillage;
    diag_log format ["[A3M] Raid 1 - Village Selected"];

    // Move sg1 to village center
    "sg1" setMarkerPos _villagePos;
    private _safePos = [getMarkerPos "sg1", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    private _SG1tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    [_SG1tm, getMarkerPos "sg1", random [50, 75, 100]] call BIS_fnc_taskPatrol;

    private _VehPatrol = [
        "A3M_Jeep_Wrangler_LMG",
        "A3M_Jeep_Wrangler_SPG9",
        "A3M_Offroad_AT",
        "A3M_Offroad_HMG"
    ];
    private _selectedVeh = selectRandom _VehPatrol;
    private _veh = createVehicle [_selectedVeh, _safePos, [], 0, "NONE"];
    createVehicleCrew _veh;
    private _SG1vm = [_veh, EAST] call BIS_fnc_spawnGroup;
    [_SG1vm, getMarkerPos "sg1", random [50, 75, 100]] call BIS_fnc_taskPatrol;
    diag_log format ["[A3M] Raid 1 - EI and Veh patrol spawned"];

    // Move GH1-GH6 to random positions around city (200-500m radius)
    private _markers = ["GH1", "GH2", "GH3", "GH4", "GH5", "GH6"];
    {
        private _randomPos = _villagePos getPos [random [200, 350, 500], random 360];
        _x setMarkerPos _randomPos;
    } forEach _markers;
    diag_log format ["[A3M] Raid 1 - Defender markers moved"];

    private _bluNums = west countSide allPlayers;

    private _safePosGH1 = [getMarkerPos "GH1", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    _GH1tm = [_safePosGH1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    [_GH1tm, getMarkerPos "GH1"] call BIS_fnc_taskDefend;

    private _safePos = [getMarkerPos "GH2", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
    private _GH2tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    [_GH2tm, getMarkerPos "GH2"] call BIS_fnc_taskDefend;

    if (_bluNums > 10) then {
        private _safePos = [getMarkerPos "GH3", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        private _GH3tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_GH3tm, getMarkerPos "GH3"] call BIS_fnc_taskDefend;

        private _safePos = [getMarkerPos "GH4", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        private _GH4tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_GH4tm, getMarkerPos "GH4"] call BIS_fnc_taskDefend;
    };
    if (_bluNums > 20) then {
        private _safePos = [getMarkerPos "GH5", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        private _GH5tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_GH5tm, getMarkerPos "GH5", 200] call BIS_fnc_taskPatrol;

        private _safePos = [getMarkerPos "GH6", 0, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;
        private _GH6tm = [_safePos, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_GH6tm, getMarkerPos "GH6", 200] call BIS_fnc_taskPatrol;
    };
    diag_log format ["[A3M] Raid 1 - Defenders spawned"];

    // Spawn barricades or wrecks on roads within 400m of sg1 with random rotations
    private _roads = _villagePos nearRoads 400;
    private _bars = [];
    private _fires = [];
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
                private _bar = createVehicle [_barricadeType, _pos, [], 0, "NONE"];

                _bars pushBack _bar;
                _veh setDir random 360;
                _bar setDir random 360;

                // Optional: Attach one fire instantly upon creation to a few random ones
                if (random 1 < 0.4) then { // 40% chance to start burning right away
                    private _fire = [_bar, 1 + random 1, time, false, false] spawn BIS_fnc_fireEffect;
                    _fires pushBack _fire;
                };

                private _clutterTypes = ["Land_Barrel_empty_F", "Land_Pallet_F", "Land_Crate_wooden_F"];
                private _clutter = createVehicle [selectRandom _clutterTypes, _pos, [], 0, "CAN_COLLIDE"];
                _clutter setPos ([_pos, 1, random 360] call BIS_fnc_relPos); // Move slightly away from main object
                _clutter setDir random 360;
            };
        };
    };

    diag_log format ["[A3M] Raid 1 - Trash spawned"];

    Raid1Win = createTrigger ["EmptyDetector", (getMarkerPos "sg1")];
    Raid1Win setTriggerArea [250, 250, 0, false];
    Raid1Win setTriggerActivation ["WEST SEIZED", "EAST D", false];
    Raid1Win setTriggerType "NONE";
    Raid1Win setTriggerStatements ["this", "remoteExecCall ['A3M_JR1_Raid1Clear', 2];", ""];

    MissionStatus = "M5";
    publicVariable "MissionStatus";

    Raid1Active = 1;
    publicVariable "Raid1Active";

    // [ '','A3M_MP_Raid1',true,false] spawn BIS_fnc_MP;
    remoteExecCall ["A3M_MP_JR1_Raid1"];
    diag_log format ["[A3M] Raid 1 - Task activated"],
};

A3M_MP_JR1_Raid1 = {
    A3MRaid1 = player createSimpleTask ["Move to the Enemy Terrorist Compound and eliminate the enemy forces."];
    A3MRaid1 setSimpleTaskDescription ["The Altian Government requests assistance in dealing with a foreign terrorist cell that has taken over a compound. The Altian Government cannot risk an international incident by stepping in, but the Altian police forces are unprepared and ill equipped to handle this situation. OPSG is hereby contracted to eliminate all terror cells operating in Altis.", "Eliminate Terror Cell", "Terrorist Compound"];
    A3MRaid1 setSimpleTaskDestination (getMarkerPos "sg1");
    A3MRaid1 setTaskState "Assigned";
    player setCurrentTask A3MRaid1;
    playMusic "Assigned";
    ["TaskAssigned", ["Eliminate the rogue military unit. Clear the area. See map."]] call BIS_fnc_showNotification;
};

A3M_JR1_Raid1Clear = {
    // [ '','A3M_MP_RaidClear',true,false] spawn BIS_fnc_MP;
    remoteExecCall ["A3M_MP_JR1_Raid1Clear"];
    { terminate _x; } foreach _fires;

    B_DefenseBudget = (B_DefenseBudget + 2000000);
    publicVariable "B_DefenseBudget";

    MissionStatus = "M0";
    publicVariable "MissionStatus";

    Raid1Active = 0;
    publicVariable "Raid1Active";

    if (!isNull Raid1Win) then {deleteVehicle Raid1Win};
};

A3M_MP_JR1_Raid1Clear = {
    ["TaskDone", ["OPSG has successfully eliminated the Terror Cell."]] call BIS_fnc_showNotification;
    A3MRaid1 setTaskState "Succeeded";
    playMusic "Success";
    player addRating 2000;
    ["ScoreAdded", ["Terror Cell Eliminated!", 2000]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $2,000,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};
