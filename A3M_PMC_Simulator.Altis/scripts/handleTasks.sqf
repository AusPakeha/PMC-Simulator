/*

  /$$$$$$   /$$$$$$  /$$      /$$       /$$$$$$$  /$$      /$$  /$$$$$$         /$$$$$$  /$$                         /$$             /$$
 /$$__  $$ /$$__  $$| $$$    /$$$      | $$__  $$| $$$    /$$$ /$$__  $$       /$$__  $$|__/                        | $$            | $$
| $$  \ $$|__/  \ $$| $$$$  /$$$$      | $$  \ $$| $$$$  /$$$$| $$  \__/      | $$  \__/ /$$ /$$$$$$/$$$$  /$$   /$$| $$  /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$
| $$$$$$$$   /$$$$$/| $$ $$/$$ $$      | $$$$$$$/| $$ $$/$$ $$| $$            |  $$$$$$ | $$| $$_  $$_  $$| $$  | $$| $$ |____  $$|_  $$_/   /$$__  $$ /$$__  $$
| $$__  $$  |___  $$| $$  $$$| $$      | $$____/ | $$  $$$| $$| $$             \____  $$| $$| $$ \ $$ \ $$| $$  | $$| $$  /$$$$$$$  | $$    | $$  \ $$| $$  \__/
| $$  | $$ /$$  \ $$| $$\  $ | $$      | $$      | $$\  $ | $$| $$    $$       /$$  \ $$| $$| $$ | $$ | $$| $$  | $$| $$ /$$__  $$  | $$ /$$| $$  | $$| $$
| $$  | $$|  $$$$$$/| $$ \/  | $$      | $$      | $$ \/  | $$|  $$$$$$/      |  $$$$$$/| $$| $$ | $$ | $$|  $$$$$$/| $$|  $$$$$$$  |  $$$$/|  $$$$$$/| $$
|__/  |__/ \______/ |__/     |__/      |__/      |__/     |__/ \______/        \______/ |__/|__/ |__/ |__/ \______/ |__/ \_______/   \___/   \______/ |__/


Email Based Mission Deployment System (EBDMS) V 1.2 by Cody Salazar AKA Fr33d0m
www.A3MilSim.com

License:
You can do whatever you were going to do anyway. Just give credit

BIS_fnc_MP:
// [params, functionName, target, isPersistent, isCall] call BIS_fnc_MP;
// ["","A3M_fnc_MyTask",true,false] call BIS_fnc_MP; | Call on all machines
// ["", A3M_fnc_MyTask", false, false, false] call BIS_fnc_MP; | Spawn Script only on server

################################## LET US BEGIN #################################### */

// Mission Functions below:
/*
A3M_msn_VIPEscort = {
    if (isNil "EscortActive") then { EscortActive = 0; };
    if (EscortActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // Create Random VIP Model (Contains Leights Opfor)
        RandomVIP = ["Astral_VIP_0","C_Nikos_aged","C_scientist_F" ];
        RandomVIPSel = RandomVIP select floor random count RandomVIP;

        // Create Randomly selected VIP
        RandomVIPSel createUnit [getMarkerPos "AIR_Spawn", group player, "VIP1 = this", 0.9, "COLONEL" ];

        // Call Server Side Scripting
        // ["", "A3M_Svr_VIPEscort",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_VIPEscort", 2];

        // Add VIP Control Actions to VIP for all players
        // [[VIP1],'A3M_MP_EscVIPCmds',true,false] call BIS_fnc_MP;
        [VIP1] remoteExecCall ["A3M_MP_EscVIPCmds"];
	} else {
		hint "An Escort Mission is currently active. You must wait until the escort mission is completed before you can start another";
    };
};
*/
A3M_msn_VIPEscort = {
    if (isNil "EscortActive") then { EscortActive = 0; };
    if (EscortActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // Create Random VIP Model
        RandomVIP = ["Astral_VIP_0","C_Nikos_aged","C_scientist_F" ];
        RandomVIPSel = RandomVIP select floor random count RandomVIP;

        // Create Randomly selected VIP
        RandomVIPSel createUnit [getMarkerPos "AIR_Spawn", group player, "VIP1 = this", 0.9, "COLONEL" ];

        // Call Server Side Scripting
        // ["", "A3M_Svr_VIPEscort",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_JVIPEscort_VIPEscort", 2];

        // Add VIP Control Actions to VIP for all players
        // [[VIP1],'A3M_MP_EscVIPCmds',true,false] call BIS_fnc_MP;
        [VIP1] remoteExecCall ["A3M_MP_EscVIPCmds"];
	} else {
		hint "An Escort Mission is currently active. You must wait until the escort mission is completed before you can start another";
    };
};

// Next Mission Set
// *********************#################***********************
/*
A3M_msn_TRKEscort = {
    if (isNil "ConvoyActive") then { ConvoyActive = 0; };
    if (ConvoyActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // _cunt = ["", "A3M_svr_TRKEscort",false,false,false] call BIS_fnc_MP;
        _cunt = remoteExecCall ["A3M_svr_TRKEscort", 2];
	} else {
		hint "A Convoy Mission is currently active. You must wait until the convoy mission is completed before you can start another.";
    };
};
*/

A3M_msn_TRKEscort = {
    if (isNil "ConvoyActive") then { ConvoyActive = 0; };
    if (ConvoyActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // _cunt = ["", "A3M_svr_TRKEscort",false,false,false] call BIS_fnc_MP;
        _cunt = remoteExecCall ["A3M_JC_TRKEscort", 2];
	} else {
		hint "A Convoy Mission is currently active. You must wait until the convoy mission is completed before you can start another.";
    };
};

