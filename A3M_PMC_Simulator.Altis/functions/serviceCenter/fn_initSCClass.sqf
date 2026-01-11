A3M_ServiceCenterClass = createHashMapObject [[
	["#type", "IServiceCenterClass"],
	["#create", {
		_self set ["crewman", objNull];
		_self set ["services", createHashMap];

		private _services = createHashMap;
		_services set ["vehicleCustomization", ["Vehicle Customization", "Customize your vehicle appearance"]];
		_services set ["vehicleServicing", ["Vehicle Servicing", "Repair and refuel your vehicle"]];

		_self set ["services", _services];
		_self call ["init", []];
	}],
	["init", {
		private _crewman = missionNamespace getVariable ["crewman", objNull];

		if (_crewman == objNull) exitWith {
			hint "No unit named crewman found in mission namespace for service class";
		};
		_self set ["crewman", _crewman];
	}],
	["vehicleCustomization", {
		private _crewman = self getOrDefault ["crewman", objNull];

		[_crewman] spawn {
			params [["_crewman", objNull, [objNull]]];
			private _vehicles = nearestObjects [missionNamespace getVariable "serviceCenter", ["Car", "Tank"], 2];
			if (count _vehicles > 0) then {
				[_vehicles select 0] call BIS_fnc_garage;
			} else {
				hint "Vehicle must be close to the service center marker.";
			};
		};
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
	}]
]];

missionNamespace setVariable ["A3M_ServiceCenterClass", A3M_ServiceCenterClass];
A3M_ServiceCenterClass;
