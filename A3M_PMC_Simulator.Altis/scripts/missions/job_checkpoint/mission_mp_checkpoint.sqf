// Roadblock Mission - This one works differently, and, pending a total re-write, transcends the rules of _svr_ and _MP_ names, as every call is a hybrid of server and client calls. Ignore naming rules below...
A3M_fnc_JRB_RoadBlock = {
    RBduty = player createSimpleTask ["Move To Checkpoint Duty"];
    RBduty setSimpleTaskDescription ["Stand at the checkpoint and perform stop and search checkpoint duties with the authority of the Altis Armed Forces.", "Move To Checkpoint Duty", " Checkpoint C-12N"];
    RBduty setSimpleTaskDestination (getMarkerPos "RBC");
    RBduty setTaskState "Assigned";
    player setCurrentTask RBduty;
    ["TaskAssigned", ["Move to C-12 checkpoint. Check map."]] call BIS_fnc_showNotification;

    if (isServer) then {
        RBtrg = createTrigger ["EmptyDetector", getMarkerPos "RBC"];
        RBtrg setTriggerArea [20, 20, 0, false];
        RBtrg setTriggerActivation ["WEST", "PRESENT", false];
        RBtrg setTriggerType "NONE";
        RBtrg setTriggerStatements ["This","[[], 'A3M_fnc_JRB_Checkpoint', true, false, false] call BIS_fnc_MP",""];
    };
};

A3M_fnc_JRB_checkpoint = {
    RBduty setTaskState "Succeeded";
    playMusic "Success";
    player addRating 100;
    ["ScoreAdded",["Checkpoint Reached",100]] call BIS_fnc_showNotification;

    if (isServer) then {
        deleteVehicle RBtrg;
    };

    RBduty2 = player createSimpleTask ["Perform Checkpoint Duty"];
    RBduty2 setSimpleTaskDescription ["Wait for cars to stop at the checkpoint and perform stop and search checkpoint duties with the authority of the Altian Government.", "Perform Checkpoint Duty", " Checkpoint C-12N"];
    RBduty2 setSimpleTaskDestination (getMarkerPos "RBC");
    RBduty2 setTaskState "Assigned";

    titleText ["Welcome to the C-12 South Checkpoint. Perform stop and search duties on Altian Nationals. Be suspicious of terroristic threats.", "PLAIN DOWN"];

    if (isServer) then {
        _ChkPt = execVM 'scripts\missions\job_checkpoint\A3MCheckpoint.sqf';
        waitUntil { scriptDone _ChkPt };

        while { (CheckPointActive == 1) } do {
            sleep 5;
            if ((!alive RBVehD) AND (CPManalive == 1)) then {
                CPManalive = 0;
                remoteExecCall ["RemAllAct"];
                [] call A3M_fnc_handleSol;
                // sleep 10;
            };
        };
    } else {
        systemChat "A Checkpoint Mission is currently active.";
    };
};

