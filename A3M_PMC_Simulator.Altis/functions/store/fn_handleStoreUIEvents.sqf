/*
 * Store UI Event Handler
 * Processes events from the store management web UI
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

diag_log format ["[A3M] Store UI Event: %1", _eventType];

// Process event based on type
switch (_eventType) do {

    // Close the store management UI
    case "close": {
        _parentDisplay closeDisplay 1;
    };

    // Get list of available mods installed on client
    case "get::available::mods": {
        private _availableModsList = ["a3"]; // Vanilla always available
        private _loadedModsInfo = getLoadedModsInfo;

        // Extract mod directory names from loaded mods
        private _modDirectories = _loadedModsInfo apply {_x select 1};
        diag_log format ["[A3M] Store: Checking loaded mods: %1", _modDirectories];

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
        if ({toLower _x find "@task_force_radio" >= 0} count _modDirectories > 0) then {
            _availableModsList pushBack "tfar";
        };

        private _modsJson = toJSON _availableModsList;
        diag_log format ["[A3M] Store: Available mods: %1", _modsJson];

        // Send available mods list to UI
        _control ctrlWebBrowserAction ["ExecJS", format ["window.setAvailableMods(%1);", _modsJson]];
    };
    // Get items for a specific category and mod
    case "get::store::category": {
        private _requestedCategory = _eventData get "category";
        private _requestedMod = _eventData get "mod";

        diag_log format ["[A3M] Store: Category request - %1 (mod: %2)", _requestedCategory, _requestedMod];

        // Map UI category names to CfgStore config class names
        private _uiToConfigMap = createHashMapFromArray [
            ["items", "A3M_Items"],
            ["medical", "A3M_Medical"],
            ["electronics", "A3M_Electronic"],
            ["vests", "A3M_Vests"],
            ["uniforms", "A3M_Uniforms"],
            ["headgear", "A3M_Headgear"],
            ["backpacks", "A3M_Backpacks"],
            ["suppressors", "A3M_Suppressors"],
            ["optics", "A3M_Optics"],
            ["rifles", "A3M_Rifles"],
            ["pistols", "A3M_Pistols"],
            ["launchers", "A3M_Launchers"],
            ["magazines", "A3M_Magazine"],
            ["grenades", "A3M_Grenade"],
            ["smoke-grenades", "A3M_SmokeGrenades"]
        ];

        // Get config class name or fallback to default
        private _configClassName = _uiToConfigMap getOrDefault [_requestedCategory, "A3M_Items"];
        if (isNil "_configClassName") then {
            diag_log format ["[A3M] Store: Unknown category '%1', defaulting to A3M_Items", _requestedCategory];
            _configClassName = "A3M_Items";
        };

        // Parse items from config for this category and mod
        A3M_StoreClass call ["parse", [_configClassName, _requestedMod]];

        // Retrieve parsed item data
        private _itemData = A3M_StoreClass get _requestedCategory;
        private _itemDataJson = toJSON _itemData;

        diag_log format ["[A3M] Store: Sending %1 items for %2 (mod: %3)", count _itemData, _requestedCategory, _requestedMod];

        // Escape JSON string for safe JavaScript execution
        private _escapedJson = _itemDataJson;
        _escapedJson = [_escapedJson, "\\", "\\\\"] call CBA_fnc_replace;  // Escape backslashes
        _escapedJson = [_escapedJson, "'", "\'"] call CBA_fnc_replace;        // Escape quotes

        // Send item data to UI
        _control ctrlWebBrowserAction ["ExecJS", format ["displayCategoryItems('%1', '%2');", _requestedCategory, _escapedJson]];
    };
    // Handle item purchase request
    case "purchase::store::item": {
        private _itemClass = _eventData get "className";
        private _itemDisplayName = _eventData get "displayName";
        private _itemPrice = _eventData get "price";

        diag_log format ["[A3M] Store: Purchase request - %1 (%2) - $%3", _itemDisplayName, _itemClass, _itemPrice];

        // Execute purchase through StoreClass
        A3M_StoreClass call ["buy", [_itemClass, _itemDisplayName, _itemPrice]];
    };

    // Unknown event type
    default {
        diag_log format ["[A3M] Store: Unhandled event type '%1'", _eventType];
    };
};

true;
