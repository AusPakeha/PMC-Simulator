params ["_item", "_displayName", "_type"];

private _rank = rank player;
private _price = missionNamespace getVariable [_item, 0];

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

    [] call DoBudget;
    [] call DoTotal;

    sleep DeliveryTime;

    switch (_type) do {
        case "item": {
            Deliveries addItemCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        case "weapon": {
            Deliveries addWeaponCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        case "magazine": {
            Deliveries addMagazineCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
        case "backpack": {
            Deliveries addBackpackCargoGlobal [_item, 1];
            hint format ["Mail Call: Your %1 has arrived in the deliveries box", _displayName];
        };
    };
};
