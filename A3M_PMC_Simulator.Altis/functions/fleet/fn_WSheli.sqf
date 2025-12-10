private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        if ((B_DefenseBudget < B_ION_Heli_Light_02_dynamicLoadout_lxWS) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Heli_Light_02_dynamicLoadout_lxWS]
        } else {
            _MATV = "B_ION_Heli_Light_02_dynamicLoadout_lxWS" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Heli_Light_02_dynamicLoadout_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Heli_Light_02_dynamicLoadout_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Kasatka (UP), your aircraft will be delivered to the C-12 Airfield.", B_ION_Heli_Light_02_dynamicLoadout_lxWS];

            [] call DoBudget;
            [] call DoTotal;
            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 6: {
        if ((B_DefenseBudget < B_ION_Heli_Light_02_unarmed_lxWS) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Heli_Light_02_unarmed_lxWS]
        } else {
            _MATV = "B_ION_Heli_Light_02_unarmed_lxWS" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Heli_Light_02_unarmed_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Heli_Light_02_unarmed_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) Kasatka (UP, Unarmed), your aircraft will be delivered to the C-12 Airfield.", B_ION_Heli_Light_02_unarmed_lxWS];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
