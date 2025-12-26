A3M_JVIPSec_SpeechWinTrigger = {
    RTBtrg= createTrigger ["EmptyDetector", getMarkerPos "BA"];
    RTBtrg setTriggerArea [30, 30, 0, false];
    RTBtrg setTriggerActivation ["Any", "PRESENT", false];
    RTBtrg setTriggerType "NONE";
    RTBtrg setTriggerStatements ["SpeechVIP in thisList", "remoteExecCall ['A3M_JVIPSec_SpeechMissionComplete', 2];", ""];
};

A3M_JVIPSec_VIPLifeMon = {
    VIPLife= createTrigger ["EmptyDetector", getMarkerPos SpeechPos];
    VIPLife setTriggerArea [0, 0, 0, false];
    VIPLife setTriggerActivation ["ANY", "PRESENT", true];
    VIPLife setTriggerType "NONE";
    VIPLife setTriggerStatements ["!alive SpeechVIP", "[] spawn A3M_fnc_JVIPSec_VIPLifeMon", ""];
};

A3M_JVIPSec_PresenceDetector = {
    PDtrg= createTrigger ["EmptyDetector", getMarkerPos SpeechPos];
    PDtrg setTriggerArea [30, 30, 0, false];
    PDtrg setTriggerActivation ["WEST", "PRESENT", false];
    PDtrg setTriggerType "NONE";
    PDtrg setTriggerStatements ["this", "[] spawn A3M_fnc_JVIPSec_PresenceDetector", ""];
};

A3M_fnc_JVIPSec_PresenceDetector = {
    remoteExecCall ["A3M_MP_JVIPSec_SpeechSetup1"];
    sleep 60;
    remoteExecCall ["A3M_MP_JVIPSec_SpeechSetup2"];
    sleep 60;
    remoteExecCall ["A3M_MP_JVIPSec_SpeechSetup3"];
    SpeechScene = 1;
    publicVariable "SpeechScene"
};

A3M_fnc_JVIPSec_VIPLifeMon = {
    remoteExecCall ["A3M_JVIPSec_DignitaryKilled", 2];
};

A3M_JVIPSec_SetSniperGroupInit = {
    // Assign behavior to Sniper's Group
    RSniperGroup setFormation 'WEDGE';
    RSniperGroup setCombatMode 'GREEN';
    RSniperGroup setBehaviour 'COMBAT';
    RSniperGroup setSpeedMode 'NORMAL';
};

