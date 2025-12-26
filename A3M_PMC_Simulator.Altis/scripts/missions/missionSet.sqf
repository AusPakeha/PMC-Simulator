// mission script loads
    // Wait for mission completion, but time out after 30 minutes (1800 seconds)
    // private _missionCheckpoint = {};
    // private _missionMPCheckpoint = {};
    private _missionConvoy = {};
    private _missionHackDen = {};
    private _missionNSAR = {};
    private _missionRaid1 = {};
    private _missionRaid2 = {};
    private _missionSandE = {};
    private _missionT9Sec = {};
    private _missionVIPEscort = {};
    private _missionVIPSec = {};

    // _missionCheckpoint = execVM "scripts\missions\job_checkpoint\mission_checkpoint.sqf";
    // waitUntil { scriptDone _missionCheckpoint };

    // _missionMPCheckpoint = execVM "scripts\missions\job_checkpoint\mission_mp_checkpoint.sqf";
    // waitUntil { scriptDone _missionMPCheckpoint };

    _missionConvoy = execVM "scripts\missions\job_convoy\mission_convoy.sqf";
    waitUntil { scriptDone _missionConvoy };

    _missionHackDen = execVM "scripts\missions\job_hackDen\mission_hackDen.sqf";
    waitUntil { scriptDone _missionHackDen };

    _missionNSAR = execVM "scripts\missions\job_NSAR\mission_NSAR.sqf";
    waitUntil { scriptDone _missionNSAR };

    _missionRaid1 = execVM "scripts\missions\job_raid1\mission_raid1.sqf";
    waitUntil { scriptDone _missionRaid1 };

    _missionRaid2 = execVM "scripts\missions\job_raid2\mission_raid2.sqf";
    waitUntil { scriptDone _missionRaid2 };

    _missionSandE = execVM "scripts\missions\job_SandE\mission_SandE.sqf";
    waitUntil { scriptDone _missionSandE };

    _missionT9sec = execVM "scripts\missions\job_T9sec\mission_T9sec.sqf";
    waitUntil { scriptDone _missionT9sec };

    _missionVIPEscort = execVM "scripts\missions\job_VIPEscort\mission_VIPEscort.sqf";
    waitUntil { scriptDone _missionVIPEscort };

    _missionVIPSec = execVM "scripts\missions\job_VIPSec\mission_VIPSec.sqf";
    waitUntil { scriptDone _missionVIPSec };
