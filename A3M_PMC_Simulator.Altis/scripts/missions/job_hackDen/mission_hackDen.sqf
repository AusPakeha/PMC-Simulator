
A3M_JHD_HackerRaid1 = {
	// --- Configuration ---
    private _center = [worldSize / 2, worldSize / 2];
    private _mapSize = worldSize * sqrt 2 / 2;
	private _houseClassname = "Land_i_House_Big_02_V1_F"; // Target house className
	private _markerName = "hack1"; // Marker name
	private _compositionFile = "scripts/missions/composition/hackDen.sqe"; // The composition file path
	private _houses = nearestObjects [_center, [_houseClassname], _mapSize];
    diag_log "[A3M] hackDen - configuration completed";

	if (count _houses > 0) then {
		private _randomHouse = selectRandom _houses;
        private _finalHouse = _randomHouse;

		_markerName setMarkerPos getPosATL _finalHouse;
        diag_log "[A3M] hackDen - hack1 marker moved";

		private _houseDir = getDir _finalHouse;
        diag_log "[A3M] hackDen - Houses chosen";

		private _housePosATL = getPosATL _finalHouse;
		// Adjust spawn position to align the composition's house with the actual house
		private _relativeHousePos = [-1.8359375, 2.8839679, -2.1601563];
		private _spawnPosATL = _housePosATL vectorAdd _relativeHousePos;
		private _spawnPosASL = ATLtoASL _spawnPosATL;
        diag_log ["[A3M] hackDen - House position: ATL: %1, Dir: %2", str _housePosATL, str _houseDir];

		// format: [position, Azimuth, Composition_Code] call BIS_fnc_objectsMapper
        //_spawnedObjects = ["hackDen", _spawnPosASL, 0, _houseDir, false, false, true] call LARs_fnc_spawnComp;
		_spawnedObjects = [_spawnPosASL, _houseDir, ((call compile preprocessFileLineNumbers _compositionFile) select 0)] call BIS_fnc_objectsMapper;
        missionNamespace setVariable ["A3M_HackDen_Comp", _spawnedObjects];
        diag_log "[A3M] hackDen - composition spawned";

		private _eqrfPos = [_finalHouse, 700, random 360] call BIS_fnc_relPos;
		private _nearestRoad = [_eqrfPos, 500] call BIS_fnc_nearestRoad;
		if (!isNull _nearestRoad) then {
			"hack_eqrf" setMarkerPos getPosATL _nearestRoad;
		} else {
			"hack_eqrf" setMarkerPos _eqrfPos;
		};
        diag_log "[A3M] hackDen - EQRF marker moved";

		MPSrack = server_unit_screen;
		publicVariable "MPSrack";

        private _hackPos = getMarkerPos "hack1";
        private _targetBuilding = nearestBuilding _hackPos;
        private _allPositions = _targetBuilding buildingPos -1;
        private _selectedPositions = [];
        for "_i" from 1 to 6 do {
            private _pos = selectRandom _allPositions;
            _allPositions = _allPositions - [_pos];
            _selectedPositions pushBack _pos;
        };

		newGroupA = createGroup east;
		newUnitA = newGroupA createUnit ['A3M_DrugLord', _selectedPositions select 0, [], 0, 'CAN_COLLIDE'];
		newUnitA setPosATL (_selectedPositions select 0);

		newGroupB = createGroup east;
		newUnitB = newGroupB createUnit ['A3M_Falcon_Smuggler', _selectedPositions select 1, [], 0, 'CAN_COLLIDE'];
		newUnitB setPosATL (_selectedPositions select 1);

		newGroupC = createGroup east;
		newUnitC = newGroupC createUnit ['A3M_Falcon_Hireling_Launcher', _selectedPositions select 2, [], 0, 'CAN_COLLIDE'];
		newUnitC setPosATL (_selectedPositions select 2);

		newGroupD = createGroup east;
		newUnitD = newGroupD createUnit ['A3M_Falcon_Snatcher', _selectedPositions select 3, [], 0, 'CAN_COLLIDE'];
		newUnitD setPosATL (_selectedPositions select 3);

		newGroupE = createGroup east;
		newUnitE = newGroupE createUnit ['A3M_Lieutenant_Oppressor', _selectedPositions select 4, [], 0, 'CAN_COLLIDE'];
		newUnitE setPosATL (_selectedPositions select 4);

		newGroupF = createGroup east;
		newUnitF = newGroupF createUnit ['A3M_Lieutenant_Enforcer', _selectedPositions select 5, [], 0, 'CAN_COLLIDE'];
		newUnitF setPosATL (_selectedPositions select 5);

		remoteExecCall ["A3M_JHD_HackOption", 0];

		diag_log format ["Composition spawned on a random house at position %1 with direction %2", _spawnPosASL, _houseDir];
		//missionNamespace setVariable ["myMission_SpawnedCompObjects", _spawnedObjects];
	} else {
		diag_log format ["No houses found with classname %1", _houseClassname];
		missionNamespace setVariable ["myMission_SpawnedCompObjects", []];
	};
};

