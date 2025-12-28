A3M_JNSAR_reinforce = {
    MissionStatus = "M7";
    publicVariable "MissionStatus";

    NSARActive = 1;
    publicVariable "NSARActive";

    sleep 1;
    execVM "scripts\missions\job_NSAR\nsar.sqf";
};

A3M_MP_JNSAR_StartTaskNSAR = {
    NSARTask = player createSimpleTask ["Assist the stranded NATO forces."];
    NSARTask setSimpleTaskDescription ["A distress call from a NATO unit in the mountains was received by an AAF telecommunications center. The message attached indicated that the unit is currently combat ineffective and awaiting an extraction that failed. The United States has contracted OPSG to insert and assist the NATO operatives in their extract.", "Assist NATO Operatives", "NATO Operatives"];
    NSARTask setSimpleTaskDestination (getMarkerPos NSARPickedNo);
    NSARTask setTaskState "Assigned";
    player setCurrentTask NSARTask;
    playMusic "Assigned";
    ["TaskAssigned", ["Extract NATO Team. Time Sensitive. See map."]] call BIS_fnc_showNotification;
};

A3M_MP_JNSAR_SARfound = {
    NSARTask setTaskState "Succeeded";
    ["TaskDone", ["OPSG has located the NATO team."]] call BIS_fnc_showNotification;
    ["TaskAssigned", ["Escort the NATO team to their extraction point."]] call BIS_fnc_showNotification;
    NSARTask = player createSimpleTask ["Escort NATO forces to their Extraction Point."];
    NSARTask setSimpleTaskDescription ["OPSG has located the straded NATO forces. Escort them to as they egress to their destination. These are soldiers, and they will fight, but you're being paid to make sure they make it safe! Stay sharp!", "Assist NATO Operatives", "NATO Extract"];
    NSARTask setSimpleTaskDestination (getMarkerPos NSARDestNo);
    NSARTask setTaskState "Assigned";
    player setCurrentTask NSARTask;
    playMusic "Assigned";
    hint "OPSG has located the NATO team. Move with them to their designated extraction point, and keep them alive. Most importantly, keep the officer with the group alive at all costs. He has secret intelligence NATO needs.";
};

A3M_MP_JNSAR_SARSuccess = {
    NSARTask setTaskState "Succeeded";
    ["TaskDone", ["OPSG has safely escorted the NATO team."]] call BIS_fnc_showNotification;
    playMusic "Success";
    player addRating 900;
    Bonusrating = (1000*EESurvivors);
    player addRating Bonusrating;
    ["ScoreAdded", ["NATO Team Escorted!", 900]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $5,000,000.00"]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JNSAR_SARfailed = {
    NSARTask setTaskState "Failed";
    playMusic "Failure";
    ["TaskFailed", ["OPSG has failed to safely escorted the NATO team."]] call BIS_fnc_showNotification;
    hint "The NATO team has been decimated...the ranking officers killed. OPSG has failed to meet the conditions of your contract. The contract has been cancelled and you are to RTB Immediately";
    player setCurrentTask CO1;
};