A3M_fnc_JRB_HandleSol = {
    switch (ManType) do {
        case "M0": {
            systemChat "Oh Noes! No ManType was found. Phantom Exec. Crash, Crash, Crash.";
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        case "M1": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            remoteExecCall ["A3M_FNC_JRB_CRIMMP"];
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        case "M2": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            RightsViols = (RightsViols+1);
            publicVariable "RightsViols";
            remoteExecCall ["A3M_FNC_JRB_CIVMP"];
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        case "M3": {
            remoteExecCall ["RemAllAct"];
            MissionsPassed = (MissionsPassed + 1) ;
            publicVariable "MissionsPassed";
            remoteExecCall ["A3M_fnc_JRB_TERRMP"];
            sleep 5;
            deleteVehicle RBVeh;
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        case "M4": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            RightsViols = (RightsViols+1);
            publicVariable "RightsViols";
            remoteExecCall ["A3M_FNC_JRB_PRISMP"];
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        case "M5": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
        default {
            systemChat "Oh Noes! Mission Crash! Something went horribly wrong, could not determine ManType. Trying Again...";
            sleep 1;
            execVM "scripts\missions\job_checkpoint\A3MCheckpoint.sqf";
        };
    };
};

MP_JRB_Roadblock_Attitude = {
    switch (RAPickedNumber) do {
        //Innocent 1
        case "M0": {
            ManType = "M2";
            removeAllActions RBVeh;
            greet = RBVeh addAction ["Greeting", { hint "Hello. How are you today sir? Im a Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle doesn't smell of anything at all.  \n Driver Attitude: \n Driver appears calm and cooperative" }];
            search = RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, is this really needed? I know my rights!"; sleep 2; hint "Searching Car....."; sleep 5; hint "Nothing illegal or interesting was found in the car"; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; GetInCar = RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            goSouth = RBVeh addAction ["Allow to Proceed", { hint "Thank you sir, I'll be moving on now"; [] call DoExitStopSouth; }];
            goNorth = RBVeh addAction ["Order To Turn Around", { hint "Are you kidding me? I'm perfectly legal! You are out of your mind, buster!"; [] call DoExitStopNorth; }];
        };

        // Drunk Driver
        case "M1": {
            ManType = "M1";
            removeAllActions RBVeh;
            RBVeh addAction ["Greeting", { hint "Yeth Thir! I'm...I'mmm...Okay. Yeah I'm Okay.  Fuck YOU okay! Don't judge me. Who are you to judge me? Only GOD can judge me. Or the judge. Who judges the judge? He probably judges himself every day under the bench!" }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair.  \n Smells: \n The vehicle smells of alcohol and vomit \n Driver Attitude: \n Driver appears Impaired and Uncooperative" }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "I did nothing to you! Why are you judging me like this? Don't judge me!"; sleep 2; hint "Searching Car....."; sleep 5; hint "Found open bottle of Russian vodka"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Arrest for DWI", { ManType = "M4"; publicVariable "ManType"; hint "Abreast? Arrest meee? Fuck YOU! You aren't GAWD!"; sleep 2; hint "Escort the Suspect to Altian jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; sleep 2; [] call A3M_fnc_jailtrigger; }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Yesh, Yesh it's okay. I'm okay. You're okay. Okay. Bye."; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Who are YOU to JUDGE ME!! FUCK YOU!! I'll go home and get my box of ROTTEN EGGS! That's what I'LL DO!!"; [] call DoExitStopNorth; }];
        };

        // Drug Runner
        case "M2": {
            ManType = "M1";
            removeAllActions RBVeh;
            RBVeh addAction ["Greeting", { hint "Hello sir. All is okay here, yes? I am Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected"}];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n A faint smell of Anise is radiating from the vehicle.  \n Driver Attitude: \n The driver appears to be quite nervous." }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "I better call my lawyer. I'm not saying anything until my attorney arrives. Oh my God."; sleep 2.0; hint "Searching Car....."; sleep 6; hint "You found a load of cocaine"; sleep 2; hint "Driver: Step out of the vehicle! \n \n If the driver refuses to exit, shoot the vehicle's tires and disable it!";
            RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }];
            RBVehD addAction ["Sir, You are under arrest...", { ManType = "M4"; publicVariable "ManType"; hint "Oh God...Oh My God....Ohhhh Shit. Fuck...FUCK ME!"; sleep 3.0; hint "Transport the Criminal to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Okay...thanks to you sir!"; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Okay...No problem officer. I'll just go back where I came from then."; [] call DoExitStopNorth; }];
        };

        // Illegal Alien
        case "M3": {
            ManType = "M1";
            removeAllActions RBVeh;
            RBVeh addAction ["Greeting", { hint "Allu." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle appears normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears dirty and aged. \n Smells:\n The vehicle smells like chewing tobacco. \n Driver Attitude: \n  The driver appears disoriented, but cooperative." }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Dis No Gut."; sleep 2.0; hint "Searching Car....."; sleep 5; hint "Found Multiple Identifications. Upon further review, the Altian Citizen Number on the Altian ID doesn't check out..."; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Arrest for Illegal Immigration", { ManType = "M4"; publicVariable "ManType"; hint "Fock you mane. You cops are always trying to keepa de mano down!"; sleep 3.0; hint "Escort the Illegal Alien to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Peace on you sire"; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Eat a deek, bottmonch."; [] call DoExitStopNorth; }];
        };

        // Terrorist Attack on checkpoint - carbomb
        case "M4": {
            ManType = "M3";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected!" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "Visual Inspection: \n The vehicle appears clean, but in disrepair. Wires appear to be protruding from the drivers side door frame. \n Smells:\n The smell of Jet Fuel permeates the air. \n Driver Attitude: \n The driver appears very calm."; }];
            RBVeh addAction ["Greeting", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "Allahu Akbar"; remoteExecCall ["RemAllAct"]; sleep 3; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBVeh addAction ["Search", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "Allahu Akbar"; remoteExecCall ["RemAllAct"];  sleep 5; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBVeh addAction ["Allow to Proceed", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "Allahu Akbar"; remoteExecCall ["RemAllAct"]; sleep 2; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBVeh addAction ["Order To Turn Around", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "Allahu Akbar"; remoteExecCall ["RemAllAct"];  sleep 2; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
        };

        // Innocent 2
        case "M5": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBVeh setDamage 0.3;
            RBVeh addAction ["Greeting", { hint "Im an Altian Citizen. What the fuck do you want? Fuck outta my way, bitch!" }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean, but in disrepair. A single red wire is protruding from under the vehicle. A fluid is dripping on the ground.  \n Smells:\n The vehicle smells of rich burning fuel and exhaust. \n Driver Attitude: \n The driver appears angry and combative" }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, You're a real fucking prick. I know my rights, fuckhead!!"; sleep 2.0; hint "Searching Car....."; sleep 5; hint "Nothing illegal or interesting was found in the car. Anomaly was a false alert - damaged vehicle."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Yeah, that's what I thought. Civil Rights Violatin' muthafuckas!" ; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Civil Rights Violatin' muthafuckas! I'll have your ass for this!"; [] call DoExitStopNorth; }];
        };

        // Innocent 3
        case "M6": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBVeh addAction ["Greeting", { hint "Hi...I'd like to pass on that ass, please? " }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n The vehicle smells like Strawberries. \n Driver Attitude: \n The driver appears to be feeling snarky." }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, What the hell? Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car"; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Later bitches"; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Fuck you bitches. I'm filing a complaint and fucking your mother in the ass!"; [] call DoExitStopNorth; }];
        };

        //Innocent 4
        case "M7": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBVeh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n The vehicle smells of an oil substance. \n Driver Attitude: \n The driver appears uncertain." }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, please, This is insane. Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "You found a KingCock Double Trouble Dildo. Nothing illegal in this vehicle."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Have a nice day"; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Doom on you!"; [] call DoExitStopNorth; }];
        };

        //Innocent 5
        case "M8": {
            ManType = "M2";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle smells sulphuric, like rotten eggs. \n Driver Attitude: \n The drive appears nervous." }];
            RBVeh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass. Immediately" }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, This is insane. Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car. A suspicious smell turns out to be a rotten sandwich."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBVeh addAction ["Allow to Proceed", { hint "Have a good one!"; [] call DoExitStopSouth; }];
            RBVeh addAction ["Order To Turn Around", { hint "Eat shit, dickbag!"; [] call DoExitStopNorth; }];
        };

        // Innocent 6
        case "M9": {
            ManType = "M2";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears to have excessive junk in the back. \n Smells:\n The vehicle smells strongly of wintergreen air freshener. \n Driver Attitude: \n The driver appears nervous." }];
            RBVeh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass." }];
            RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, What the fuck. You gonna ask me to suck your cock next?"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car. A suspicious smell turns out to be a moldy gym sock."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBVeh addAction ["Allow to Proceed", { [] call DoExitStopSouth; hint "Have a good day!" }];
            RBVeh addAction ["Order To Turn Around", { [] call DoExitStopNorth; hint "Oh, that's fucking great. Thanks bitch!" }];
        };

        // Foiled  Terrorist Attack
        case "M10": {
            ManType = "M3";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears to have wires slightly protruding from the grill. \n Smells:\n The vehicle smells of alcohol or paint thinner \n Driver Attitude: \n The driver appears fidgety." }];
            RBVeh addAction ["Greeting", { hint "Hello! I'm an Altian Citizen." }];
            RBVeh addAction ["Search", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "You stupid fuck. I'll kill you. Allahu Akbar."; remoteExecCall ["RemAllAct"]; sleep 2.0; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBVeh addAction ["Allow to Proceed", { [] call DoExitStopSouth; hint "You live to fight another day, infidel!"; }];
            RBVeh addAction ["Order To Turn Around", { [] call DoExitStopNorth; hint "Fuck you infidels!"; }];
        };

        // Heroin Runner
        case "M11": {
            ManType = "M1";
            removeAllActions RBVeh;
            greet= RBVeh addAction ["Greeting", { hint "How are you today sir. Im an Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle doesn't smell of anything at all.  \n Driver Attitude: \n Driver appears calm and cooperative" }];
            search= RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, is this really needed? This is just stupid. I know my rights! call my lawyer!"; hint "Searching Car....."; sleep 6; hint "You found a load of heroin."; sleep 2; hint "Driver: Step out of the vehicle! \n \n If the driver refuses to exit, shoot the vehicle's tires and disable it!"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Sir, You are under arrest...", { ManType = "M4"; publicVariable "ManType"; hint "Oh Mother of God. I've really done it now."; sleep 3.0; hint "Transport the Criminal to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            goSouth= RBVeh addAction ["Allow to Proceed", { hint "Thank you sir, I'll be moving on now"; [] call DoExitStopSouth; }];
            goNorth= RBVeh addAction ["Order To Turn Around", { hint "Are you kidding me? But...that's where I CAME from!"; [] call DoExitStopNorth; }];
        };
    };
};

RemAllAct = {
    removeAllActions RBVeh;
    removeAllActions RBVehD;
};

DoExitStopSouth = {
    // Remove Options from Vehicle (Encounter Complete)
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];

    // Get fucking going...
    [RBVeh] joinSilent (group Sam);
    RBVeh doMove (getMarkerPos "RBStage2");

    // Add to missions passed counter
    sleep 10;
    ManType = "M5";
    publicVariable "ManType";
    sleep 5;
    deleteVehicle RBVeh;
    deleteVehicle RBVehD;
};

DoExitStopNorth = {
    // Remove Options from Vehicle (Encounter Complete)
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];

    // Get fucking going...
    [RBVeh] joinSilent (group hector);
    RBVeh doMove (getMarkerPos "RBStage1");

    // Add to missions passed counter
    sleep 10;
    ManType = "M5";
    publicVariable "ManType";
    sleep 5;
    deleteVehicle RBVeh;
    deleteVehicle RBVehD;
};