A3M_MP_JHD_HackerRaid1 = {
    HackDen = player createSimpleTask ["Raid Hacker Den"];
    HackDen setSimpleTaskDescription ["Find and Raid the hacker den, download the hacker's logs, and exfil.", "Raid Hacker Den", "Hacker Den"];
    HackDen setSimpleTaskDestination (getMarkerPos "Hack1");
    HackDen setTaskState "Assigned";
    player setCurrentTask HackDen;
    playMusic "Assigned";
    ["TaskAssigned", ["Raid Hacker's Den. See map."]] call BIS_fnc_showNotification;
};

A3M_JHD_HackOption= {
	MPSrack addAction ["Hack Console", {
		[] spawn A3M_JHD_Hack;
	}];
};

A3M_JHD_Hack = {
	MissionStatus = "M10";
	publicVariable "MissionStatus";
	remoteExecCall ["A3M_JHD_HackerRaid1_2"];

	remoteExecCall ["A3M_JHD_Hack_1", 2];
	_HackProgress = ["Hacking into system...Please Wait", 300] spawn A3M_fnc_prgBar;

	waitUntil {
		scriptDone _HackProgress
	};
	MissionStatus = "M0";
	publicVariable "MissionStatus";
	remoteExecCall ["A3M_JHD_Hack_2", 2];
	remoteExecCall ["A3M_JHD_HackerRaid1_3"];
};

A3M_JHD_HackerRaid1_2 = {
    HackDen setTaskState "Succeeded";
    player addRating 100;
    ["TaskDone", ["Raid Performed"]] call BIS_fnc_showNotification;
    ["ScoreAdded",["Part 1 Complete", 100]] call BIS_fnc_showNotification;
    HackDen2 = player createSimpleTask ["Defend Position"];
    HackDen2 setSimpleTaskDescription ["Defend the position while the logs upload.", "Defend Position", "Defend"];
    HackDen2 setSimpleTaskDestination (getMarkerPos "Hack1");
    HackDen2 setTaskState "Assigned";
    player setCurrentTask HackDen2;
    ["TaskAssigned", ["Defend until upload completes."]] call BIS_fnc_showNotification;
};

A3M_JHD_Hack_1 = {
	_bluNums = west countSide allPlayers;

	if (_bluNums < 10) then {
		PC_QRFveh1 = "A3M_Truck" createVehicle getMarkerPos "hack_eqrf";
		PC_QRFinf1 = [getMarkerPos "hack_eqrf", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
		PC_QRFcrew = [PC_QRFveh1, PC_QRFinf1] call BIS_fnc_spawnCrew;
		[PC_QRFinf1, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
	};
	if (_bluNums > 10) then {
		PC_QRFveh2 = "A3M_Truck" createVehicle getMarkerPos "hack_eqrf";
		PC_QRFinf2 = [getMarkerPos "hack_eqrf", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
		PC_QRFcrew = [PC_QRFveh2, PC_QRFinf2] call BIS_fnc_spawnCrew;
		[PC_QRFinf2, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
	};
	if (_bluNums > 20) then {
		PC_QRFveh3 = "A3M_Truck" createVehicle getMarkerPos "hack_eqrf";
		PC_QRFinf3 = [getMarkerPos "hack_eqrf", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
		PC_QRFcrew = [PC_QRFveh3, PC_QRFinf3] call BIS_fnc_spawnCrew;
		[PC_QRFinf3, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
	};
};


A3M_JHD_Hack_2 = {
	HRaidActive = 0;
	publicVariable "HRaidActive";

	B_DefenseBudget = (B_DefenseBudget + 750000);
	publicVariable "B_DefenseBudget";

	sleep 90;

	// Cleanup time
	private _hackDenComp = missionNamespace getVariable ["A3M_HackDen_Comp", nil];
	if (HRaidActive == 0) then {
		if (!isNil "_hackDenComp") then {
			[_hackDenComp] call LARs_fnc_deleteComp;
			diag_log "Hack Den Composition deleted.";
		} else {
			diag_log "Mission Hack Den could not be cleaned. Zues intervention required"
		};
	};
	// Grab the infantry stragglers, if any
	if (!isNil "PC_QRFinf1") then {
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf1);
	};
	if (!isNil "PC_QRFveh1") then {
		deleteVehicle PC_QRFveh1;
	};
	if (!isNil "PC_QRFinf2") then {
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf2);
	};
	if (!isNil "PC_QRFveh2") then {
		deleteVehicle PC_QRFveh2;
	};
	if (!isNil "PC_QRFinf3") then {
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf3);
	};
	if (!isNil "PC_QRFveh3") then {
		deleteVehicle PC_QRFveh3;
	};

	    // Dead bodies will be cleaned up by garbage collector
};

A3M_JHD_HackerRaid1_3 = {
    HackDen2 setTaskState "Succeeded";
    player addRating 950;
    ["TaskDone", ["Hacker Den Raided, Data Recovered."]] call BIS_fnc_showNotification;
    ["ScoreAdded", ["Hacker Den Raided", 950]] call BIS_fnc_showNotification;
    ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $750,000.00"]] call BIS_fnc_showNotification;
    CO1 setTaskState "Assigned";
    player setCurrentTask CO1;
    MissionStatus = "M0";
    publicVariable "MissionStatus";
};
