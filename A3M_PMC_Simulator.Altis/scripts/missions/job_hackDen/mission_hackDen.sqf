
A3M_JHD_HackerRaid1 = {
	// --- Configuration ---
	private _center = [worldSize / 2, worldSize / 2];
	private _mapSize = worldSize * sqrt 2 / 2;
	private _houseClassname = "Land_i_House_Big_02_V1_F"; // Target house className
	private _markerName = "hack1"; // Marker name
	private _compositionFile = "scripts\missions\composition\hackDen.sqf"; // The composition file path
	private _houses = nearestObjects [_center, [_houseClassname], _mapSize];
	diag_log "[A3M] hackDen - configuration completed";

	if (count _houses > 0) then {
		private _randomHouse = selectRandom _houses;
		private _finalHouse = _randomHouse;

		_markerName setMarkerPos [getPosATL _finalHouse select 0, getPosATL _finalHouse select 1, 0];
		diag_log "[A3M] hackDen - hack1 marker moved";

		private _houseDir = getDir _finalHouse;
		diag_log "[A3M] hackDen - Houses chosen";

		private _housePosATL = getPosATL _finalHouse;
		// Adjust spawn position to align the composition's house with the actual house
		// private _relativeHousePos = [-1.8359375, 2.8839679, -2.1601563];
		// private _spawnPosATL = _housePosATL vectorAdd _relativeHousePos;
		diag_log ["[A3M] hackDen - House position: ATL: %1, Dir: %2", str _housePosATL, str _houseDir];

		// Hide the house to prepare position for composition
		_finalHouse hideObjectGlobal true;
		missionNamespace setVariable ["A3M_HiddenHouse", _finalHouse];
		diag_log "[A3M] hackDen - House hidden for composition placement";

		// format: [position, Azimuth, Composition_Code] call BIS_fnc_objectsMapper
		//_spawnedObjects = [_spawnPosASL, _houseDir, call (compile (preprocessFileLineNumbers _compositionFile))] call BIS_fnc_objectsMapper;
		_spawnedObjects = [_compositionFile, _houseDir, _housePosATL] call compile preprocessFileLineNumbers "functions\objectMapper.sqf";

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

		MPSrack = server;
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

		newGroupB = createGroup east;
		newUnitB = newGroupB createUnit ['A3M_Falcon_Smuggler', _selectedPositions select 1, [], 0, 'CAN_COLLIDE'];

		newGroupC = createGroup east;
		newUnitC = newGroupC createUnit ['A3M_Falcon_Hireling_Launcher', _selectedPositions select 2, [], 0, 'CAN_COLLIDE'];

		newGroupD = createGroup east;
		newUnitD = newGroupD createUnit ['A3M_Falcon_Snatcher', _selectedPositions select 3, [], 0, 'CAN_COLLIDE'];

		newGroupE = createGroup east;
		newUnitE = newGroupE createUnit ['A3M_Lieutenant_Oppressor', _selectedPositions select 4, [], 0, 'CAN_COLLIDE'];

		newGroupF = createGroup east;
		newUnitF = newGroupF createUnit ['A3M_Lieutenant_Enforcer', _selectedPositions select 5, [], 0, 'CAN_COLLIDE'];

		remoteExecCall ["A3M_JHD_HackOption", 0];

		diag_log format ["Composition spawned on a random house at position %1 with direction %2", _spawnPosATL, _houseDir];
		//missionNamespace setVariable ["myMission_SpawnedCompObjects", _spawnedObjects];
	} else {
		diag_log format ["No houses found with classname %1", _houseClassname];
		missionNamespace setVariable ["myMission_SpawnedCompObjects", []];
	};

	// Execute Server Side Scripting
	remoteExecCall ["A3M_MP_JHD_HackerRaid1", 2];
};

A3M_MP_JHD_HackerRaid1 = {
	HackDen = player createSimpleTask ["Raid Hacker Den"];
	HackDen setSimpleTaskDescription ["Find and Raid the hacker den, download the hacker's logs, and exfil.", "Raid Hacker Den", "Hacker Den"];
	HackDen setSimpleTaskDestination (getMarkerPos "hack1");
	HackDen setTaskState "Assigned";
	player setCurrentTask HackDen;
	playMusic "Assigned";
	["TaskAssigned", ["Raid Hacker's Den. See map."]] call BIS_fnc_showNotification;
};

