params [["_vehicleClass", "", [""]], ["_displayName", "", [""]], ["_price", 0, [0]], ["_spawnMarker", "vehspawn", [""]]];

private _pos = getMarkerPos _spawnMarker;
private _finalPrice = [_price] call A3M_handle_number;
private _rank = rank player;

if ((B_DefenseBudget < _price) or (_rank != B_MaxRank)) then {
    hint format [
        "You cannot do this, either due to financial reasons (Cost: $%1) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers.",
        _finalPrice
    ];
} else {
    private _vehicle = _vehicleClass createVehicle _pos;

    B_DefenseBudget = (B_DefenseBudget - _price);
    publicVariable "B_DefenseBudget";
    B_TotalCost = (B_TotalCost + _price);
    publicVariable "B_TotalCost";

    [] call DoBudget;
    [] call DoTotal;

    clearWeaponCargoGlobal _vehicle;
    clearMagazineCargoGlobal _vehicle;
};
