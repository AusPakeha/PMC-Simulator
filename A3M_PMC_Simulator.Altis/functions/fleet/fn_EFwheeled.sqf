private _rank = rank player;

switch (TheSelection) do {
    case 6: {
        if ((B_DefenseBudget < EF_B_Quadbike_01_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Quadbike_01_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Quadbike_01_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Quadbike_01_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Quadbike_01_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF ATV for $%1", EF_B_Quadbike_01_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 7: {
        if ((B_DefenseBudget < EF_B_Pickup_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Pickup_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Pickup_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Pickup_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Pickup_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF Ram 1500 for $%1", EF_B_Pickup_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 8: {
        if ((B_DefenseBudget < EF_B_Pickup_Comms_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Pickup_Comms_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Pickup_Comms_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Pickup_Comms_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Pickup_Comms_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF Ram 1500 (Comms) for $%1", EF_B_Pickup_Comms_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 9: {
        if ((B_DefenseBudget < EF_B_Pickup_mmg_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Pickup_mmg_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Pickup_mmg_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Pickup_mmg_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Pickup_mmg_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF Ram 1500 (MMG) for $%1", EF_B_Pickup_mmg_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 10: {
        if ((B_DefenseBudget < EF_B_MRAP_01_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV for $%1", EF_B_MRAP_01_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 11: {
        if ((B_DefenseBudget < EF_B_MRAP_01_gmg_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_gmg_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_gmg_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_gmg_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_gmg_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV (GMG) for $%1", EF_B_MRAP_01_gmg_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 12: {
        if ((B_DefenseBudget < EF_B_MRAP_01_hmg_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_hmg_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_hmg_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_hmg_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_hmg_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV (HMG) for $%1", EF_B_MRAP_01_hmg_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 13: {
        if ((B_DefenseBudget < EF_B_MRAP_01_AT_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_AT_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_AT_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_AT_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_AT_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV (AT) for $%1", EF_B_MRAP_01_AT_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 14: {
        if ((B_DefenseBudget < EF_B_MRAP_01_FSV_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_FSV_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_FSV_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_FSV_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_FSV_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV (FSV) for $%1", EF_B_MRAP_01_FSV_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 15: {
        if ((B_DefenseBudget < EF_B_MRAP_01_LAAD_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_MRAP_01_LAAD_MJTF_Wdl]
        } else {
            _MATV = "EF_B_MRAP_01_LAAD_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_MRAP_01_LAAD_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_MRAP_01_LAAD_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF M-ATV (LAAD) for $%1", EF_B_MRAP_01_LAAD_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 16: {
        if ((B_DefenseBudget < EF_B_Truck_01_transport_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Truck_01_transport_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Truck_01_transport_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Truck_01_transport_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Truck_01_transport_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF HEMTT Transport for $%1", EF_B_Truck_01_transport_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 17: {
        if ((B_DefenseBudget < EF_B_Truck_01_covered_MJTF_Wdl) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Truck_01_covered_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Truck_01_covered_MJTF_Wdl" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Truck_01_covered_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Truck_01_covered_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF HEMTT Transport (Covered) for $%1", EF_B_Truck_01_covered_MJTF_Wdl ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
