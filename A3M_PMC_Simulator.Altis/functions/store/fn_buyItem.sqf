params ["_item", "_displayName", "_Deliveries"];

private _rank = rank player;
private _price = missionNamespace getVariable [_item, 0];

if (wallet < _price) then {
    hint format [
        "You cannot do this due to financial reasons (Cost: $%1).",
        _price
    ];
} else {
    private _items = _Deliveries AddItemCargoGlobal (_item, 1);

    wallet = (wallet - _price);
    publicVariable "wallet";
    B_TotalCost = (B_TotalCost + _price);
    publicVariable "B_TotalCost";

    hint format ["You have purchased %1 for $%2", _displayName, _price];

    [] call DoBudget;
    [] call DoTotal;

    clearWeaponCargoGlobal _vehicle;
    clearMagazineCargoGlobal _vehicle;
};
