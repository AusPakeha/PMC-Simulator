private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < B_MRAP_01_F ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_MRAP_01_F ]
        } else {
            _MATV = "B_MRAP_01_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_MRAP_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_MRAP_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MAT-V Unarmed Vehicle for $%1", B_MRAP_01_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 1: {
        if ((B_DefenseBudget < B_MRAP_01_hmg_F ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_MRAP_01_hmg_F ]
        } else {
            _MATV = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_MRAP_01_hmg_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_MRAP_01_hmg_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MAT-V Armed (.50 HMG) for $%1", B_MRAP_01_hmg_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 2: {
        if ((B_DefenseBudget < B_MRAP_01_gmg_F ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_MRAP_01_gmg_F ]
        } else {
            _MATV = "B_MRAP_01_gmg_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_MRAP_01_gmg_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_MRAP_01_gmg_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MAT-V Armed (40mm GMG) for $%1", B_MRAP_01_gmg_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 3: {
        if ((B_DefenseBudget < B_Truck_01_covered_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Truck_01_covered_F]
        } else {
            _MATV = "B_Truck_01_covered_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Truck_01_covered_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +  B_Truck_01_covered_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) HEMTT Troop Transport - Covered for $%1", B_Truck_01_covered_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 4: {
        if ((B_DefenseBudget < B_Truck_01_transport_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Truck_01_transport_F]
        } else {
            _MATV = "B_Truck_01_transport_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Truck_01_transport_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +  B_Truck_01_transport_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) HEMTT Troop Transport - Open for $%1", B_Truck_01_transport_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 5: {
        if ((B_DefenseBudget < B_Quadbike_01_F ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Quadbike_01_F ]
        } else {
            _MATV = "B_Quadbike_01_F" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Quadbike_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Quadbike_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ATV for $%1", B_Quadbike_01_F ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    default {
        hint"Something went wrong...Couldn't find case for selection!"
    };
};
