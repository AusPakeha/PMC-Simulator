A3M_svr_SandE = {
    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;

    SEActive = 1;
    publicVariable "SEActive";

    MissionStatus = "M4";
    publicVariable "MissionStatus";

    // Find random location with <=3 buildings within 50m and >1km from C12
    private _validPos = [];
    while {count _validPos == 0} do {
        private _pos = [_center, 0, _mapSize, 3, 0, 0.1, 0] call BIS_fnc_findSafePos;
        if (_pos distance (getMarkerPos "C12") > 1000) then {
            private _buildings = nearestObjects [_pos, ["House"], 50];
            if (count _buildings <= 3) then {
                _validPos = _pos;
            };
        };
    };
    "SE1" setMarkerPos _validPos;
    SELOC = "SE1";

    PublicLoc = SELOC;
    publicVariable "PublicLoc";

    A3M_fnc_SEVIPDead = {
        SARDead = createTrigger ["EmptyDetector", (getMarkerPos PublicLoc)];
        SARDead setTriggerArea [0, 0, 0, false];
        SARDead setTriggerActivation ["ANY", "PRESENT", true];
        SARDead setTriggerType "NONE";
        SARDead setTriggerStatements ["!alive SAR1", "[] call A3M_JSandE_SEFailed;", ""];
    };

    A3M_fnc_SEVIPSaved = {
        SAResc = createTrigger ["EmptyDetector", (getMarkerPos "BA")];
        SAResc setTriggerArea [30, 30, 0, false];
        SAResc setTriggerActivation ["ANY", "PRESENT", true];
        SAResc setTriggerType "NONE";
        SAResc setTriggerStatements ["SAR1 in thisList", "[] call A3M_JSandE_SESucceeded;", ""];
    };

    // Random Select Hostage
    RandomVIP2 = ["Astral_VIP_0","C_Nikos_aged","C_scientist_F" ];
    RandomVIPSel2 = RandomVIP2 select floor random count RandomVIP2;
    CO = createGroup civilian;
    RandomVIPSel2 createUnit [getMarkerPos PublicLoc, CO, "SAR1 = this", 0.9, "COLONEL" ];
    sleep 1;
    CO setBehaviour "CARELESS";
    sleep 0.5;

    // Move hostage to safe location near SE1, preferably inside a building
    private _buildings = nearestObjects [getMarkerPos PublicLoc, ["House"], 100];
    private _safePos = getMarkerPos PublicLoc;
    if (count _buildings > 0) then {
        private _building = selectRandom _buildings;
        private _positions = _building buildingPos -1;
        if (count _positions > 0) then {
            _safePos = selectRandom _positions;
        };
    };
    SAR1 setPos _safePos;
    SAR1 disableAI "ANIM";
    SAR1 playMoveNow "Acts_AidlPsitMstpSsurWnonDnon_loop";

    RescueAction = SAR1 addAction ["Rescue" , {
        [SAR1] remoteExecCall ["A3M_MP_EscVIPCmds"];
        remoteExec ["A3M_MP_JSandE_ChangeSARDest"];
    }];

    [] call A3M_fnc_SEVIPDead;
    [] call A3M_fnc_SEVIPSaved;

    sleep 1;

    _HSTF = [getPos SAR1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
    [_HSTF, getPos SAR1] call BIS_fnc_taskDefend;

    _bluNums = west countSide allPlayers;

    if (_bluNums > 10) then {
        _HSTF2 = [getPos SAR1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_HSTF2, getPos SAR1, 200] call BIS_fnc_taskPatrol;

        _HSTF3 = [getPos SAR1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_HSTF3, getPos SAR1, 200] call BIS_fnc_taskPatrol;
    };
    if (_bluNums > 20) then {
        _HSTF4 = [getPos SAR1, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [_HSTF4, getPos SAR1] call BIS_fnc_taskDefend;
    };

    // [ '','A3M_mp_SARmission',true,false] spawn BIS_fnc_MP;
    remoteExec ["A3M_MP_JSandE_SARmission"];

    while { SEActive == 1 } do { "SAR1ICO" setMarkerPos getPos SAR1; sleep 0.5; };
};

A3M_JSandE_SEFailed = {
    // ['','A3M_MP_SEFailed',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_MP_JSandE_SEFailed"];
    SEActive = 0;
    publicVariable "SEActive";
    "SAR1ICO" setMarkerPos (getMarkerpos "offmap");
    deleteVehicle SAR1;
    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_JSandE_SESucceeded = {
    remoteExecCall ["A3M_MP_JSandE_SESucceeded"];
    SEActive = 0;
    publicVariable "SEActive";
    "SAR1ICO" setMarkerPos (getMarkerpos "offmap");
    deleteVehicle SARDead;
    B_DefenseBudget = (B_DefenseBudget+ 1500000);
    publicVariable "B_DefenseBudget";
    deleteVehicle SAR1;
    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_MP_JSandE_SESucceeded = {
    ["TaskDone", ["OPSG has successfully returned the executive to the OPSG compound."]] call BIS_fnc_showNotification;
    hint "We'll take him from here. He will be debriefed and receive medical treatment. Great job!";
    SARMission setTaskState "Succeeded";
    playMusic "Success";
    player addRating 850;
    ["ScoreAdded", ["Executive Recovered!", 850]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $1,500,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JSandE_ChangeSARDest = {
    SARMission setSimpleTaskDescription ["An Astral Corporation executive has been rescued. Return him to the C-12 compound safe and sound.", "Snatch and Extract", " RTB"];
    SARMission setSimpleTaskDestination (getMarkerPos "BA");
    SAR1 removeAction RescueAction;
    ["InformationGreen", ["The Package has been secured. Move to HQ immediately!"]] call BIS_fnc_showNotification;
};

A3M_MP_JSandE_SARmission = {
    SARMission = player createSimpleTask ["Locate and Extract kidnapped Astral Corp Executive."];
    SARMission setSimpleTaskDescription ["An Astral Corporation executive has been confirmed capture by APRC Cartel. We've been contrated to bring him back to our compound alive.", "Snatch and Extract", " Last Known Location"];
    SARMission setSimpleTaskDestination (getMarkerPos PublicLoc);
    SARMission setTaskState "Assigned";
    player setCurrentTask SARMission;
    playMusic "Assigned";
    ["TaskAssigned", ["Rescue the captured Astral Corporation executive. See map."]] call BIS_fnc_showNotification;
};

A3M_MP_JSandE_SEFailed = {
    ["TaskFailed", ["The Hostage was Killed."]] call BIS_fnc_showNotification;
    hint format ["Message: \n \n Our Vital Monitors indicate that the Astral Corp Executive you were commissioned to rescue has been killed. The mission is FUBAR. Return to Base."];
    SARMission setTaskState "FAILED";
    playSound "A3M_MissionFailed";
    playMusic "Failure";
    player setCurrentTask CO1;
};