A3M_fnc_JRB_jailtrigger = {
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];
    deleteVehicle RBVeh;
    MJMP = createTrigger ["EmptyDetector", getMarkerPos "AAF_Jail"];
    MJMP setTriggerArea [15, 15, 0, false];
    MJMP setTriggerActivation ["ANY", "PRESENT", true];
    MJMP setTriggerType "NONE";
    MJMP setTriggerStatements ["RBVehD in ThisList", "[] call A3M_fnc_JRB_booked", ""];
    MoveToJail = MJMP;
    publicVariable "MoveToJail";
    // [ '','A3M_fnc_jailtask',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_fnc_JRB_jailtask"];
};

A3M_JRB_Booked_MP = {
    hint "Prisoner has been booked into Altian Police Custody. Thank you!";
    ALTEscort setTaskState "Succeeded";
    playMusic "Success";
    ManType = "M0";
};

A3M_fnc_JRB_booked = {
    RBVehD setPos (getMarkerPos "AAF_Jail");
    deleteVehicle MoveToJail;
    ManType = "M5";
    publicVariable "ManType";
    deleteVehicle RBVehD;
    // ['','A3M_Booked_MP',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_JRB_Booked_MP"];
};

A3M_fnc_JRB_jailtask = {
    deleteVehicle RBVeh;
    hint "Suspect's Vehicle has been Impounded";
    ALTEscort=player createSimpleTask ["Escort Prisoner to Altian Jail"];
    ALTEscort setSimpleTaskDescription ["Escort the Altian Law Breaker to Altian Jail.", "Jail Transport", "Altian Jail"];
    ALTEscort setSimpleTaskDestination (getMarkerPos "AAF_Jail");
    ALTEscort setTaskState "Assigned";
    player setCurrentTask ALTEscort;
    playMusic "Assigned";
    ["TaskAssigned", ["Escort the law breaker to jail."]] call BIS_fnc_showNotification;
    RBVehD addAction ["Fast Transport", { [] call A3M_fnc_JRB_booked }];
};

