/*
 * Fleet UI Event Handler
 * Processes events from the fleet management web UI
 * 
 * @param _control - UI control that triggered the event
 * @param _isConfirmDialog - Dialog confirmation flag
 * @param _message - JSON string containing event data
 */

params ["_control", "_isConfirmDialog", "_message"];

// Parse incoming event data
private _eventAlert = fromJSON _message;
private _eventType = _eventAlert get "event";
private _eventData = _eventAlert get "data";
private _parentDisplay = displayChild findDisplay 46;

diag_log format ["[A3M] Fleet UI Event: %1", _eventType];

// Process event based on type
switch (_eventType) do {
    
    // Close the fleet management UI
    case "close": {
        _parentDisplay closeDisplay 1;
    };
    
    // Get list of available mods installed on client
    case "get::available::mods": {
        private _availableModsList = ["a3"]; // Vanilla always available
        private _loadedModsInfo = getLoadedModsInfo;
        
        // Extract mod directory names from loaded mods
        private _modDirectories = _loadedModsInfo apply {_x select 1};
        diag_log format ["[A3M] Fleet: Checking loaded mods: %1", _modDirectories];
        
        // Check for each supported mod
        if ({toLower _x find "@ace" >= 0} count _modDirectories > 0) then {
            _availableModsList pushBack "ace3";
        };
        if ({_x == "EF"} count _modDirectories > 0) then {
            _availableModsList pushBack "ef";
        };
        if ({_x == "RF"} count _modDirectories > 0) then {
            _availableModsList pushBack "rf";
        };
        if ({_x == "WS"} count _modDirectories > 0) then {
            _availableModsList pushBack "ws";
        };
        if ({toLower _x find "@rhs" >= 0} count _modDirectories > 0) then {
            _availableModsList pushBack "rhs";
        };
        
        private _modsJson = toJSON _availableModsList;
        diag_log format ["[A3M] Fleet: Available mods: %1", _modsJson];
        
        // Send available mods list to UI
        _control ctrlWebBrowserAction ["ExecJS", format ["window.setAvailableMods(%1);", _modsJson]];
    };
    // Get vehicles for a specific category and mod
    case "get::fleet::category": {
        private _requestedCategory = _eventData get "category";
        private _requestedMod = _eventData get "mod";
        
        diag_log format ["[A3M] Fleet: Category request - %1 (mod: %2)", _requestedCategory, _requestedMod];
        
        // Map UI category names to CfgFleet config class names
        private _uiToConfigMap = createHashMapFromArray [
            ["cars", "A3M_Wheeled"],
            ["armor", "A3M_Armored"],
            ["heli", "A3M_Heli"],
            ["plane", "A3M_FixedWing"],
            ["naval", "A3M_Naval"],
            ["drone", "A3M_Drone"],
            ["support", "A3M_Support"],
            ["upgrades", "A3M_Upgrade"]
        ];
        
        // Get config class name or fallback to default
        private _configClassName = _uiToConfigMap getOrDefault [_requestedCategory, "A3M_Wheeled"];
        if (isNil "_configClassName") then {
            diag_log format ["[A3M] Fleet: Unknown category '%1', defaulting to A3M_Wheeled", _requestedCategory];
            _configClassName = "A3M_Wheeled";
        };
        
        // Parse vehicles from config for this category and mod
        A3M_FleetClass call ["parse", [_configClassName, _requestedMod]];
        
        // Retrieve parsed vehicle data
        private _vehicleData = A3M_FleetClass get _requestedCategory;
        private _vehicleDataJson = toJSON _vehicleData;
        
        diag_log format ["[A3M] Fleet: Sending %1 vehicles for %2 (mod: %3)", count _vehicleData, _requestedCategory, _requestedMod];
        
        // Escape JSON string for safe JavaScript execution
        private _escapedJson = _vehicleDataJson;
        _escapedJson = [_escapedJson, "\\", "\\\\"] call CBA_fnc_replace;  // Escape backslashes
        _escapedJson = [_escapedJson, "'", "\'"] call CBA_fnc_replace;        // Escape quotes
        
        // Send vehicle data to UI
        _control ctrlWebBrowserAction ["ExecJS", format ["displayCategoryItems('%1', '%2');", _requestedCategory, _escapedJson]];
    };
    // Handle vehicle purchase request
    case "purchase::fleet::vehicle": {
        private _vehicleClass = _eventData get "className";
        private _vehicleDisplayName = _eventData get "displayName";
        private _vehiclePrice = _eventData get "price";
        
        diag_log format ["[A3M] Fleet: Purchase request - %1 (%2) - $%3", _vehicleDisplayName, _vehicleClass, _vehiclePrice];
        
        // Execute purchase through FleetClass
        A3M_FleetClass call ["buy", [_vehicleClass, _vehicleDisplayName, _vehiclePrice]];
    };
    
    // Unknown event type
    default {
        diag_log format ["[A3M] Fleet: Unhandled event type '%1'", _eventType];
    };
};

true;