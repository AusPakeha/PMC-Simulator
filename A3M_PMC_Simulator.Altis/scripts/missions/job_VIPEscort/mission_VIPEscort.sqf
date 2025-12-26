A3M_JVIPEscort_VIPEscort = {
    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;

    // JIP Handler Mission Status
    MissionStatus = "M1";
    publicVariable "MissionStatus";

    // Mission Repeat Denial
    EscortActive = 1;
    publicVariable "EscortActive";

    // Randomly Select HVT's Position from locations, broadcast position to all players
    _allLocations = nearestLocations [_center, ["NameCity", "NameVillage", "NameTown", "NameLocal"], _mapSize];
    _randomLocation = selectRandom _allLocations;
    _selectedPos = locationPosition _randomLocation;
    "HVTpos" setMarkerPos _selectedPos;
    HVTDestination = "HVTpos";
    PublicDestination = "HVTpos";
    publicVariable "PublicDestination";

    // Create task for all players
    // ["","A3M_MP_EscortTask",true,false] spawn BIS_fnc_MP;
    remoteExec ["A3M_MP_JVIPEscort_EscortTask"];

    // Random chance of enemy presence at Destination
    EnChance = [1, 0, 0, 0, 0, 0, 0, 1, 0, 0];
    EnPres = EnChance select floor random count EnChance;

    // Create Cadre on Random Chance
    if (EnPres == 1) then {
        _HVTen = [getMarkerPos "PublicDestination", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
        [_HVTen, getMarkerPos "PublicDestination"] call BIS_fnc_taskDefend;
    };

    // Create Trigger For Mission Completion (Deliver VIP To Trigger)
    A3M_fnc_JVIPEscort_DestinationTrigger = {
        VIPDest = createTrigger ["EmptyDetector", getMarkerPos PublicDestination];
        VIPDest setTriggerArea [12, 12, 0, false];
        VIPDest setTriggerActivation ["ANY", "PRESENT", true];
        VIPDest setTriggerType "NONE";
        VIPDest setTriggerStatements ["VIP1 in thisList", "[] spawn A3M_JVIPEscort_EscortSuccess", ""];
    };

    // Create trigger to handle VIP Death
    A3M_fnc_JVIPEscort_DeathTrigger = {
        VIPDead= createTrigger ["EmptyDetector", getMarkerPos PublicDestination];
        VIPDead setTriggerArea [0, 0, 0, false];
        VIPDead setTriggerActivation ["ANY", "PRESENT", true];
        VIPDead setTriggerType "NONE";
        VIPDead setTriggerStatements ["!alive VIP1", "[] call A3M_JVIPEscort_EscortFailed", ""];
    };

    [] call A3M_fnc_JVIPEscort_DestinationTrigger;
    [] call A3M_fnc_JVIPEscort_DeathTrigger;

    while { EscortActive == 1 } do { "VIP1ICO" setMarkerPos getpos VIP1; sleep 0.5; };
};

A3M_JVIPEscort_EscortFailed = {
    // ['','A3M_MP_EscortFailed',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_MP_JVIPEscort_EscortFailed"];

    "VIP1ICO" setMarkerPos (getMarkerpos "offmap");
    [VIP1] joinSilent grpNull;

    deleteVehicle VIPDest;
    deleteVehicle VIPDead;

    sleep 10;

    deleteVehicle VIP1;

    EscortActive = 0;
    publicVariable "EscortActive";

    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_MP_JVIPEscort_EscortTask = {
    VIPEscort = player createSimpleTask ["Escort VIP"];
    VIPEscort setSimpleTaskDescription ["Escort the Astral Corporation Executive to his Destination. Protect him at all costs.", "Escort VIP", "VIP's Destination"];
    VIPEscort setSimpleTaskDestination (getMarkerPos PublicDestination);
    VIPEscort setTaskState "Assigned";
    player setCurrentTask VIPEscort;
    playMusic "Assigned";
    ["TaskAssigned", ["Escort the VIP to his destination. See map."]] call BIS_fnc_showNotification;
};

A3M_MP_JVIPEscort_EscortSuccess = {
    VIPEscort setTaskState "Succeeded";
    ["TaskDone", ["OPSG has safely escorted the executive to his destination."]] call BIS_fnc_showNotification;
    playMusic "Success";
    player addRating 300;
    ["ScoreAdded", ["Executive Escort Complete!", 300]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $50,000.00."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JVIPEscort_EscortFailed = {
    VIPEscort setTaskState "Failed";
    playSound "A3M_MissionFailed";
    playMusic "Failure";
    ["TaskFailed", ["OPSG has failed to safely escort the Executive."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};
