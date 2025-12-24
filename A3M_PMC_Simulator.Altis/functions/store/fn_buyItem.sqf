params [["_item", "", [""]], ["_displayName", "", [""]], ["_price", 0, [0]], ["_type", "", [""]]];

if (Wallet < _price) then {
    hint format [
        "You cannot do this due to financial reasons (Cost: $%1).",
        _price
    ];
} else {
    private _deliveriesBoxes = allMissionObjects "All" select {
        private _varName = vehicleVarName _x;
        _varName find "deliveries" == 0
    };

    if (_deliveriesBoxes isEqualTo []) exitWith { hint "No delivery boxes found on the map."; };

    private _nearestBox = _deliveriesBoxes select 0;
    private _nearestDistance = player distance _nearestBox;

    {
        private _dist = player distance _x;
        if (_dist < _nearestDistance) then {
            _nearestBox = _x;
            _nearestDistance = _dist;
        };
    } forEach _deliveriesBoxes;

    Wallet = (Wallet - _price);
    profileNamespace setVariable ["SavedMoney", Wallet];
    saveProfileNamespace;

    hint format ["You have purchased %1 for $%2", _displayName, _price];

    sleep DeliveryTime;

    switch (_type) do {
        // All Items, Uniforms, Vests, Headgear, etc.
        case "item": {
            _nearestBox addItemCargoGlobal [_item, 1];
            hint format ["Mail Call: Your Item %1 has arrived in the deliveries box", _displayName];
        };
        // All Weapons
        case "weapon": {
            _nearestBox addWeaponCargoGlobal [_item, 1];
            hint format ["Mail Call: Your Weapons %1 has arrived in the deliveries box", _displayName];
        };
        // All Magazines
        case "magazine": {
            _nearestBox addMagazineCargoGlobal [_item, 1];
            hint format ["Mail Call: Your Magazine %1 has arrived in the deliveries box", _displayName];
        };
        // All Backpacks
        case "backpack": {
            _nearestBox addBackpackCargoGlobal [_item, 1];
            hint format ["Mail Call: Your Backpack %1 has arrived in the deliveries box", _displayName];
        };
        default {
            _nearestBox addItemCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
    };
};
