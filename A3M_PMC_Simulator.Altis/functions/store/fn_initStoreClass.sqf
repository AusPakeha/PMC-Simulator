/*
 * Store Management Class
 * Handles item inventory, parsing, and purchases
 */

A3M_StoreClass = createHashMapObject [[
    ["#type", "IStoreClass"],

    /*
     * Constructor - Initialize category arrays
     */
    ["#create", {
        // Initialize empty arrays for each category
        _self set ["items", []];
        _self set ["medical", []];
        _self set ["electronics", []];
        _self set ["vests", []];
        _self set ["uniforms", []];
        _self set ["headgear", []];
        _self set ["backpacks", []];
        _self set ["suppressors", []];
        _self set ["optics", []];
        _self set ["rifles", []];
        _self set ["pistols", []];
        _self set ["launchers", []];
        _self set ["magazines", []];
        _self set ["grenades", []];
        _self set ["smokeGrenades", []];
    }],

    /*
     * Determine item type based on config
     * @param _itemClass - Item classname
     * @return String - "item", "magazine", "backpack", "weapon"
     */
    ["getItemType", {
        params ["_itemClass"];
        private _type = "item";

        if (isClass (configFile >> "CfgMagazines" >> _itemClass)) then {
            _type = "magazine";
        } else {
            if (isClass (configFile >> "CfgVehicles" >> _itemClass)) then {
                // Check if it is a backpack
                if (getNumber (configFile >> "CfgVehicles" >> _itemClass >> "isBackpack") == 1) then {
                    _type = "backpack";
                } else {
                     // Default to backpack if in CfgVehicles and not explicitly excluded (legacy behavior)
                     _type = "backpack";
                };
            } else {
                if (isClass (configFile >> "CfgWeapons" >> _itemClass)) then {
                     if (isClass (configFile >> "CfgWeapons" >> _itemClass >> "ItemInfo") || _itemClass isKindOf ["Binocular", configFile >> "CfgWeapons"]) then {
                         _type = "item";
                     } else {
                         _type = "weapon";
                     };
                };
            };
        };
        _type
    }],

    /*
     * Get the nearest delivery box
     * @return Object - The nearest delivery box or objNull
     */
    ["getNearestDeliveryBox", {
        private _deliveriesBoxes = allMissionObjects "All" select {
            private _varName = vehicleVarName _x;
            if (isNil "_varName") then { _varName = ""; };
            _varName find "deliveries" == 0
        };

        if (_deliveriesBoxes isEqualTo []) exitWith { objNull };

        private _nearestBox = _deliveriesBoxes select 0;
        private _nearestDistance = player distance _nearestBox;

        {
            private _dist = player distance _x;
            if (_dist < _nearestDistance) then {
                _nearestBox = _x;
                _nearestDistance = _dist;
            };
        } forEach _deliveriesBoxes;

        _nearestBox
    }],

    /*
     * Check if player can afford the item
     * @param _price - Cost
     * @return Boolean
     */
    ["canAfford", {
        params ["_price"];
        if (isNil "Wallet") then { Wallet = 0; };
        Wallet >= _price
    }],

    /*
     * Deduct funds from player wallet
     * @param _price - Amount to deduct
     */
    ["deductFunds", {
        params ["_price"];
        if (isNil "Wallet") then { Wallet = 0; };
        Wallet = (Wallet - _price);
        profileNamespace setVariable ["SavedMoney", Wallet];
        saveProfileNamespace;
    }],

    /*
     * Get delivery time from params or global
     * @return Number - Time in seconds
     */
    ["getDeliveryTime", {
        private _time = 0;
        if (!isNil "DeliveryTime") then {
            _time = DeliveryTime;
        } else {
            if (!isNil "paramsArray") then {
                 if (count paramsArray > 3) then {
                     _time = paramsArray select 3;
                 };
            };
            // Set global for future use (legacy behavior)
            DeliveryTime = _time;
        };
        _time
    }],

    /*
     * Deliver the item to the box
     * @param _box - Container object
     * @param _item - Item classname
     * @param _type - Item type
     * @param _displayName - Item display name
     */
    ["deliverItem", {
        params ["_box", "_item", "_type", "_displayName"];

        switch (_type) do {
            case "item": {
                _box addItemCargoGlobal [_item, 1];
                hint format ["Mail Call: Your Item %1 has arrived in the deliveries box", _displayName];
            };
            case "weapon": {
                _box addWeaponCargoGlobal [_item, 1];
                hint format ["Mail Call: Your Weapons %1 has arrived in the deliveries box", _displayName];
            };
            case "magazine": {
                _box addMagazineCargoGlobal [_item, 1];
                hint format ["Mail Call: Your Magazine %1 has arrived in the deliveries box", _displayName];
            };
            case "backpack": {
                _box addBackpackCargoGlobal [_item, 1];
                hint format ["Mail Call: Your Backpack %1 has arrived in the deliveries box", _displayName];
            };
            default {
                _box addItemCargoGlobal [_item, 1];
                hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
            };
        };
    }],

    /*
     * Parse items from config for a specific category and mod
     * @param _configCategory - Config class name (e.g., "A3M_Items")
     * @param _modId - Mod identifier (e.g., "a3", "rhs", "ef")
     */
    ["parse", {
        params [["_configCategory", "A3M_Items"], ["_modId", "a3"]];

        // Map config class names to UI category keys
        private _categoryMap = createHashMapFromArray [
            ["A3M_Items", "items"],
            ["A3M_Medical", "medical"],
            ["A3M_Electronic", "electronics"],
            ["A3M_Vests", "vests"],
            ["A3M_Uniforms", "uniforms"],
            ["A3M_Headgear", "headgear"],
            ["A3M_Backpacks", "backpacks"],
            ["A3M_Suppressors", "suppressors"],
            ["A3M_Optics", "optics"],
            ["A3M_Rifles", "rifles"],
            ["A3M_Pistols", "pistols"],
            ["A3M_Launchers", "launchers"],
            ["A3M_Magazine", "magazines"],
            ["A3M_Grenade", "grenades"],
            ["A3M_SmokeGrenades", "smoke-grenades"]
        ];

        private _categoryKey = _categoryMap getOrDefault [_configCategory, "items"];
        private _itemList = [];

        // Read item data from CfgStore config
        private _storeConfig = missionConfigFile >> "CfgStore" >> "Store" >> _configCategory;
        private _modItems = getArray (_storeConfig >> _modId);

        // Parse each item entry
        {
            _x params ["_itemClass", "_itemPrice"];

            // Determine Config Type and Item Type using helper method
            private _itemType = _self call ["getItemType", [_itemClass]];

            // Determine Config Root for display info
            private _configRoot = configFile >> "CfgWeapons";
            if (_itemType == "magazine") then { _configRoot = configFile >> "CfgMagazines"; };
            if (_itemType == "backpack") then { _configRoot = configFile >> "CfgVehicles"; };
            if (_itemType == "item" && isClass (configFile >> "CfgGlasses" >> _itemClass)) then { _configRoot = configFile >> "CfgGlasses"; };

            // Get display info
            private _displayName = getText (_configRoot >> _itemClass >> "displayName");
            private _picture = getText (_configRoot >> _itemClass >> "picture");

            // Create item data structure for UI
            private _itemData = createHashMap;
            _itemData set ["className", _itemClass];
            _itemData set ["displayName", _displayName];
            _itemData set ["price", _itemPrice];
            _itemData set ["image", _picture];
            _itemData set ["type", _itemType]; // Store type for purchase logic

            _itemList pushBack _itemData;
        } forEach _modItems;

        // Store parsed items in the category
        _self set [_categoryKey, _itemList];

        diag_log format ["[A3M] Store: Parsed %1 items for %2 (mod: %3)", count _itemList, _categoryKey, _modId];
    }],

    /*
     * Purchase an item
     * @param _itemClass - Item classname
     * @param _displayName - Display name
     * @param _price - Cost
     */
    ["buy", {
        params ["_itemClass", "_displayName", "_price"];

        // Determine type (if not passed, we detect it again)
        private _type = _self call ["getItemType", [_itemClass]];

        // Spawn purchase process
        [_self, _itemClass, _displayName, _price, _type] spawn {
            params ["_self", "_itemClass", "_displayName", "_price", "_type"];

            // 1. Check Affordability
            if (!(_self call ["canAfford", [_price]])) exitWith {
                hint format ["You cannot do this due to financial reasons (Cost: $%1).", _price];
            };

            // 2. Check Delivery Box Availability
            private _box = _self call ["getNearestDeliveryBox"];
            if (isNull _box) exitWith {
                hint "No delivery boxes found on the map.";
            };

            // 3. Process Payment
            _self call ["deductFunds", [_price]];
            hint format ["You have purchased %1 for $%2", _displayName, _price];

            // 4. Delivery Delay
            private _deliveryTime = _self call ["getDeliveryTime"];
            sleep _deliveryTime;

            // 5. Deliver Item
            _self call ["deliverItem", [_box, _itemClass, _type, _displayName]];
        };
    }]
]];

// Register class globally
missionNamespace setVariable ["A3M_StoreClass", A3M_StoreClass];
A3M_StoreClass;
