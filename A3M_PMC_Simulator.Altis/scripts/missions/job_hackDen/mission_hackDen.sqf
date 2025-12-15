/*
	  Arguments:
	  _this select 0: string - The classname of the house to search for (optional, defaults to "Land_House_L2_F")
	  _this select 1: string - The name of the marker to move (optional, defaults to "myMarker")
*/
private _center = [worldSize / 2, worldSize / 2];
private _mapSize = worldSize * sqrt 2 / 2;

// --- Configuration ---
private _houseClassname = "Land_i_House_Big_02_V1_F"; // Target house className
private _markerName = "hack1"; // Marker name
private _compositionFile = "scripts\missions\job_hack\composition\hackDen.sqf"; // The composition file path
private _houses = nearestObjects [_center, [_houseClassname], _mapSize];

if (count _houses > 0) then {
	private _randomHouse = selectRandom _houses;
	private _housePosASL = getPosASL _randomHouse;
	private _houseDir = getDir _randomHouse;
	_markerName setMarkerPos getPosATL _randomHouse;
	private _housePosATL = getPosATL _randomHouse;
	// The Z coordinate (height) needs adjustment. Start with a small offset (e.g., 2.5m)
	private _spawnPosASL = _randomHouse getPosASL [2.5, _houseDir];

    private _eqrfPos = [_housePosATL, 1000, random 360] call BIS_fnc_relPos;
	private _nearestRoad = [_eqrfPos, 500] call BIS_fnc_nearestRoad;
	if (!isNull _nearestRoad) then {
		"HACK_EQRF" setMarkerPos getPosATL _nearestRoad;
	} else {
		"HACK_EQRF" setMarkerPos _eqrfPos;
	};
	// format: [position, Azimuth, Composition_Code] call BIS_fnc_objectsMapper
	_spawnedObjects = [_spawnPosASL, _houseDir, call compile preprocessFileLineNumbers _compositionFile] call BIS_fnc_objectsMapper;

	A3M_MP_HackOption= {
		MPSrack addAction ["Hack Console", {
			[] spawn A3M_fnc_Hack;
		}];
	};

	A3M_svr_Hack_1 = {
		_bluNums = west countSide allPlayers;

		if (_bluNums < 10) then {
			PC_QRFveh1 = "A3M_Truck" createVehicle getMarkerPos "Hack_EQRF";
			PC_QRFinf1 = [getMarkerPos "Hack_EQRF", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
			PC_QRFcrew = [PC_QRFveh1, PC_QRFinf1] call BIS_fnc_spawnCrew;
			[PC_QRFinf1, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
		};
		if (_bluNums > 10) then {
			PC_QRFveh2 = "A3M_Truck" createVehicle getMarkerPos "Hack_EQRF";
			PC_QRFinf2 = [getMarkerPos "Hack_EQRF", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
			PC_QRFcrew = [PC_QRFveh2, PC_QRFinf2] call BIS_fnc_spawnCrew;
			[PC_QRFinf2, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
		};
		if (_bluNums > 20) then {
			PC_QRFveh3 = "A3M_Truck" createVehicle getMarkerPos "Hack_EQRF";
			PC_QRFinf3 = [getMarkerPos "Hack_EQRF", EAST, ["A3M_Lieutenant_Oppressor", "A3M_Falcon_Thug", "A3M_Falcon_Scout_Rifle", "A3M_Falcon_Dealer", "A3M_Falcon_Snatcher", "A3M_Falcon_Guard", "A3M_Falcon_Watcher"]] call BIS_fnc_spawnGroup;
			PC_QRFcrew = [PC_QRFveh3, PC_QRFinf3] call BIS_fnc_spawnCrew;
			[PC_QRFinf3, getMarkerPos "hack1"] call BIS_fnc_taskAttack;
		};
	};

	A3M_svr_Hack_2 = {
		HRaidActive = 0;
		publicVariable "HRaidActive";

		B_DefenseBudget = (B_DefenseBudget + 750000);
		publicVariable "B_DefenseBudget";

		        // Delay cleanup for immersion
		sleep 90;

		        // Cleanup time


		        // Grab the infantry stragglers, if any
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf1);
		deleteVehicle PC_QRFveh1;
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf2);
		deleteVehicle PC_QRFveh2;
		{
			deleteVehicle _x
		} forEach (units PC_QRFinf3);
		deleteVehicle PC_QRFveh3;

		        // Dead bodies will be cleaned up by garbage collector
	};

	A3M_svr_HackerRaid1 = {
		MPSrack = server_unit_screen;
		publicVariable "MPSrack";

		private _hackPos = getMarkerPos "hack1";

		newGroupA = createGroup east;
		private _safePosA = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitA = newGroupA createUnit ['A3M_DrugLord', _safePosA, [], 0, 'CAN_COLLIDE'];
		newUnitA setSkill 0.5;
		newUnitA setRank 'PRIVATE';
		newUnitA setFormDir 0;
		newUnitA setDir 0;
		newUnitA setPosATL _safePosA;
		newGroupA setFormation 'WEDGE';
		newGroupA setCombatMode 'YELLOW';
		newGroupA setBehaviour 'AWARE';
		newGroupA setSpeedMode 'NORMAL';

		newGroupB = createGroup east;
		private _safePosB = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitB = newGroupB createUnit ['A3M_Falcon_Guard', _safePosB, [], 0, 'CAN_COLLIDE'];
		newUnitB setSkill 0.5;
		newUnitB setRank 'PRIVATE';
		newUnitB setFormDir 139.441;
		newUnitB setDir 139.441;
		newUnitB setPosATL _safePosB;
		newGroupB setFormation 'WEDGE';
		newGroupB setCombatMode 'YELLOW';
		newGroupB setBehaviour 'AWARE';
		newGroupB setSpeedMode 'NORMAL';

		newGroupC = createGroup east;
		private _safePosC = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitC = newGroupC createUnit ['A3M_Falcon_Hireling_Launcher', _safePosC, [], 0, 'CAN_COLLIDE'];
		newUnitC setSkill 0.5;
		newUnitC setRank 'PRIVATE';
		newUnitC setFormDir 222.274;
		newUnitC setDir 222.274;
		newUnitC setPosATL _safePosC;
		newGroupC setFormation 'WEDGE';
		newGroupC setCombatMode 'YELLOW';
		newGroupC setBehaviour 'AWARE';
		newGroupC setSpeedMode 'NORMAL';

		newGroupD = createGroup east;
		private _safePosD = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitD = newGroupD createUnit ['A3M_Falcon_Guard', _safePosD, [], 0, 'CAN_COLLIDE'];
		newUnitD setSkill 0.5;
		newUnitD setRank 'PRIVATE';
		newUnitD setFormDir 269.201;
		newUnitD setDir 269.201;
		newUnitD setPosATL _safePosD;
		newGroupD setFormation 'WEDGE';
		newGroupD setCombatMode 'YELLOW';
		newGroupD setBehaviour 'AWARE';
		newGroupD setSpeedMode 'NORMAL';

		newGroupE = createGroup east;
		private _safePosE = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitE = newGroupE createUnit ['A3M_Lieutenant_Oppressor', _safePosE, [], 0, 'CAN_COLLIDE'];
		newUnitE setSkill 0.5;
		newUnitE setRank 'PRIVATE';
		newUnitE setFormDir 0;
		newUnitE setDir 0;
		newUnitE setPosATL _safePosE;
		newGroupE setFormation 'WEDGE';
		newGroupE setCombatMode 'YELLOW';
		newGroupE setBehaviour 'AWARE';
		newGroupE setSpeedMode 'NORMAL';

		newGroupF = createGroup east;
		private _safePosF = [_hackPos, 0, 500, 5, 0, 0.1, 0, [], [_hackPos, _hackPos]] call BIS_fnc_findSafePos;
		newUnitF = newGroupF createUnit ['A3M_Lieutenant_Enforcer', _safePosF, [], 0, 'CAN_COLLIDE'];
		newUnitF setSkill 0.5;
		newUnitF setRank 'PRIVATE';
		newUnitF setFormDir 306.123;
		newUnitF setDir 306.123;
		newUnitF setPosATL _safePosF;
		newGroupF setFormation 'WEDGE';
		newGroupF setCombatMode 'YELLOW';
		newGroupF setBehaviour 'AWARE';
		newGroupF setSpeedMode 'NORMAL';

		remoteExecCall ["A3M_MP_HackOption", 0];
	};

	diag_log format ["Composition spawned on a random house at position %1 with direction %2", _spawnPosASL, _houseDir];
} else {
	diag_log format ["No houses found with classname %1", _houseClassname];
};

_spawnedObjects
missionNamespace setVariable ["myMission_SpawnedCompObjects", [] execVM "mission_hackDen.sqf"];

private _objectsToDelete = missionNamespace getVariable "myMission_SpawnedCompObjects";
 if (HRaidActive == 0) then {
    if (!(isNull _objectsToDelete) and (count _objectsToDelete > 0)) then {
        // Iterate through all objects in the array and delete them
        {
            deleteVehicle _x
        } forEach _objectsToDelete;

        diag_log "Hack Den Composition deleted.";
        missionNamespace setVariable ["myMission_SpawnedCompObjects", []]; // Clear the variable
    } else {

    };
};
