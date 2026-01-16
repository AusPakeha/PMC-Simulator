A3M_ServiceCenterAirClass = createHashMapObject [[
	["#type", "IServiceCenterAirClass"],
	["#create", {
		_self set ["airCrewman", objNull];
		_self set ["services", createHashMap];

		private _services = createHashMap;
		_services set ["aircraftServicing", ["Aircraft Servicing", "Repair and refuel your aircraft"]];

		_self set ["services", _services];
		_self call ["init", []];
	}],
	["init", {
		private _airCrewman = missionNamespace getVariable ["airCrewman", objNull];

		if (_airCrewman == objNull) exitWith {
			hint "No unit named airCrewman1 found in mission namespace for service class";
		};
		_self set ["airCrewman", _airCrewman];
	}],
	["aircraftServicing", {
		private _airCrewman = self getOrDefault ["airCrewman", objNull];

		[_airCrewman] spawn {
			params [["_airCrewman", objNull, [objNull]]];
			private _aircraft = nearestObjects [missionNamespace getVariable "serviceCenterAir", ["Air"], 2];
			if (count _aircraft > 0) then {
				[_aircraft select 0] call A3M_fnc_reloadVehicle;
			} else {
				hint "Aircraft must be close to the service center air marker at Molos Airfield.";
			};
		};
	}]
]];

missionNamespace setVariable ["A3M_ServiceCenterAirClass", A3M_ServiceCenterAirClass];
A3M_ServiceCenterAirClass;
