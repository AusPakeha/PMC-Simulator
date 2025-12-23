params [["_item", "", [""]], ["_displayName", "", [""]], ["_price", 0, [0]], ["_type", "", [""]]];

if (Wallet < _price) then {
    hint format [
        "You cannot do this due to financial reasons (Cost: $%1).",
        _price
    ];
} else {
    Wallet = (Wallet - _price);
    profileNamespace setVariable ["SavedMoney", Wallet];
    saveProfileNamespace;

    hint format ["You have purchased %1 for $%2", _displayName, _price];

    sleep DeliveryTime;

    switch (_type) do {
        // All Items, Uniforms, Vests, Headgear, etc.
        case "item": {
            deliveries addItemCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        // All Weapons
        case "weapon": {
            deliveries addWeaponCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        // All Magazines
        case "magazine": {
            deliveries addMagazineCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        // All Backpacks
        case "backpack": {
            deliveries addBackpackCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        default {
            deliveries addItemCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
    };
};
