A3M_JC_TRKEscort = {
    // Initialize global arrays for cleanup
    ConvoySpawnedGroups = [];
    ConvoySpawnedVehicles = [];
    ConvoySpawnedTriggers = [];

    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;
    private _spwnDir = markerDir "deltruck";

    // JIP Handler Mission Status
    MissionStatus = "M2";
    publicVariable "MissionStatus";

    // Mission Repeat Denial
    ConvoyActive = 1;
    publicVariable "ConvoyActive";

    // Random Selection of Destination, and public broadcast of destination to all players
    _allLocations = nearestLocations [_center, ["NameCity", "NameVillage"], _mapSize];
    _randomLocation = selectRandom _allLocations;
    _selectedPos = locationPosition _randomLocation;
    "DELpos" setMarkerPos _selectedPos;
    sleep 1.0;
    PubDelDestination = "DELpos";
    publicVariable "PubDelDestination";

    // Random chance of enemy ambush
    EnChance = [1, 0, 0, 0, 0, 0, 0, 1, 0, 0];
    EnPres = EnChance select floor random count EnChance;

    if (EnPres == 1) then {
        _HVTen = [getMarkerPos PubDelDestination, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer"]] call BIS_fnc_spawnGroup;
        ConvoySpawnedGroups pushBack _HVTen;
        [_HVTen, getMarkerPos PubDelDestination] call BIS_fnc_taskDefend;
    };

    // Create Trigger to Handle Mission Success
    A3M_fnc_DelDestinationTrigger = {
        DelDest = createTrigger ["EmptyDetector", getMarkerPos PubDelDestination];
        ConvoySpawnedTriggers pushBack DelDest;
        DelDest setTriggerArea [10, 10, 0, false];
        DelDest setTriggerActivation ["ANY", "PRESENT", true];
        DelDest setTriggerType "NONE";
        DelDest setTriggerStatements ["DEL1 in thisList", "remoteExecCall ['A3M_JC_ConvoySuccess', 2];", ""];
    };

    // Create Trigger to handle mission failure
    A3M_fnc_DelDeathTrigger = {
        DelDead = createTrigger ["EmptyDetector", getMarkerPos PubDelDestination];
        ConvoySpawnedTriggers pushBack DelDead;
        DelDead setTriggerArea [0, 0, 0, false];
        DelDead setTriggerActivation ["ANY", "PRESENT", true];
        DelDead setTriggerType "NONE";
        DelDead setTriggerStatements ["!alive DEL1", "[] call A3M_JC_ConvoyFailed", ""];
    };

    // Create Box Truck for Delivery
    DEL1 = "C_Van_01_box_F" createVehicle (getMarkerPos "deltruck");
    DEL1 setDir _spwnDir;
    ConvoySpawnedVehicles pushBack DEL1;

    // Call creation of triggers
    call A3M_fnc_DelDestinationTrigger;
    call A3M_fnc_DelDeathTrigger;

    // Create Task for all players
    // ["","A3M_MP_ConvoyTask",true,false] spawn BIS_fnc_MP;
    remoteExecCall ["A3M_MP_JC_ConvoyTask"];
};

A3M_MP_JC_ConvoyTask = {
    DELEscort = player createSimpleTask ["Deliver Astral Corp Supplies to Destination"];
    DELEscort setSimpleTaskDescription ["Escort the Astral Corp Supplies to their Destination. Protect them at all costs.", "Deliver Supplies", "Supply Destination"];
    DELEscort setSimpleTaskDestination (getMarkerPos PubDelDestination);
    DELEscort setTaskState "Assigned";
    player setCurrentTask DELEscort;
    playMusic "Assigned";
    ["TaskAssigned", ["Drive the supply truck to it's destination. See map."]] call BIS_fnc_showNotification;
};

A3M_MP_JC_ConvoyFailed = {
    DELEscort setTaskState "Failed";
    playSound "A3M_MissionFailed";
    playMusic "Failure";
    ["TaskFailed", ["OPSG has failed to safely escort the truck to it's destination."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JC_ConvoySuccess = {
    DELEscort setTaskState "Succeeded";
    ["TaskDone", ["OPSG has safely delivered the Supplies to their destination"]] call BIS_fnc_showNotification;
    playMusic "Success";
    player addRating 500;
    ["ScoreAdded", ["Delivery Complete!", 500]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $75,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_JC_ConvoyCleanup = {
    // Delete all spawned groups
    {
        if (!isNull _x) then {
            { deleteVehicle _x; } forEach units _x;
            deleteGroup _x;
        };
    } forEach ConvoySpawnedGroups;

    // Delete all spawned vehicles
    {
        if (!isNull _x) then {
            deleteVehicle _x;
        };
    } forEach ConvoySpawnedVehicles;

    // Delete all spawned triggers
    {
        if (!isNull _x) then {
            deleteVehicle _x;
        };
    } forEach ConvoySpawnedTriggers;

    // Clear the arrays
    ConvoySpawnedGroups = [];
    ConvoySpawnedVehicles = [];
    ConvoySpawnedTriggers = [];
};

A3M_JC_ConvoyFailed = {
    remoteExecCall ["A3M_MP_JC_ConvoyFailed"];
    call A3M_JC_ConvoyCleanup;
    "DELpos" setMarkerPos (getMarkerpos "offmap");
    ConvoyActive = 0;
    publicVariable "ConvoyActive";
    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_JC_ConvoySuccess = {
    remoteExecCall ["A3M_MP_JC_ConvoySuccess"];
    call A3M_JC_ConvoyCleanup;
    "DELpos" setMarkerPos (getMarkerpos "offmap");
    ConvoyActive = 0;
    publicVariable "ConvoyActive";
    MissionStatus = "M0";
    publicVariable "MissionStatus";
    B_DefenseBudget = (B_DefenseBudget+ 75000);
    publicVariable "B_DefenseBudget";
};
