A3M_ServiceCenterClass = createHashMapObject [[
	["#type", "IServiceCenterClass"],
	["#create", {
		_self set ["crewman", objNull];
		_self set ["airCrewman1", objNull];
		_self set ["services", createHashMap];

		private _services = createHashMap;
		_services set ["vehicleServicing", ["Vehicle Servicing", "Repair and refuel your vehicle"]];
		_services set ["aircraftServicing", ["Aircraft Servicing", "Repair and refuel your aircraft"]];

		_self set ["services", _services];
		_self call ["init", []];
	}],
	["init", {
		private _crewman = missionNamespace getVariable ["crewman", objNull];
		private _airCrewman1 = missionNamespace getVariable ["airCrewman1", objNull];

		if (_crewman == objNull) exitWith {
			hint "No unit named crewman found in mission namespace for service class";
		};
		if (_airCrewman1 == objNull) exitWith {
			hint "No unit named airCrewman1 found in mission namespace for service class";
		};
		_self set ["crewman", _crewman];
		_self set ["airCrewman1", _airCrewman1];
	}],
	["vehicleServicing", {
		private _crewman = self getOrDefault ["crewman", objNull];

		[_crewman] spawn {
			params [["_crewman", objNull, [objNull]]];
			private _vehicles = nearestObjects [missionNamespace getVariable "serviceCenter", ["Car", "Tank"], 2];
			if (count _vehicles > 0) then {
				[_vehicles select 0] call A3M_fnc_reloadVehicle;
			} else {
				hint "Vehicle must be close to the service center marker.";
			};
		};
	}],
	["aircraftServicing", {
		private _airCrewman1 = self getOrDefault ["airCrewman1", objNull];

		[_airCrewman1] spawn {
			params [["_airCrewman1", objNull, [objNull]]];
			private _aircraft = nearestObjects [missionNamespace getVariable "serviceCenterAir", ["Air"], 2];
			if (count _aircraft > 0) then {
				[_aircraft select 0] call A3M_fnc_reloadVehicle;
			} else {
				hint "Aircraft must be close to the service center air marker at Molos Airfield.";
			};
		};
	}]
]];

missionNamespace setVariable ["A3M_ServiceCenterClass", A3M_ServiceCenterClass];
A3M_ServiceCenterClass;
