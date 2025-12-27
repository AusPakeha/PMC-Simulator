A3M_JT9sec_T9sec = {
    MissionStatus = "M8";
    publicVariable "MissionStatus";

    T9Active = 1;
    publicVariable "T9Active";

    TimeArrayCounter = 0;

    remoteExecCall ["A3M_MP_JT9sec_StartTaskT9"];

    T9trg = createTrigger ["EmptyDetector", getMarkerPos "T9"];
    T9trg setTriggerArea [35, 35, 0, false];
    T9trg setTriggerActivation ["WEST", "PRESENT", false];
    T9trg setTriggerType "NONE";
    T9trg setTriggerStatements ["this", "remoteExecCall ['A3M_MP_JT9sec_T9Shift']; remoteExecCall ['A3M_fnc_JT9sec_SelectIncident', 2];", ""];
};

// Protestors Incident
A3M_fnc_JT9sec_Protest = {
    if (!IsNull T9Pros) then { { deleteVehicle _x } forEach (units T9Pros) };

    T9Pros = [getMarkerPos "Prostart", civilian, ["C_man_1", "C_man_polo_2_F", "C_man_polo_4_F", "C_man_polo_5_F", "C_man_polo_6_F", "C_man_p_fugitive_F"]] call BIS_fnc_spawnGroup;
    "C_Nikos_aged" createUnit [getMarkerPos "Prostart", T9Pros, "ProtestLeader = this", 0.9, "COLONEL" ];
    _wp1 = T9Pros addWaypoint [getMarkerPos "protest", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointFormation "DIAMOND";
    [] call A3M_fnc_ProtestTrg;
};

A3M_fnc_JT9sec_ProtestTrg = {
    T9ProsTrg = createTrigger ["EmptyDetector", getMarkerPos "Protest"];
    T9ProsTrg setTriggerArea [30, 30, 0, false];
    T9ProsTrg setTriggerActivation ["CIV", "PRESENT", true];
    T9ProsTrg setTriggerType "NONE";
    T9ProsTrg setTriggerStatements ["ProtestLeader in thisList", "remoteExecCall ['A3M_MP_JT9sec_T9ProtestChant'];", 'ProtestActive = 0; publicVariable "ProtestActive";'];
};

A3M_fnc_JT9sec_AttackT9 = {
    T9HostArray = ["T9_HostL1", "T9_HostL2", "T9_HostL3"];
    T9EnSource = T9HostArray select floor random count T9HostArray;

    T9EF = [getMarkerPos T9EnSource, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer"]] call BIS_fnc_spawnGroup;
    _wpE1 = T9EF addWaypoint [getMarkerPos "T9", 0];
    _wpE1 setWaypointType "SAD";
    _wpE1 setWaypointFormation "DIAMOND";

    T9wpE1 = createTrigger ["EmptyDetector", getMarkerPos "Protest"];
    T9wpE1 setTriggerArea [30, 30, 0, false];
    T9wpE1 setTriggerActivation ["CIV", "PRESENT", true];
    T9wpE1 setTriggerType "NONE";
    T9wpE1 setTriggerStatements ["({ alive _x } count units T9EF) < 1", "remoteExecCall ['A3M_MP_JT9sec_T9EnemyElim'];", ""];
};

// End Hostile Attack
// Double Hostile Attack
A3M_fnc_JT9sec_dblAttackT9 = {
    T9HostArray = ["T9_HostL1", "T9_HostL2", "T9_HostL3"];
    T9EnSource = T9HostArray select floor random count T9HostArray;

    T9EF2 = [getMarkerPos T9EnSource, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer"]] call BIS_fnc_spawnGroup;
    _wpE2 = T9EF2 addWaypoint [getMarkerPos "T9", 0];
    _wpE2 setWaypointType "SAD";
    _wpE2 setWaypointFormation "DIAMOND";

    T9wpE2 = createTrigger ["EmptyDetector", getMarkerPos "Protest"];
    T9wpE2 setTriggerArea [30, 30, 0, false];
    T9wpE2 setTriggerActivation ["ANY", "PRESENT", true];
    T9wpE2 setTriggerType "NONE";
    T9wpE2 setTriggerStatements ["({ alive _x } count units T9EF2) < 1", "remoteExecCall ['A3M_MP_JT9sec_T9EnemyElim'];", ""];

    T9HostArray = ["T9_HostL1", "T9_HostL2", "T9_HostL3"];
    T9EnSource = T9HostArray select floor random count T9HostArray;

    T9EF3 = [getMarkerPos T9EnSource, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer"]] call BIS_fnc_spawnGroup;
    _wpE3 = T9EF3 addWaypoint [getMarkerPos "T9", 0];
    _wpE3 setWaypointType "SAD";
    _wpE3 setWaypointFormation "DIAMOND";

    T9wpE3 = createTrigger ["EmptyDetector", getMarkerPos "Protest"];
    T9wpE3 setTriggerArea [30, 30, 0, false];
    T9wpE3 setTriggerActivation ["ANY", "PRESENT", true];
    T9wpE3 setTriggerType "NONE";
    T9wpE3 setTriggerStatements ["({ alive _x } count units T9EF3) < 1", "remoteExecCall ['A3M_MP_JT9sec_T9EnemyElim'];", ""];
};

A3M_fnc_JT9sec_Delivery = {
    DeliveryComplete = 0;
    publicVariable "DeliveryComplete";

    T9DelGrp = createGroup Civilian;

    T9DelTrk = "A3M_astral_van" createVehicle getMarkerPos "T9Stage1";
    T9DelTrk_crew = [T9DelTrk, T9DelGrp] call BIS_fnc_spawnCrew;

    _wpT1 = T9DelGrp addWaypoint [getMarkerPos "T9Stop1", 1];
    _wpT1 setWaypointType "MOVE";
    _wpT1 setWaypointBehaviour "CARELESS";
    _wpT1 setWaypointSpeed "NORMAL";

    T9wpT2 = createTrigger ["EmptyDetector", getMarkerPos "T9Stop1"];
    T9wpT2 setTriggerArea [10, 10, 0, false];
    T9wpT2 setTriggerActivation ["ANY", "PRESENT", true];
    T9wpT2 setTriggerType "NONE";
    T9wpT2 setTriggerStatements ["T9DelTrk in thisList", "remoteExecCall ['A3M_MP_JT9sec_T9TrkInPos'];", ""];

    waitUntil { T9GateOpen == 1 };

    _wpT2 = T9DelGrp addWaypoint [getMarkerPos "T9TrkDest", 2];
    _wpT2 setWaypointType "MOVE";
    _wpT2 setWaypointBehaviour "CARELESS";
    _wpT2 setWaypointSpeed "LIMITED";

    T9wpT3 = createTrigger ["EmptyDetector", getMarkerPos "T9TrkDest"];
    T9wpT3 setTriggerArea [20, 20, 0, false];
    T9wpT3 setTriggerActivation ["ANY", "PRESENT", true];
    T9wpT3 setTriggerType "NONE";
    T9wpT3 setTriggerStatements ["T9DelTrk in thisList", "remoteExecCall ['A3M_MP_JT9sec_T9TrkDelIP'];", ""];

    waitUntil { triggerActivated T9wpT3 };

    deleteVehicle T9wpT2;
    sleep 60;
    remoteExecCall ["A3M_MP_JT9sec_T9TrkDelIP2"];

    waitUntil { DeliveryComplete == 1 };

    _wpT3 = T9DelGrp addWaypoint [getMarkerPos "T9Stop2", 3];
    _wpT3 setWaypointType "MOVE";
    _wpT3 setWaypointBehaviour "CARELESS";
    _wpT3 setWaypointSpeed "NORMAL";

    waitUntil { T9GateOpen == 1 };

    _wpT3 = T9DelGrp addWaypoint [getMarkerPos "T9Return", 4];
    _wpT3 setWaypointType "MOVE";
    _wpT3 setWaypointBehaviour "CARELESS";
    _wpT3 setWaypointSpeed "FULL";

    T9wpT4 = createTrigger ["EmptyDetector", getMarkerPos "T9Return"];
    T9wpT4 setTriggerArea [20, 20, 0, false];
    T9wpT4 setTriggerActivation ["ANY", "PRESENT", true];
    T9wpT4 setTriggerType "NONE";
    T9wpT4 setTriggerStatements ["T9DelTrk in thisList", "remoteExecCall ['A3M_MP_JT9sec_T9TrkDelCplt'];", ""];

    waitUntil { triggerActivated T9wpT4 };
    sleep 10;
    [] spawn A3M_JT9sec_T9Cleanup
};

A3M_JT9sec_T9Cleanup = {
    deleteVehicle T9DelTrk;
    { deleteVehicle _x } forEach (units T9DelGrp);
    deleteVehicle T9wpT3;
    deleteVehicle T9wpT4;
};

// Incident Randomizer
A3M_fnc_JT9sec_SelectIncident = {
    T9IncidentArray = ["I0","I1","I2","I3", "I4"];
    T9Incident = T9IncidentArray select floor random count T9IncidentArray;

    switch (T9Incident) do {
        case "I0": {
            // Nothing
            [] spawn A3M_fnc_JT9sec_Incident_Causer;
        };
        case "I1": {
            [] spawn A3M_fnc_JT9sec_Protest;
            [] spawn A3M_fnc_JT9sec_Incident_Causer;
        };
        case "I2": {
            [] spawn A3M_fnc_JT9sec_AttackT9;
            [] spawn A3M_fnc_JT9sec_Incident_Causer;
        };
        case "I3": {
            [] spawn A3M_fnc_JT9sec_dblAttackT9;
            [] spawn A3M_fnc_JT9sec_Incident_Causer;
        };
        case "I4": {
            [] spawn A3M_fnc_JT9sec_Delivery;
            [] spawn A3M_fnc_JT9sec_Incident_Causer;
        };
    };
};

// End Incident Randomizer
A3M_fnc_JT9sec_Incident_Causer = {
    TimeArray = [60,90,120,130,150,180,210,270];
    RandomTime = TimeArray select floor random count TimeArray;

    TimeArrayCounter = (TimeArrayCounter + RandomTime);

    if (TimeArrayCounter < 1200) then {
        sleep RandomTime;
        [] call A3M_fnc_JT9sec_SelectIncident;
    } else {
        remoteExecCall ["A3M_MP_JT9sec_T9Success"];

        MissionStatus = "M0";
        publicVariable "MissionStatus";

        T9Active = 0;
        publicVariable "T9Active";

        B_DefenseBudget = (B_DefenseBudget + 750000);
        publicVariable "B_DefenseBudget";

        TimeArrayCounter = nil;
        publicVariable "TimeArrayCounter";
    };
};

A3M_MP_JT9sec_T9EnemyElim = {
    ["TaskDone", ["OPSG has eliminated a terror cell attacking the T-9 facility."]] call BIS_fnc_showNotification;
    player addRating 500;
    ["ScoreAdded", ["Attacking Cell Eliminated!", 500]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9TrkInPos = {
    ["InformationRed", ["A delivery is at the gate."]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9TrkDelIP = {
    ["InformationRed", ["Delivery In Progress."]] call BIS_fnc_showNotification;
    ["InformationRed", ["Keep Truck Safe!"]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9TrkDelIP2 = {
    DeliveryComplete = 1;
    ["InformationGreen", ["A delivery has been completed."]] call BIS_fnc_showNotification;
    player addRating 500;
    ["ScoreAdded", ["Delivery Made Safely!", 500]] call BIS_fnc_showNotification;
    ["InformationRed", ["Remember to let the delivery truck out."]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9TrkDelCplt = {
    ["TaskDone", ["A delivery of supplies has safely been delivered."]] call BIS_fnc_showNotification;
    player addRating 500;
    ["ScoreAdded", ["Delivery Completed Safely!", 500]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9ProtestChant = {
    ProtestActive = 1;

    _center = createCenter sideLogic;
    _group = createGroup _center;
    _pos = (getMarkerPos "T9Stop1");
    T9LogicSnd = _group createUnit ["LOGIC", _pos, [], 0, ""];

    if ((alive ProtestLeader) AND (ProtestActive == 1)) then { T9LogicSnd say3D "A3M_PLChant"; } else { deleteVehicle T9LogicSnd };
    sleep 30;

    if ((alive ProtestLeader) AND (ProtestActive == 1)) then { T9LogicSnd say3D "A3M_PLChant"; } else { deleteVehicle T9LogicSnd };
    sleep 30;

    if ((alive ProtestLeader) AND (ProtestActive == 1)) then { T9LogicSnd say3D "A3M_PLChant"; } else { deleteVehicle T9LogicSnd };
};

A3M_MP_JT9sec_T9Alarm1 = {
    T9Spkr say3D "A3M_alarmed";
};

A3M_MP_JT9sec_StartTaskT9 = {
    T9Task = player createSimpleTask ["T9 Premise Security Shift"];
    T9Task setSimpleTaskDescription ["The T9 Facility is a highly classified facility operated by Astral Corp by contract of the United States Air Force.", "Perform Security Detail at T9 Facility", "T9 Facility"];
    T9Task setSimpleTaskDestination (getMarkerPos "T9");
    T9Task setTaskState "Assigned";
    player setCurrentTask T9Task;
    playMusic "Assigned";
    ["TaskAssigned", ["Perform Premise Security Detail at the T-9 Facility. See Map."]] call BIS_fnc_showNotification;
};

A3M_MP_JT9sec_T9Shift = {
    ["TaskAssigned", ["OPSG has commenced a T-9 security shift."]] call BIS_fnc_showNotification;
    T9Task setSimpleTaskDescription ["Man the front gate, patrol the perimeter and keep the facility safe and secure. You need to stay here for the duration of one shift. Keep productivity high by minimizing threats inside the facility.", "Perform Security Detail at T9 Facility", "T9 Facility"];
    T9Task setSimpleTaskDestination (getMarkerPos "T9");
    T9Task setTaskState "Assigned";
    player setCurrentTask T9Task;
    hint "Man the front gate, patrol the perimeter and keep the facility safe and secure. You need to stay here for the duration of one shift. Keep productivity high by minimizing threats inside the facility.";
};

A3M_MP_JT9sec_T9Success = {
    T9Task setTaskState "Succeeded";
    playMusic "Success";
    ["TaskDone", ["OPSG has completed a security shift at the T-9 Facility."]] call BIS_fnc_showNotification;
    player addRating 1000;
    ["ScoreAdded",["T9 Security Shift Completed!", 1000]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $750,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JT9sec_T9failed = {
    T9Task setTaskState "Failed";
    playMusic "Failure";
    ["TaskFailed", ["OPSG has allowed chaos at the T-9 facility."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};
