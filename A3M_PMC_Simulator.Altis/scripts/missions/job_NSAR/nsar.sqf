NSARpt2 = 0;
publicVariable "NSARpt2";

NSARrandNo = ["NSAR1","NSAR2","NSAR3","NSAR4","NSAR5","NSAR6","NSAR7","NSAR8","NSAR9","NSAR10"];
NSARPickedNo = NSARrandNo select floor random count NSARrandNo;
publicVariable "NSARPickedNo";

NSARDestNo1 = ["NSARD1","NSARD2","NSARD3","NSARD4","NSARD5"];
NSARDestNo = NSARDestNo1 select floor random count NSARDestNo1;
publicVariable "NSARDestNo";

NSARdest = createTrigger ["EmptyDetector", getMarkerPos NSARPickedNo];
NSARdest setTriggerArea [20, 20, 0, false];
NSARdest setTriggerActivation ["ANY", "PRESENT", true];
NSARdest setTriggerType "NONE";
NSARdest setTriggerStatements ["player in thisList", "[] call A3M_fnc_JNSAR_SARfound", ""];

remoteExecCall ["A3M_MP_JNSAR_StartTaskNSAR"];

NSAR = [getMarkerPos NSARPickedNo, west, ["B_Soldier_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F"]] call BIS_fnc_spawnGroup;
sleep 1;

NSARlead = NSAR createUnit ["B_Soldier_SL_F", getMarkerPos NSARPickedNo, [], 0, "FORM"];
sleep 1;

injuredUnit = selectRandom (units NSAR);
injuredUnitOriginalHeadgear = headgear injuredUnit;
injuredUnit setDamage 0.7;
removeHeadgear injuredUnit;
injuredUnit addHeadgear "H_HeadBandage_bloody_F";
publicVariable "injuredUnit";


NSARen = [getMarkerPos "oreo", EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
[NSARen, getMarkerPos NSARPickedNo] call BIS_fnc_taskAttack;

while { (NSARActive == 1) } do {
    if (({alive _x} count (units NSAR + [NSARlead])) == 2) then { [] call A3M_fnc_JNSAR_NSARFailed };
    sleep 1;
};

A3M_fnc_JNSAR_SARSuccess = {
    B_DefenseBudget = (B_DefenseBudget + 1500000);
    publicVariable "B_DefenseBudget";

    MissionStatus = "M0";
    publicVariable "MissionStatus";

    NSARActive = 0;
    publicVariable "NSARActive";

    { deleteVehicle _x } forEach (units SARWen);

    EESurvivors = { alive _X } count units NSAR;
    publicVariable "EESurvivors";

    if (headgear injuredUnit == "H_HeadBandage_bloody_F") then {
        removeHeadgear injuredUnit;
        injuredUnit addHeadgear injuredUnitOriginalHeadgear;
    };

    remoteExecCall ["A3M_MP_JNSAR_SARSuccess"];

    sleep 20;
    { deleteVehicle _x } forEach (units NSAR);
};

A3M_fnc_JNSAR_NSARFailed = {
    remoteExecCall ["A3M_MP_JNSAR_SARfailed"];

    MissionStatus = "M0";
    publicVariable "MissionStatus";

    NSARActive = 0;
    publicVariable "NSARActive";
};

A3M_fnc_JNSAR_SARfound = {
    remoteExecCall ["A3M_MP_JNSAR_SARfound"];

    NSARpt2 = 1;
    publicVariable "NSARpt2";

    NSAR move Getmarkerpos NSARDestNo;

    EnChance = [1, 0, 0, 0, 0, 0, 0, 1, 0, 0];
    EnPres = EnChance select floor random count EnChance;
    if (EnPres == 1) then {
        SARWen = [getMarkerPos NSARDestNo, EAST, ["A3M_Lieutenant_Enforcer","A3M_Falcon_Scout_Rifle","A3M_Falcon_Hireling_Launcher","A3M_Falcon_Dealer","A3M_Falcon_Snatcher","A3M_Falcon_Smuggler"]] call BIS_fnc_spawnGroup;
        [SARWen, getPos NSARlead] call BIS_fnc_taskAttack;
    };

    NSARdest2= createTrigger ["EmptyDetector", getMarkerPos NSARDestNo];
    NSARdest2 setTriggerArea [20, 20, 0, false];
    NSARdest2 setTriggerActivation ["ANY", "PRESENT", true];
    NSARdest2 setTriggerType "NONE";
    NSARdest2 setTriggerStatements ["NSARlead in thislist && (damage injuredUnit < 0.5)", "remoteExecCall ['A3M_fnc_JNSAR_SARSuccess', 2];", ""];
};