A3M_FNC_JRB_PRISMP = {
    ["TaskFailed", ["The prisoner has been killed in custody."]] call BIS_fnc_showNotification;
    ALTEscort setTaskState "Failed";
    ManType = "M0";
};

A3M_FNC_JRB_CIVMP = {
    removeAllActions RBVeh;
    ["TaskFailed", ["The Driver has been killed."]] call BIS_fnc_showNotification;
    hint "This is a major civil rights violation. Expect backlash! ";
    ManType = "M0";
};

A3M_fnc_JRB_TerrMP = {
    ["TaskDone", ["The Terrorist has been killed."]] call BIS_fnc_showNotification;
    hint "The terrorist has been neutralized. Great Job. The shooting was in policy, and the terrorist was killed before he could detonate a very lethal bomb.";
    ManType = "M0";
};

A3M_fnc_JRB_CRIMMP = {
    ["InformationRed", ["The suspect has been neutralized."]] call BIS_fnc_showNotification;
    hint "The shooting will come under investigation by command staff, but for your moral sake, we hope it was an in policy shooting. You know the truth in your heart.";
    ManType = "M0";
};

A3M_fnc_JRB_rbMissionEnd = {
    if (CheckPointActive == 1) then {
        ["TaskDone", ["Checkpoint Duty Shift Completed."]] call BIS_fnc_showNotification;
        ["ScoreAdded", ["Performed Checkpoint Shift", 1500]] call BIS_fnc_showNotification;
        ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $150,000.00"]] call BIS_fnc_showNotification;

        hint format ["Checkpoint Duty Complete. \n \n You had %1 Rights Violation Complaints. \n ~ Altis Government HR", RightsViols];
        RBduty2 setTaskState "Succeeded";
        player addRating 1500;
    };

    CheckpointActive = 0;
    MissionActive = 0;

    [] call coroner;
    sleep 2;

    if (isServer) then {
        B_DefenseBudget = (B_DefenseBudget + 150000);
        publicVariable "B_DefenseBudget";
    };

    player setCurrentTask CO1;
};

A3M_mp_JC_chkpt = {
    if (isServer) then {
        if isNil "MissionActive" then {
            MissionActive = 0;
            publicVariable "MissionActive";
        };

        if (MissionActive == 0) then {
            MissionActive = 1;
            publicVariable "MissionActive";

            if (isNil "CheckpointActive") then { CheckpointActive = 0 };
            if (CheckpointActive == 0) then {

                CheckpointActive = 1;
                publicVariable "CheckpointActive";

                RightsViols = 0;
                publicVariable "RightsViols";

                MissionsPassed = 0;
                publicVariable "MissionsPassed";

                remoteExecCall ["A3M_fnc_JRB_RoadBlock"];
                };
        } else {
            systemChat "A Mission of this type is already active, and cannot be duplicated."
        };
    } else {
        systemChat "A Checkpoint Mission has been activated."
    };
};
// End of Roadblock Debacle. Seriously, at some point, I need to re-write this with what I know now. The checkpoint was a helluva learning experience in it's time, and now, It's time to update it. Soon...Soon.