A3M_JHD_HackOption = {
	MPSrack addAction ["Hack Console", {
		[] spawn A3M_JHD_Hack;
	}];
};

A3M_JHD_Hack = {
	MissionStatus = "M10";
	publicVariable "MissionStatus";
	call A3M_JHD_HackerRaid1_2;

	remoteExecCall ["A3M_JHD_Hack_1", 2];
	_HackProgress = ["Hacking into system...Please Wait", 300] spawn A3M_fnc_prgBar;

	waitUntil {
		scriptDone _HackProgress
	};
	MissionStatus = "M0";
	publicVariable "MissionStatus";
	remoteExecCall ["A3M_JHD_Hack_2", 2];
	call A3M_JHD_HackerRaid1_3;
};

A3M_JHD_HackerRaid1_2 = {
	HackDen setTaskState "Succeeded";
	player addRating 100;
	["TaskDone", ["Raid Performed"]] call BIS_fnc_showNotification;
	["ScoreAdded", ["Part 1 Complete", 100]] call BIS_fnc_showNotification;
	HackDen2 = player createSimpleTask ["Defend Position"];
	HackDen2 setSimpleTaskDescription ["Defend the position while the logs upload.", "Defend Position", "Defend"];
	HackDen2 setSimpleTaskDestination (getMarkerPos "hack1");
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
	if (HRaidActive == 0) then {
		call A3M_JHD_Cleanup;
	};
};

A3M_JHD_HackFailed = {
    HRaidActive = 0;
    publicVariable "HRaidActive";

    // Cleanup time
	if (HRaidActive == 0) then {
		call A3M_JHD_Cleanup;
	};
};

A3M_JHD_Cleanup = {
	// Delete composition objects
	private _hackDenComp = missionNamespace getVariable ["A3M_HackDen_Comp", nil];
	if (!isNil "_hackDenComp") then {
		{
			deleteVehicle _x;
		} forEach _hackDenComp;
		missionNamespace setVariable ["A3M_HackDen_Comp", nil];
		diag_log "Hack Den Composition deleted.";
	} else {
		diag_log "Mission Hack Den could not be cleaned. Zeus intervention required.";
	};

	// Unhide the hidden house
	private _hiddenHouse = missionNamespace getVariable ["A3M_HiddenHouse", nil];
	if (!isNil "_hiddenHouse") then {
		_hiddenHouse hideObjectGlobal false;
		missionNamespace setVariable ["A3M_HiddenHouse", nil];
		diag_log "Hack Den house unhidden after cleanup.";
	};

	// Delete initial units and groups
	if (!isNil "newUnitA") then { deleteVehicle newUnitA; };
	if (!isNil "newUnitB") then { deleteVehicle newUnitB; };
	if (!isNil "newUnitC") then { deleteVehicle newUnitC; };
	if (!isNil "newUnitD") then { deleteVehicle newUnitD; };
	if (!isNil "newUnitE") then { deleteVehicle newUnitE; };
	if (!isNil "newUnitF") then { deleteVehicle newUnitF; };

	if (!isNil "newGroupA") then { deleteGroup newGroupA; };
	if (!isNil "newGroupB") then { deleteGroup newGroupB; };
	if (!isNil "newGroupC") then { deleteGroup newGroupC; };
	if (!isNil "newGroupD") then { deleteGroup newGroupD; };
	if (!isNil "newGroupE") then { deleteGroup newGroupE; };
	if (!isNil "newGroupF") then { deleteGroup newGroupF; };

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

    "hack1" setMarkerPos (getMarkerpos "offmap");
	"hack_eqrf" setMarkerPos (getMarkerpos "offmap");

    call A3M_MP_HackerRaidfailed;
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

A3M_MP_HackerRaidfailed = {
    HackDen setTaskState "Failed";
    HackDen2 setTaskState "Failed";
    playMusic "Failure";
    ["TaskFailed", [""]] call BIS_fnc_showNotification;
    player setCurrentTask CO1;
};