A3M_JVIPSec_DgntrySec = {
    // Randomly select a Speech Venue...
    SpeechPosArray = ["SpeechPos1","SpeechPos2","SpeechPos3"];
    SpeechPos = SpeechPosArray select floor random count SpeechPosArray;
    // Debug - force pick a certain city...Comment out line above, and uncomment line below to use.
    //SpeechPos = "SpeechPos3";
    // PV The Speech Position, so task can be created on all machines.
    publicVariable "SpeechPos";


    // Select Random Speech Audio
    SpeechArray = ["A3M_Speech1", "A3M_Speech2", "A3M_Speech3"];
    SpeechAudio = SpeechArray select floor random count SpeechArray;
    publicVariable "SpeechAudio";

    // Create Speech Sound Source at Pos (In logic, so interruptable)
    _center = createCenter sideLogic;
    _group = createGroup _center;
    "LOGIC" createUnit [getMarkerPos SpeechPos, _group, "LogicSnd = this;"];

    // Create the speech venue at the randomly selected position...
    switch (SpeechPos) do {
        case "SpeechPos1": {
            // Populate Athira Speech / Stage
            PopulateAthira = [] spawn A3M_JVIPSec_PopAthira;
            waitUntil { scriptDone PopulateAthira };

            // Create Trigger to handle VIP Death
            [] spawn A3M_JVIPSec_VIPLifeMon;

            // Create Trigger to detect player presence
            [] spawn A3M_JVIPSec_PresenceDetector;

            // Create MP Task
            remoteExecCall ["A3M_MP_JVIPSec_SpeechTask"];

            // Add Dignitary Control Actions
            remoteExecCall ["A3M_MP_JVIPSec_VIPActions"];

            // Create Enemy Activity / behavior and chances / probability.
            // Create Random Chance Array
            _RandomChanceArray = [1,0,0,1,0,0,1,0,0,1,0,0];

            // Try Random Event: Sniper
            SniperSel = _RandomChanceArray select floor random count _RandomChanceArray;

            // Debug - Force Sniper Presence | Comment out the above line, and uncomment the line below...
            //SniperSel = 1;

            // If SniperSel is 1 (Random Chance of Sniper is in the green zone)
            if (SniperSel == 1) then {
                SniperEscaped = 0;
                // Create Group to spawn In Sniper
                RSniperGroup = createGroup EAST;

                // Select a random position for the sniper
                _RandomSniperPosArray = ["Pos1", "Pos2", "Pos3"];
                _SniperPos = _RandomSniperPosArray select floor random count _RandomSniperPosArray;

                // Create the sniper at the randomized position
                switch (_SniperPos) Do {
                    case "Pos1": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [13915.2,18603.7,0.00143433], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 283.792;
                        RSniper setDir 283.792;
                        RSniper setPosASL [13915.2,18603.7,23.755];
                    };
                    case "Pos2": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_sard_F', [13904.5,18657.5,0.00143814], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 244.903;
                        RSniper setDir 244.903;
                        RSniper setPosASL [13904.5,18657.5,24.5866];
                    };
                    case "Pos3": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_sard_F', [13953.7,18626.8,0.00143814], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 268.818;
                        RSniper setDir 268.818;
                        RSniper setPosASL [13953.7,18626.8,26.605];
                    };
                };
                // Define Snipers behavior at group level
                [] spawn A3M_JVIPSec_SetSniperGroupInit;
            };

            // Wait Until Players Get To Scene...
            waitUntil { SpeechScene == 1 };

            // Begin Speech Cinematic for all players
            remoteExecCall ["A3M_MP_JVIPSec_HandleSpeech"];

            // Debug Line - Sniper Present Message
            //if (alive RSniper) then { hint "Sniper present" };
            if (SniperSel == 1) then {
                // Ranomd amount of seconds sniper will wait before popping up to fire.
                _RandomWaitArray = [10,15,30,45,50,55,60,70,80,90,100,105];
                _HideWaitTime = _RandomWaitArray select floor random count _RandomWaitArray;

                // Random Time spent Aiming at target. This is your chance to kill him before he kills the dignitary!
                _RandomAimTimeArray = [5,7,9,12,15,17,20];
                _AimTime = _RandomAimTimeArray select floor random count _RandomAimTimeArray;

                // Sniper will lie in wait for a while...random time...
                sleep _HideWaitTime;
                // Sniper will pop up and take aim for a random about of time...see him and shoot him!
                RSniper setUnitPos "UP";
                RSniperGroup setCombatMode 'YELLOW';
                RSniper doWatch SpeechVIP;
                RSniper doTarget SpeechVIP;
                // Sniper will spend a short, randomized about of time aiming...
                sleep _AimTime;
                // Pull the trigger
                RSniper doFire SpeechVIP;
                // Keep firing until the target is dead or sniper is.
                waitUntil { !alive SpeechVIP };
                // Once target is down, get the fuck down yourself...
                RSniper setUnitPos "DOWN";
                // Quick hide out...
                sleep 2;
                RSniper setUnitPos "AUTO";
                // Begin E&E
                _wp1 = RSniperGroup addWaypoint [getMarkerPos "AP_EE", 1];
                _wp1 setWaypointType "MOVE";
                _wp1 setWaypointBehaviour "STEALTH";
                _wp1 setWaypointSpeed "FULL";

                // Create Trigger to handle sniper's escape.
                SniperEsc = createTrigger ["EmptyDetector", getMarkerPos "AP_EE"];
                SniperEsc setTriggerArea [20, 20, 0, false];
                SniperEsc setTriggerActivation ["ANY", "PRESENT", true];
                SniperEsc setTriggerType "NONE";
                SniperEsc setTriggerStatements ["RSniper in thisList;", "remoteExecCall ['A3M_JVIPSec_SniperEscaped', 2];", ""];
            };

            // Wait for end of Speech Cinematic
            waitUntil { SpeechScene == 0 };

            if (SpeechInterrupt == 0) then {
                SpeechInterrupt = 2;
                publicVariable "SpeechInterrupt";
                remoteExecCall ["A3M_MP_JVIPSec_SpeechExTask"];
                [] spawn A3M_JVIPSec_SpeechWinTrigger;
                deleteVehicle LogicSnd;
            };

            // Cinematic Wait - Cleanup
            sleep 60;
            { deleteVehicle _x } forEach AthiraObjArray;
        };
        case "SpeechPos2": {
            PopulateZaros = [] spawn A3M_JVIPSec_PopZaros;
            waitUntil { scriptDone PopulateZaros };

            // Create Trigger to handle VIP Death
            [] spawn A3M_JVIPSec_VIPLifeMon;

            // Create Trigger to detect player presence
            [] spawn A3M_JVIPSec_PresenceDetector;

            // Create Speech Task for All
            remoteExecCall ["A3M_MP_JVIPSec_SpeechTask"];

            // Add Dignitary Control Actions
            remoteExecCall ["A3M_MP_JVIPSec_VIPActions"];

            // Create Enemy Activity / behavior and chances / probability.
            // Create Random Chance Array
            _RandomChanceArray = [1,0,0,1,0,0,1,0,0,1,0,0];

            // Try Random Event: Sniper
            SniperSel = _RandomChanceArray select floor random count _RandomChanceArray;
            // Debug - Force Sniper Presence | Comment out the above line, and uncomment the line below...
            //SniperSel = 1;

            // If SniperSel is 1 (Random Chance of Sniper is in the green zone)
            if (SniperSel == 1) then {
                SniperEscaped = 0;
                // Create Group to spawn In Sniper
                RSniperGroup = createGroup EAST;

                // Select a random position for the sniper
                _RandomSniperPosArray = ["Pos1", "Pos2", "Pos3"];
                _SniperPos = _RandomSniperPosArray select floor random count _RandomSniperPosArray;

                // Create the sniper at the randomized position
                switch (_SniperPos) Do {
                    case "Pos1": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [9157.34,11985.9,0.00143814], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 97.6961;
                        RSniper setDir 97.6961;
                        RSniper SetPosASL [9157.34,11985.9,21.3355];
                    };
                    case "Pos2": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_lsh_F', [8951.42,11864.5,0.0022583], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 63.496;
                        RSniper setDir 63.496;
                        RSniper setPosASL [8951.42,11864.5,67.5487];
                    };
                    case "Pos3": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [9037.31,12180.7,0.00154877], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 132.317;
                        RSniper setDir 132.317;
                        RSniper setPosASL [9037.31,12180.7,49.9316];
                    };
                };

                // Define Snipers behavior at group level
                [] spawn A3M_JVIPSec_SetSniperGroupInit;
            };

            // Wait Until Players Get To Scene...
            waitUntil { SpeechScene == 1 };

            // Begin Speech Cinematic for all players
            remoteExecCall ["A3M_MP_JVIPSec_HandleSpeech"];

            // Debug Line - Sniper Present
            //if (alive RSniper) then { hint "Sniper present" };
            if (SniperSel == 1) then {
                // Ranomd amount of seconds sniper will wait before popping up to fire.
                _RandomWaitArray = [10,15,30,45,50,55,60,70,80,90,100,105];
                _HideWaitTime = _RandomWaitArray select floor random count _RandomWaitArray;

                // Random Time spent Aiming at target. This is your chance to kill him before he kills the dignitary!
                _RandomAimTimeArray = [5,7,9,12,15,17,20];
                _AimTime = _RandomAimTimeArray select floor random count _RandomAimTimeArray;

                // Sniper will lie in wait for a while...random time...
                sleep _HideWaitTime;
                // Sniper will pop up and take aim for a random about of time...see him and shoot him!
                RSniper setUnitPos "UP";
                RSniperGroup setCombatMode 'YELLOW';
                RSniper doWatch SpeechVIP;
                RSniper doTarget SpeechVIP;
                // Sniper will spend a short, randomized about of time aiming...
                sleep _AimTime;
                // Pull the trigger
                RSniper doFire SpeechVIP;
                // Keep firing until the target is dead or sniper is.
                waitUntil { !alive SpeechVIP };
                // Once target is down, get the fuck down yourself...
                RSniper setUnitPos "DOWN";
                // Quick hide out...
                sleep 2;
                RSniper setUnitPos "AUTO";
                // Begin E&E
                _wp1 = RSniperGroup addWaypoint [getMarkerPos "ZP_EE", 1];
                _wp1 setWaypointType "MOVE";
                _wp1 setWaypointBehaviour "STEALTH";
                _wp1 setWaypointSpeed "FULL";

                // Create Trigger to handle sniper's escape.
                SniperEsc = createTrigger ["EmptyDetector", getMarkerPos "ZP_EE"];
                SniperEsc setTriggerArea [20, 20, 0, false];
                SniperEsc setTriggerActivation ["ANY", "PRESENT", true];
                SniperEsc setTriggerType "NONE";
                SniperEsc setTriggerStatements ["RSniper in thisList;", "remoteExecCall ['A3M_JVIPSec_SniperEscaped', 2];", ""];
            };

            // Wait for end of Speech Cinematic
            waitUntil { SpeechScene == 0 };

            if (SpeechInterrupt == 0) then {
                SpeechInterrupt = 2;
                publicVariable "SpeechInterrupt";
                remoteExecCall ["A3M_MP_JVIPSec_SpeechExTask"];
                [] spawn A3M_JVIPSec_SpeechWinTrigger;
                deleteVehicle LogicSnd;
            };

            // Cinematic Wait - Cleanup
            sleep 60;
            { deleteVehicle _x } forEach ZarosObjArray;
        };
        case "SpeechPos3": {
            PopulatePyrgos = [] spawn A3M_JVIPSec_PopPyrgos;
            waitUntil { scriptDone PopulatePyrgos };

            // Create Trigger to handle VIP Death
            [] spawn A3M_JVIPSec_VIPLifeMon;

            // Create Trigger to detect player presence
            [] spawn A3M_JVIPSec_PresenceDetector;

            // Create Speech Task for All Players
            remoteExecCall ["A3M_MP_JVIPSec_SpeechTask"];

            // Add Dignitary Control Actions
            remoteExecCall ["A3M_MP_JVIPSec_VIPActions"];

            // Create Enemy Activity / behavior and chances / probability.
            // Create Random Chance Array
            _RandomChanceArray = [1,0,0,1,0,0,1,0,0,1,0,0];

            // Try Random Event: Sniper
            SniperSel = _RandomChanceArray select floor random count _RandomChanceArray;
            // Debug - Force Sniper Presence | Comment out the above line, and uncomment the line below...
            //SniperSel = 1;

            // If SniperSel is 1 (Random Chance of Sniper is in the green zone)
            if (SniperSel == 1) then {
                SniperEscaped = 0;
                // Create Group to spawn In Sniper
                RSniperGroup = createGroup EAST;

                // Select a random position for the sniper
                _RandomSniperPosArray = ["Pos1", "Pos2", "Pos3"];
                _SniperPos = _RandomSniperPosArray select floor random count _RandomSniperPosArray;

                // Create the sniper at the randomized position
                switch (_SniperPos) Do {
                    case "Pos1": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [16556,12614.3,0.00143814], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 185.415;
                        RSniper setDir 185.415;
                        RSniper setPosASL [16556,12614.3,28.781];
                    };
                    case "Pos2": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [16506.2,12627.5,0.000407219], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 157.122;
                        RSniper setDir 157.122;
                        RSniper setPosASL [16506.2,12627.5,8.33457];
                    };
                    case "Pos3": {
                        RSniper = RSniperGroup createUnit ['O_ghillie_ard_F', [16360.4,12464.9,0.00142169], [], 0, 'CAN_COLLIDE'];
                        RSniper setSkill 0.9;
                        RSniper setRank 'PRIVATE';
                        RSniper setFormDir 53.7248;
                        RSniper setDir 53.7248;
                        RSniper setPosASL [16360.4,12464.9,2.2984];
                    };
                };

                // Define Snipers behavior at group level
                [] spawn A3M_JVIPSec_SetSniperGroupInit;
            };

            // Wait Until Players Get To Scene...
            waitUntil { SpeechScene == 1 };

            // Begin SPeech Cinematic for all players
            remoteExecCall ["A3M_MP_JVIPSec_HandleSpeech"];

            // Debug Line - Sniper Present
            // if (alive RSniper) then { hint "Sniper present" };
            if (SniperSel == 1) then {
                // Ranomd amount of seconds sniper will wait before popping up to fire.
                _RandomWaitArray = [10,15,30,45,50,55,60,70,80,90,100,105];
                _HideWaitTime = _RandomWaitArray select floor random count _RandomWaitArray;

                // Random Time spent Aiming at target. This is your chance to kill him before he kills the dignitary!
                _RandomAimTimeArray = [5,7,9,12,15,17,20];
                _AimTime = _RandomAimTimeArray select floor random count _RandomAimTimeArray;

                // Sniper will lie in wait for a while...random time...
                sleep _HideWaitTime;
                // Sniper will pop up and take aim for a random about of time...see him and shoot him!
                RSniper setUnitPos "UP";
                RSniperGroup setCombatMode 'YELLOW';
                RSniper doWatch SpeechVIP;
                RSniper doTarget SpeechVIP;
                // Sniper will spend a short, randomized about of time aiming...
                sleep _AimTime;
                // Pull the trigger
                RSniper doFire SpeechVIP;
                // Keep firing until the target is dead or sniper is.
                waitUntil { !alive SpeechVIP };
                // Once target is down, get the fuck down yourself...
                RSniper setUnitPos "DOWN";
                // Quick hide out...
                sleep 2;
                RSniper setUnitPos "AUTO";
                // Begin E&E
                _wp1 = RSniperGroup addWaypoint [getMarkerPos "PS_EE", 1];
                _wp1 setWaypointType "MOVE";
                _wp1 setWaypointBehaviour "STEALTH";
                _wp1 setWaypointSpeed "FULL";

                // Create Trigger to handle sniper's escape.
                SniperEsc= createTrigger ["EmptyDetector", getMarkerPos "PS_EE"];
                SniperEsc setTriggerArea [20, 20, 0, false];
                SniperEsc setTriggerActivation ["ANY", "PRESENT", true];
                SniperEsc setTriggerType "NONE";
                SniperEsc setTriggerStatements ["RSniper in thisList", "remoteExecCall ['A3M_JVIPSec_SniperEscaped', 2];", ""];
            };

            // Wait for end of Speech Cinematic
            waitUntil {SpeechScene == 0};

            if (SpeechInterrupt == 0) then {
                SpeechInterrupt = 2;
                publicVariable "SpeechInterrupt";
                remoteExecCall ["A3M_MP_JVIPSec_SpeechExTask"];
                [] spawn A3M_JVIPSec_SpeechWinTrigger;
                deleteVehicle LogicSnd;
            };

            // Cinematic Wait - Cleanup
            sleep 60;
            { deleteVehicle _x } forEach PyrgosObjArray;
        };
    };
};

