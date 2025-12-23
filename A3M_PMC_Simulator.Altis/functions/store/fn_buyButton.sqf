if (isNil "TheSelection") exitWith {
    hint "Nothing was selected to purchase!";
};

[1850, TheSelection] call A3M_fnc_handleItemPurchase;