// Next Mission Set
// *********************#################***********************
/*
A3M_msn_SandE = {
    if (isNil "SEActive") then { SEActive = 0; };
	if (SEActive == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_SandE",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_SandE", 2];
    } else {
        hint "A Snatch and Extract Mission is already in progress. You must wait until the current Snatch and Extract operation is completed before you can start";
    };
};
*/
A3M_msn_SandE = {
    if (isNil "SEActive") then { SEActive = 0; };
	if (SEActive == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_SandE",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_JSandE_SandE", 2];
    } else {
        hint "A Snatch and Extract Mission is already in progress. You must wait until the current Snatch and Extract operation is completed before you can start";
    };
};

// Next Mission Set
// *********************#################***********************
/*
A3M_msn_Raid1 = {
    if (isNil "Raid1Active") then { Raid1Active = 0; };
	if (Raid1Active == 0) then {
	    hint "Mission Accepted";
	    playSound "A3M_MissionAccepted";

	    // ["", "A3M_Svr_Raid1",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_Raid1", 2];
    } else {
        hint "A raid is currently underway. Contact your team coordinator for information and possible assignment on this objective.";
    };
};
*/
A3M_msn_Raid1 = {
    if (isNil "Raid1Active") then { Raid1Active = 0; };
	if (Raid1Active == 0) then {
	    hint "Mission Accepted";
	    playSound "A3M_MissionAccepted";

        remoteExecCall ["A3M_JR1_Raid1", 2];
    } else {
        hint "A raid is currently underway. Contact your team coordinator for information and possible assignment on this objective.";
    };
};
/*
A3M_msn_Raid2 = {
    if (isNil "Raid1Active") then { Raid1Active = 0; };
    if (Raid1Active == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_Raid2",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_Raid2", 2];
    } else {
        hint "A raid is currently underway. You may only conduct one raid at a time. Contact your team coordinator for information and possible assignment on this objective.";
    };

};
*/
A3M_msn_Raid2 = {
    if (isNil "Raid1Active") then { Raid1Active = 0; };
    if (Raid1Active == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_Raid2",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_JR2_Raid2", 2];
    } else {
        hint "A raid is currently underway. You may only conduct one raid at a time. Contact your team coordinator for information and possible assignment on this objective.";
    };

};
// Next Mission Set
// *********************#################***********************
/*
A3M_msn_reinforce = {
	if (isNil "NSARActive") then { NSARActive = 0; };
    if (NSARActive == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_reinforce",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_reinforce", 2];
    } else {
        hint "A NATO Extraction Support is currently underway. Contact your team coordinator for information and possible assignment on this objective.";
    };
};
*/
A3M_msn_reinforce = {
	if (isNil "NSARActive") then { NSARActive = 0; };
    if (NSARActive == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_Svr_reinforce",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_JNSAR_reinforce", 2];
    } else {
        hint "A NATO Extraction Support is currently underway. Contact your team coordinator for information and possible assignment on this objective.";
    };
};
// Next Mission Set
// *********************#################***********************
/*
A3M_msn_T9sec = {
    if (isNil "T9Active") then { T9Active = 0; };
    if (T9Active == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_svr_T9sec",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_svr_T9sec", 2];
    } else {
        hint "A security force is currently working a shift at the T9 facility. Contact your team coordinator for information and possible assignment on this objective.";
    };
};
*/
A3M_msn_T9sec = {
    if (isNil "T9Active") then { T9Active = 0; };
    if (T9Active == 0) then {
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // ["", "A3M_svr_T9sec",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_JT9sec_T9sec", 2];
    } else {
        hint "A security force is currently working a shift at the T9 facility. Contact your team coordinator for information and possible assignment on this objective.";
    };
};

// Next Mission Set
// *********************#################***********************

A3M_msn_Hden1 = {
    if (isNil "HRaidActive") then { HRaidActive = 0; };
    if (HRaidActive == 0) then {
        MissionStatus = "M9";
        publicVariable "MissionStatus";

        HRaidActive = 1;
        publicVariable "HRaidActive";
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        // Execute mission script
        remoteExecCall ["A3M_JHD_HackerRaid1", 2];
    } else {
        systemChat "A Mission of this type is already active, and cannot be duplicated.";
    };
};

// Next Mission Set
// *********************#################***********************
/*
A3M_msn_DgntrySec = {
    if (isNil "SpeechActive") then { SpeechActive = 0; };
    if (SpeechActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        MissionStatus = "M11";
        publicVariable "MissionStatus";

        SpeechActive = 1;
        publicVariable "SpeechActive";

        SpeechScene = 0;
        publicVariable "SpeechScene";

        // ["", "A3M_Svr_DgntrySec",false,false,false] call BIS_fnc_MP;
        remoteExecCall ["A3M_Svr_DgntrySec", 2];
    } else {
        hint "A Dignitary Speech Security assignment is currently active. You must wait until the current assignment is completed before you can start another.";
    };
};
*/
A3M_msn_DgntrySec = {
    if (isNil "SpeechActive") then { SpeechActive = 0; };
    if (SpeechActive == 0) then {
        // Bells and Whistles to signal mission accepted
        hint "Mission Accepted";
        playSound "A3M_MissionAccepted";

        MissionStatus = "M11";
        publicVariable "MissionStatus";

        SpeechActive = 1;
        publicVariable "SpeechActive";

        SpeechScene = 0;
        publicVariable "SpeechScene";

        // ["", "A3M_Svr_DgntrySec",false,false,false] call BIS_fnc_MP;
        ["", "A3M_JVIPSec_DgntrySec", 2, false, false] call BIS_fnc_MP;
    } else {
        hint "A Dignitary Speech Security assignment is currently active. You must wait until the current assignment is completed before you can start another.";
    };
};

// EOF