A3M_JVIPSec_SniperEscaped = {
    remoteExecCall ["A3M_MP_JVIPSec_SniperEsc"];

    SniperEscaped = 1;

    if (alive RSniper) then { deleteVehicle RSniper };
    deleteVehicle SniperEsc;

    if (!alive SpeechVIP) then { deleteVehicle SpeechVIP };
};

A3M_JVIPSec_DignitaryKilled = {
    SpeechInterrupt  = 4;
    publicVariable "SpeechInterrupt";

    deleteVehicle VIPLife;
    deleteVehicle LogicSnd;

    if (!isnil RTBtrg) then { deleteVehicle RTBtrg };

    SpeechScene = 0;
    publicVariable "SpeechScene";

    remoteExecCall ["A3M_MP_JVIPSec_DVSTaskFailed"];
    remoteExecCall ["A3M_MP_JVIPSec_CrowdPanic"];
    [SpeechVIP, "DefaultDieA3"] remoteExecCall ["switchMoveEverywhere"];

    sleep 120;

    SniperSel = nil;
    SpeechAudio = nil;
    SpeechPos = nil;
    SniperEscaped = nil;
    SpeechInterrupt = nil;

    SpeechActive = 0;
    publicVariable "SpeechActive";

    deleteVehicle SpeechVIP;

    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_JVIPSec_VIPFiredEH = {
    SpeechVIP addEventHandler ["FiredNear", {
        if (SpeechInterrupt == 0) then {
            SpeechInterrupt = 3;
            publicVariable "SpeechInterrupt";
            deleteVehicle LogicSnd;
            remoteExecCall ["A3M_MP_JVIPSec_SpeechInterrupt"];
            SpeechVIP disableAI "anim";
            [SpeechVIP, "AmovPercMstpSnonWnonDnon_Scared2"] remoteExecCall ["switchMoveEverywhere"];
        };
        SpeechVIP removeEventHandler ["FiredNear", 0];
    }];
};

A3M_JVIPSec_SpeechMissionComplete = {
    deleteVehicle VIPLife;
    deleteVehicle RTBtrg;

    switch (SpeechInterrupt) do {
        // The Dignitary was manually interrupted, and was unable to deliver his full speech
        case 1: {
            Jackpot = 0;

            if (isNil "SniperEscaped") then { SniperEscaped = 2 };
            if ((SniperEscaped == 0) AND (SniperSel == 1)) then {
                Jackpot = Jackpot + 250000;
                FNotes = "The dignitary was interrupted by one of your operatives. We appreciate that your team was able to eliminate a sniper threat. You may have saved the dignitary's life. Nevertheless, the speech wasn't fully delivered.";
            };
            if ((SniperEscaped == 1) AND (SniperSel == 1)) then {
                Jackpot = Jackpot + 150000;
                FNotes = "The dignitary was interrupted by one of your operatives. Your team was not able to eliminate a sniper threat confirmed to be in the area. You may have saved the dignitary's life, Nevertheless, the speech wasn't fully delivered.";
            };
            if (SniperEscaped == 2) then {
                FNotes = "The dignitary was interrupted by one of your operatives. We have no valid explanation of why you would do that. Was there a threat?  ";
            };

            // Fixed Payout + Jackpot or Penalty
            FJackpot = Jackpot + 1500000;

            B_DefenseBudget = (B_DefenseBudget + Jackpot);
            publicVariable "B_DefenseBudget";
            publicVariable "FJackpot";
            publicVariable "FNotes";
            remoteExecCall ["A3M_MP_JVIPSec_SpeechMissionComplete"];
        };

        // All threats were efficiently contained so as to allow the speech to complete without incident.
        case 2: {
            Jackpot = 0;

            if (isNil "SniperEscaped") then { SniperEscaped = 2 };
            if ((SniperEscaped == 0) AND (SniperSel == 1)) then {
                Jackpot = Jackpot + 500000;
                FNotes = "The dignitary was able to deliver his speech without interruptions. We appreciate that your team was able to eliminate a sniper threat. You may have saved the dignitary's life. Great job!";

            };
            if ((SniperEscaped == 1) AND (SniperSel == 1)) then {
                Jackpot = Jackpot + 250000;
                FNotes = "The dignitary was able to deliver his speech without interruptions. Intelligence states there was a sniper in the area, but his attempt to assassinate the dignitary was foiled. Nevertheless, the sniper escaped your forces.";
            };
            if (SniperEscaped == 2) then {
                Jackpot = Jackpot + 50000;
                FNotes = "Our dignitary was able to deliver his speech without incident. Thank you for providing great security.";
            };

            // Fixed Interruption Penalty
            // Fixed Payout + Jackpot or Penalty
            FJackpot = Jackpot + 1500000;

            B_DefenseBudget = (B_DefenseBudget + FJackpot);
            publicVariable "B_DefenseBudget";
            publicVariable "FJackpot";
            publicVariable "FNotes";
            remoteExecCall ["A3M_MP_JVIPSec_SpeechMissionComplete"];
        };

        // The dignitary was shot at, or the speech was interrupted by fighting or gunfire
        case 3: {
            Jackpot = 0;

            if (isNil "SniperEscaped") then { SniperEscaped = 2 };
            if ((SniperEscaped == 0) AND (SniperSel == 1)) then {
                Jackpot = (Jackpot + 500000);
                FNotes = "The dignitary was fired upon, or carelessly caught in gunplay. We appreciate that your team was able to eliminate a sniper threat. You may have saved the dignitary's life. Nevertheless, the dignitary will suffer from PTSD.";
            };
            if ((SniperEscaped == 1) AND (SniperSel == 1)) then {
                Jackpot = (Jackpot + 150000);
                FNotes = "The dignitary was fired upon, or carelessly caught in gunplay. Intelligence states there was a sniper in the area, but his attempt to assassinate the dignitary was foiled. Nevertheless, the sniper escaped your forces.";
            };
            if (SniperEscaped == 2) then {
                FNotes = "Our dignitary was fired upon by one of your operatives, or put in a dangerous position for no reason. OPSG is hereby terminated from this contract without pay.";
                Jackpot = -1500000;
            };

            // Fixed Payout + Jackpot or Penalty
            FJackpot = Jackpot + 1500000;

            B_DefenseBudget = (B_DefenseBudget + FJackpot);
            publicVariable "B_DefenseBudget";
            publicVariable "FJackpot";
            publicVariable "FNotes";
            remoteExecCall ["A3M_MP_JVIPSec_SpeechMissionComplete"];
        };
    };

    SniperSel = nil;
    SpeechAudio = nil;
    SpeechPos = nil;
    SniperEscaped = nil;
    SpeechInterrupt = nil;

    SpeechActive = 0;
    publicVariable "SpeechActive";

    deleteVehicle SpeechVIP;

    MissionStatus = "M0";
    publicVariable "MissionStatus";
};

A3M_MP_JVIPSec_VIPActions = {
    APAct1 = SpeechVIP addAction ["Get Down!", {
        if (SpeechInterrupt == 0) then { remoteExecCall ["A3M_MP_JVIPSec_SpeechInterrupt"]; };
        [player] remoteExecCall ["A3M_MP_JVIPSec_GetDown"];
        SpeechVIP disableAI "anim";
        [SpeechVIP, "AmovPercMstpSnonWnonDnon_Scared2"] remoteExecCall ["switchMoveEverywhere"];
        sleep 3;
        SpeechVIP enableAI "anim";
    }];

    APAct2 = SpeechVIP addAction ["Follow Me!", {
        if (SpeechInterrupt == 0) then {
            remoteExecCall ["A3M_MP_JVIPSec_SpeechInterrupt"];
            [SpeechVIP, "AmovPercMstpSnonWnonDnon"] remoteExecCall ["switchMoveEverywhere"];
            SpeechVIP enableAI "anim";
        };

        if ((SpeechInterrupt == 3) OR (SpeechInterrupt == 2)) then {
            SpeechVIP enableAI "anim";
        };

        [player] remoteExecCall ["A3M_MP_JVIPSec_KYHD"];
        [SpeechVIP] join (group player);
    }];

	waitUntil { !alive SpeechVIP };
	SpeechVIP removeAction APAct1;
	SpeechVIP removeAction APAct2;
};

A3M_MP_JVIPSec_SpeechTask = {
    playMusic "Assigned";
    ["TaskAssigned", ["Dignitary Venue Security"]] call BIS_fnc_showNotification;
    DVSTask = player createSimpleTask ["Dignitary Speech Venue"];
    DVSTask setSimpleTaskDescription ["Proceed to the Dignitary's venue location and set up security for the dignitary. Be sure to consider all possible threats and maintain balance between security and the dignitaries ability to interact with his public.", "Perform Security Detail at Dignitary Venue", "Venue"];
    DVSTask setSimpleTaskDestination (getMarkerPos SpeechPos);
    DVSTask setTaskState "Assigned";
    player setCurrentTask DVSTask;
    titleText ["The dignitary is about to take the stage! Hurry and get to the venue location. See map for details.", "PLAIN DOWN"];
};

A3M_MP_JVIPSec_DVSTaskFailed = {
    DVSTask setTaskState "Failed";
    if (!isNil DVSTask2) then { DVSTask2 setTaskState "Failed" };
    playMusic "Failure";
    ["TaskFailed", ["OPSG has allowed the Dignitary to be assassinated."]] call BIS_fnc_showNotification;
    player addRating -500;
    ["InformationRed", ["You have lost -500 RP: Dignitary Killed."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JVIPSec_HandleSpeech = {
    // Create anims, speech time...`
    switch (SpeechAudio) do {
        // 165 Seconds
        case "A3M_Speech1": {
            SpeechInterrupt = 0;
            LogicSnd say3D "A3M_Speech1";
            [170] spawn A3M_MP_JVIPSec_HandleSpeechAnims;
        };
        // 1029 Seconds
        case "A3M_Speech2": {
            SpeechInterrupt = 0;
            LogicSnd say3D "A3M_Speech2";
            [1010] spawn A3M_MP_JVIPSec_HandleSpeechAnims;
        };
        // XXX Seconds
        case "A3M_Speech3": {
            SpeechInterrupt = 0;
            LogicSnd say3D "A3M_Speech3";
            [170] spawn A3M_MP_JVIPSec_HandleSpeechAnims;
        };
    };
};

A3M_MP_JVIPSec_HandleSpeechAnims = {
    SpeechTime = _this select 0;
    Interim = (SpeechTime / 2);
    SpeechVIP disableAI "Anim";

    // SpeechVIP say3D SpeechAudio;
    [SpeechVIP, "Acts_B_out2_briefing"] remoteExecCall ["switchMoveEverywhere"];
    sleep Interim;

    if ((alive SpeechVIP) AND (SpeechInterrupt == 0)) then {
        [SpeechVIP, "Acts_B_out2_briefing"] remoteExecCall ["switchMoveEverywhere"];
    };
    sleep Interim;

    if ((alive SpeechVIP) AND (SpeechInterrupt == 0)) then {
        [SpeechVIP, "Acts_starterPistol_fire"] remoteExecCall ["switchMoveEverywhere"];
        SpeechScene = 0;
        publicVariable "SpeechScene";
    };
};

A3M_MP_JVIPSec_CrowdPanic = {
    switch (SpeechPos) do {
        case "SpeechPos1": {
            if ((SpeechInterrupt == 0) AND (SpeechActive == 1)) then {
                AthiraStage say3D "A3M_CrowdPanic";
                AthiraStage say3D "A3M_StageDeath";
            };
        };
        case "SpeechPos2": {
            if ((SpeechInterrupt == 0) AND (SpeechActive == 1)) then {
                ZarosStage say3D "A3M_CrowdPanic";
                ZarosStage say3D "A3M_StageDeath";
            };
        };
        case "SpeechPos3": {
            if ((SpeechInterrupt == 0) AND (SpeechActive == 1)) then {
                PyrgosStage say3D "A3M_CrowdPanic";
                PyrgosStage say3D "A3M_StageDeath";
            };
        };
    };
};

A3M_MP_JVIPSec_SniperEsc = {
    playMusic "Failure";
    ["TaskFailed", ["OPSG has failed to stop a sniper's escape."]] call BIS_fnc_showNotification;
    player addRating -300;
    ["InformationRed", ["You have lost -300 RP for allowing the escape."]] call BIS_fnc_showNotification;
};

A3M_MP_JVIPSec_SpeechInterrupt = {
	if (SpeechInterrupt == 0) then { SpeechInterrupt = 1 };
	if (SpeechScene == 1) then { SpeechScene = 0 };
	deleteVehicle LogicSnd;
	DVSTask setTaskState "Failed";
	playMusic "Failure";
	["TaskFailed", ["OPSG has allowed the speech to be interrupted."]] call BIS_fnc_showNotification;
	player addRating -300;
	["InformationRed", ["You have lost -300 RP: Speech Interrupted."]] call BIS_fnc_showNotification;
	[] spawn A3M_MP_JVIPSec_SpeechExTask;
    remoteExecCall ["A3M_JVIPSec_SpeechWinTrigger", 2];
};

A3M_MP_JVIPSec_SpeechExTask = {
    ["TaskAssigned", ["Extract Dignitary"]] call BIS_fnc_showNotification;
    DVSTask2 = player createSimpleTask ["Extract Dignitary"];
    DVSTask2 setSimpleTaskDescription ["Extract the dignitary from the venue location to our HQ. Keep the dignitary alive at all costs.", "Extract Dignitary", "Protective RTB"];
    DVSTask2 setSimpleTaskDestination (getMarkerPos "BA");
    DVSTask2 setTaskState "Assigned";
    player setCurrentTask DVSTask2;
    titleText ["Extract the VIP - RTB", "PLAIN"];
};

A3M_MP_JVIPSec_SpeechMissionComplete = {
    Payout = FJackpot;
    Notes = FNotes;
    DVSTask2 setTaskState "Succeeded";
    ["TaskDone", ["OPSG has completed the contract."]] call BIS_fnc_showNotification;
    playMusic "Success";
    player addRating 2000;
    PayoutString = [Payout] call A3M_handle_number;
    hint format ["OPSG was paid %1 for this job, based on your performance. \n \n Notes were: %2", PayoutString, Notes];
    ["ScoreAdded", ["Dignitary Speech Complete!", 2000]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been funded."]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};

A3M_MP_JVIPSec_SpeechSetup1 = {
    ["InformationRed", ["Speech Starts: 2 Min"]] call BIS_fnc_showNotification;
    LogicSnd say3D "A3M_GNA";
};

A3M_MP_JVIPSec_SpeechSetup2 = {
    ["InformationRed", ["Speech Starts: 1 Min"]] call BIS_fnc_showNotification;
};

A3M_MP_JVIPSec_SpeechSetup3 = {
    ["InformationRed", ["Speech Is Starting Now."]] call BIS_fnc_showNotification;
};
