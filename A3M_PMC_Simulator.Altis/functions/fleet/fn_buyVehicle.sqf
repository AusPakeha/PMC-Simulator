params ["_vehicleClass", "_displayName", "_spawnMarker"];

private _rank = rank player;
private _price = missionNamespace getVariable [_vehicleClass, 0];

if ((B_DefenseBudget < _price) or (_rank != B_MaxRank)) then {
    hint format [
        "You cannot do this, either due to financial reasons (Cost: $%1) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers.",
        _price
    ];
} else {
    private _vehicle = _vehicleClass createVehicle (getMarkerPos _spawnMarker);

    B_DefenseBudget = (B_DefenseBudget - _price);
    publicVariable "B_DefenseBudget";
    B_TotalCost = (B_TotalCost + _price);
    publicVariable "B_TotalCost";

    hint format ["You have purchased %1 for $%2", _displayName, _price];

    [] call DoBudget;
    [] call DoTotal;

    clearWeaponCargoGlobal _vehicle;
    clearMagazineCargoGlobal _vehicle;
};
