if (isNil "TheSelection") exitWith {
    hint "Nothing was selected to purchase!";
};

[1575, TheSelection] call A3M_fnc_handleFleetPurchase;
