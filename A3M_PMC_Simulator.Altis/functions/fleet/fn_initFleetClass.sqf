/*
 * Fleet Management Class
 * Handles vehicle inventory, parsing, and purchases
 */

A3M_FleetClass = createHashMapObject [[
    ["#type", "IFleetClass"],
    
    /*
     * Constructor - Initialize category arrays and budget settings
     */
    ["#create", {
        // Initialize empty vehicle arrays for each category
        _self set ["cars", []];
        _self set ["armor", []];
        _self set ["heli", []];
        _self set ["plane", []];
        _self set ["naval", []];
        _self set ["drone", []];
        _self set ["support", []];
        _self set ["upgrades", []];
        
        // Budget and rank requirements
        B_InitialBudget = paramsArray select 1;
        if (isnil "B_DefenseBudget") then { B_DefenseBudget = B_InitialBudget; publicVariable "B_DefenseBudget"; };
        if (isnil "B_TotalCost") then { B_TotalCost = 0; publicVariable "B_TotalCost"; };

        _self set ["budget", B_DefenseBudget];
        _self set ["requiredRank", "MAJOR"];
    }],
    
    /*
     * Parse vehicles from config for a specific category and mod
     * @param _configCategory - Config class name (e.g., "A3M_Wheeled")
     * @param _modId - Mod identifier (e.g., "a3", "rhs", "ef")
     */
    ["parse", {
        params [["_configCategory", "A3M_Wheeled"], ["_modId", "a3"]];
        
        // Map config class names to UI category keys
        private _categoryMap = createHashMapFromArray [
            ["A3M_Wheeled", "cars"],
            ["A3M_Armored", "armor"],
            ["A3M_Heli", "heli"],
            ["A3M_FixedWing", "plane"],
            ["A3M_Naval", "naval"],
            ["A3M_Drone", "drone"],
            ["A3M_Support", "support"],
            ["A3M_Upgrade", "upgrades"]
        ];
        
        private _categoryKey = _categoryMap getOrDefault [_configCategory, "cars"];
        private _vehicleList = [];
        
        // Read vehicle data from CfgFleet config
        private _fleetConfig = missionConfigFile >> "CfgFleet" >> "Store" >> _configCategory;
        private _modVehicles = getArray (_fleetConfig >> _modId);
        
        // Parse each vehicle entry
        {
            _x params ["_vehicleClass", "_vehiclePrice"];
            
            // Get vehicle display info from CfgVehicles
            private _vehicleDisplayName = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");
            private _vehiclePreviewImage = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "editorPreview");
            
            // Create vehicle data structure for UI
            private _vehicleData = [
                ["className", _vehicleClass],
                ["displayName", _vehicleDisplayName],
                ["price", _vehiclePrice],
                ["image", _vehiclePreviewImage]
            ];
            
            _vehicleList pushBack _vehicleData;
        } forEach _modVehicles;
        
        // Store parsed vehicles in the category
        _self set [_categoryKey, _vehicleList];
        
        diag_log format ["[A3M] Fleet: Parsed %1 vehicles for %2 (mod: %3)", count _vehicleList, _categoryKey, _modId];
    }],
    
    /*
     * Purchase and spawn a vehicle
     * @param _vehicleClass - Vehicle classname
     * @param _vehicleDisplayName - Display name for messages
     * @param _purchasePrice - Cost in credits
     * @param _spawnMarkerName - Marker where vehicle will spawn (optional)
     */
    ["buy", {
        params ["_vehicleClass", "_vehicleDisplayName", "_purchasePrice", ["_spawnMarkerName", "vehspawn"]];
        
        private _requiredRank = _self get "requiredRank";
        private _availableBudget = _self get "budget";
        private _playerRank = rank player;
        
        // Get spawn location and direction from marker
        private _spawnPosition = getMarkerPos _spawnMarkerName;
        private _spawnDirection = markerDir _spawnMarkerName;
        private _formattedPrice = [_purchasePrice] call A3M_handle_number;
        
        // Check authorization and budget
        if ((_availableBudget < _purchasePrice) or (_playerRank != _requiredRank)) then {
            hint format [
                "Purchase denied: %1 | Cost: $%2\n\nEither insufficient funds or you lack authorization. Only company officers may purchase from fleet management.",
                _vehicleDisplayName,
                _formattedPrice
            ];
        } else {
            // Spawn vehicle
            private _spawnedVehicle = _vehicleClass createVehicle _spawnPosition;
            _spawnedVehicle setDir _spawnDirection;
            
            // Update budget and costs
            B_DefenseBudget = (B_DefenseBudget - _purchasePrice);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + _purchasePrice);
            publicVariable "B_TotalCost";
            
            // Update UI displays
            [] call DoBudget;
            [] call DoTotal;
            
            // Clear cargo for fresh vehicle
            clearWeaponCargoGlobal _spawnedVehicle;
            clearMagazineCargoGlobal _spawnedVehicle;
            
            // Notify player
            hint format ["Purchase successful: %1\nCost: $%2", _vehicleDisplayName, _formattedPrice];
            diag_log format ["[A3M] Fleet: %1 purchased %2 (%3) for $%4", name player, _vehicleDisplayName, _vehicleClass, _purchasePrice];
        };
    }]
]];

// Register class globally
missionNamespace setVariable ["A3M_FleetClass", A3M_FleetClass];
A3M_FleetClass;
