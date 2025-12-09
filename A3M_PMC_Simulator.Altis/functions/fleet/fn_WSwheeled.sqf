private _rank = rank player;

switch (TheSelection) do {
    case 6: {
        if ((B_DefenseBudget < B_ION_Quadbike_01_lxWS) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Quadbike_01_lxWS]
        } else {
            _MATV = "B_ION_Quadbike_01_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Quadbike_01_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Quadbike_01_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC ATV for $%1", B_ION_Quadbike_01_lxWS ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 7: {
        if ((B_DefenseBudget < B_ION_Offroad_lxWS) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Offroad_lxWS]
        } else {
            _MATV = "B_ION_Offroad_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Offroad_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Offroad_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Offroad for $%1", B_ION_Offroad_lxWS ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 8: {
        if ((B_DefenseBudget < B_ION_Offroad_armed_lxWS) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Offroad_armed_lxWS]
        } else {
            _MATV = "B_ION_Offroad_armed_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Offroad_armed_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Offroad_armed_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Offroad (HMG) for $%1", B_ION_Offroad_armed_lxWS ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 9: {
        if ((B_DefenseBudget < B_ION_Truck_02_covered_lxWS) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Truck_02_covered_lxWS]
        } else {
            _MATV = "B_ION_Truck_02_covered_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Truck_02_covered_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Truck_02_covered_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC KamAZ Transport (Covered) for $%1", B_ION_Truck_02_covered_lxWS ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};