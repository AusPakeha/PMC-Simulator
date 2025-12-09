private _rank = rank player;

switch (TheSelection) do {
    case 6: {
        if ((B_DefenseBudget < B_ION_Pickup_rf) or (_rank != B_MaxRank)) then {
            diag_log format ["[A3M Store] Vehicle Cost: %1, Defense Budge: %2, Max Rank: %3, Player Rank: %4", B_ION_Pickup_rf, B_DefenseBudget, B_MaxRank, _rank];
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Pickup_rf]
        } else {
            _MATV = "B_ION_Pickup_rf" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Pickup_rf);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Pickup_rf);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Ram 1500 for $%1", B_ION_Pickup_rf ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 7: {
        if ((B_DefenseBudget < B_ION_Pickup_mmg_rf) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Pickup_mmg_rf]
        } else {
            _MATV = "B_ION_Pickup_mmg_rf" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Pickup_mmg_rf);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Pickup_mmg_rf);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Ram 1500 (MMG) for $%1", B_ION_Pickup_mmg_rf ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 8: {
        if ((B_DefenseBudget < B_ION_Pickup_rcws_rf) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Pickup_rcws_rf]
        } else {
            _MATV = "B_ION_Pickup_rcws_rf" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Pickup_rcws_rf);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Pickup_rcws_rf);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Ram 1500 (RCWS) for $%1", B_ION_Pickup_rcws_rf ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 9: {
        if ((B_DefenseBudget < B_ION_Pickup_aat_rf) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Pickup_aat_rf]
        } else {
            _MATV = "B_ION_Pickup_aat_rf" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Pickup_aat_rf);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Pickup_aat_rf);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Ram 1500 (AA) for $%1", B_ION_Pickup_aat_rf ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
