private _rank = rank player;

switch (TheSelection) do {
    case 6: {
        if ((B_DefenseBudget < rhs_gaz66_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_gaz66_msv]
        } else {
            _MATV = "rhs_gaz66_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_gaz66_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_gaz66_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) GAZ-66 for $%1", rhs_gaz66_msv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 7: {
        if ((B_DefenseBudget < rhs_gaz66o_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_gaz66o_msv]
        } else {
            _MATV = "rhs_gaz66o_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_gaz66o_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_gaz66o_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) GAZ-66 (Open) for $%1", rhs_gaz66o_msv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 8: {
        if ((B_DefenseBudget < rhs_gaz66_r142_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_gaz66_r142_msv]
        } else {
            _MATV = "rhs_gaz66_r142_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_gaz66_r142_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_gaz66_r142_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) GAZ-66 (R-142N) for $%1", rhs_gaz66_r142_msv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 9: {
        if ((B_DefenseBudget < rhs_gaz66_ap2_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_gaz66_ap2_msv]
        } else {
            _MATV = "rhs_gaz66_ap2_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_gaz66_ap2_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_gaz66_ap2_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) GAZ-66 (AP-2) for $%1", rhs_gaz66_ap2_msv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 10: {
        if ((B_DefenseBudget < rhs_gaz66_repair_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_gaz66_repair_msv]
        } else {
            _MATV = "rhs_gaz66_repair_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_gaz66_repair_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_gaz66_repair_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) GAZ-66 (ESB-8IM) for $%1", rhs_gaz66_repair_msv ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 11: {
        if ((B_DefenseBudget < rhs_typhoon_vdv ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_typhoon_vdv ]
        } else {
            _MATV = "rhs_typhoon_vdv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_typhoon_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_typhoon_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)Kamaz-63968for $%1", rhs_typhoon_vdv ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 12: {
        if ((B_DefenseBudget < rhs_uaz_msv ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uaz_msv ]
        } else {
            _MATV = "rhs_uaz_vdv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uaz_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uaz_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)UAZ-469 for $%1", rhs_uaz_msv ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 13: {
        if ((B_DefenseBudget < rhs_ural_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ural_msv]
        } else {
            _MATV = "rhs_ural_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ural_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ural_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) URAL-4320 for $%1", rhs_ural_msv ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 14: {
        if ((B_DefenseBudget < rhs_ural_open_msv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ural_open_msv]
        } else {
            _MATV = "rhs_ural_open_msv" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ural_open_msv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ural_open_msv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) URAL-4320 (Open) for $%1", rhs_ural_open_msv ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 15: {
        if ((B_DefenseBudget < rhsusf_m1025_w) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m1025_w]
        } else {
            _MATV = "rhsusf_m1025_w" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m1025_w);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m1025_w);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army - Woodland ) M1025A2 (Unarmed) for $%1", rhsusf_m1025_w];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 16: {
        if ((B_DefenseBudget < rhsusf_m1025_w_s) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m1025_w_s]
        } else {
            _MATV = "rhsusf_m1025_w_s" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m1025_w_s);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_m1025_w_s);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC - Woodland ) M1025A2 (Unarmed/Snorkel) for $%1", rhsusf_m1025_w_s ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 17: {
        if ((B_DefenseBudget < rhsusf_m1025_w_m2) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m1025_w_m2]
        } else {
            _MATV = "rhsusf_m1025_w_m2" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m1025_w_m2);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_m1025_w_m2);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army - Woodland) M1025A2 (M2) for $%1", rhsusf_m1025_w_m2];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 18: {
        if ((B_DefenseBudget < rhsusf_m1025_w_s_m2) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m1025_w_s_m2]
        } else {
            _MATV = "rhsusf_m1025_w_s_m2" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m1025_w_s_m2);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m1025_w_s_m2);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland )M1025A2 (M2/Snorkel)for $%1", rhsusf_m1025_w_s_m2];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 19: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_wd_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_wd_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_wd_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget -rhsusf_M1078A1P2_wd_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1078A1P2_wd_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (Army 2014) M1078A1P2for $%1", rhsusf_M1078A1P2_wd_fmtv_usarmy];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 20: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_wd_open_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_wd_open_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_wd_open_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_wd_open_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_wd_open_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2 (Open) for $%1", rhsusf_M1078A1P2_wd_open_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 21: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (Army 2014) M1078A1P2 (Flatbed)for $%1", rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 22: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_wd_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_wd_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_wd_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_wd_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_B_wd_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2-B for $%1", rhsusf_M1078A1P2_B_wd_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 23: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014)M1078A1P2-B (Open) for $%1", rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 24: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2-B (Flatbed) for $%1", rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 25: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2-B (M2) for $%1", rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 26: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2-B (M2/Open) for $%1", rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 27: {
        if ((B_DefenseBudget < rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy]
        } else {
            _MATV = "rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) M1078A1P2-B (M2/Flatbed) for $%1", rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 28: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_wd_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_wd_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_wd_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_wd_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_wd_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010)M1083A1P2 for $%1", rhsusf_M1083A1P2_wd_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 29: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10 ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10 ]
        } else {
            _MATV = " rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) M1083A1P2 (Open) for $%1", rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 30: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010)M1083A1P2 (Flatbed) for $%1", rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 31: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) M1083A1P2-B for $%1", rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 32: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) M1083A1P2-B (Open) for $%1", rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 33: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) M1083A1P2-B (Flatbed) for $%1", rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 34: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10 ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10 ]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (Army 2010) M1083A1P2-B (M2)for $%1", rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 35: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) M1083A1P2-B (M2/Open) for $%1", rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 36: {
        if ((B_DefenseBudget < rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10]
        } else {
            _MATV = "rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (Army 2010) M1083A1P2-B (M2/Flatbed)for $%1", rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 37: {
        if ((B_DefenseBudget < rhsusf_m998_w_4dr) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_4dr]
        } else {
            _MATV = "rhsusf_m998_w_4dr" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_4dr);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_m998_w_4dr);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army - Woodland) M1097A2, 2dr cgo/trp carr, open for $%1", rhsusf_m998_w_4dr ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 38: {
        if ((B_DefenseBudget < rhsusf_m998_w_4dr_halftop) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_4dr_halftop]
        } else {
            _MATV = "rhsusf_m998_w_4dr_halftop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_4dr_halftop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_m998_w_4dr_halftop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army - Woodland) M1097A2, 2dr cgo/trp carr, halfsoftop for $%1", rhsusf_m998_w_4dr_halftop ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 39: {
        if ((B_DefenseBudget < rhsusf_m998_w_4dr_fulltop) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_4dr_fulltop]
        } else {
            _MATV = "rhsusf_m998_w_4dr_fulltop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_4dr_fulltop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_m998_w_4dr_fulltop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army - Woodland) M1097A2, 2dr cgo/trp carr, softop for $%1", rhsusf_m998_w_4dr_fulltop];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 40: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_2dr) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_2dr]
        } else {
            _MATV = "rhsusf_m998_w_s_2dr" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_2dr);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_2dr);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 2dr cgo/trp carr, open w/ snorkelfor $%1", rhsusf_m998_w_s_2dr];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 41: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_2dr_halftop) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_2dr_halftop]
        } else {
            _MATV = "rhsusf_m998_w_s_2dr_halftop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_2dr_halftop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_2dr_halftop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 2dr cgo/trp carr, halfsoftop w/ snorkelfor $%1", rhsusf_m998_w_s_2dr_halftop];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 42: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_2dr_fulltop ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_2dr_fulltop ]
        } else {
            _MATV = "rhsusf_m998_w_s_2dr_fulltop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_2dr_fulltop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_2dr_fulltop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 2dr cgo/trp carr, softop w/ snorkelfor $%1", rhsusf_m998_w_s_2dr_fulltop ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 43: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_4dr) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_4dr]
        } else {
            _MATV = "rhsusf_m998_w_s_4dr" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_4dr);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_4dr);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 4dr cgo/trp carr, open w/ snorkelfor $%1", rhsusf_m998_w_s_4dr];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 44: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_4dr_halftop) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_4dr_halftop]
        } else {
            _MATV = "rhsusf_m998_w_s_4dr_halftop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_4dr_halftop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_4dr_halftop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 4dr cgo/trp carr, halfsoftop w/ snorkelfor $%1", rhsusf_m998_w_s_4dr_halftop];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 45: {
        if ((B_DefenseBudget < rhsusf_m998_w_s_4dr_fulltop) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_m998_w_s_4dr_fulltop]
        } else {
            _MATV = "rhsusf_m998_w_s_4dr_fulltop" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_m998_w_s_4dr_fulltop);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_m998_w_s_4dr_fulltop);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC - Woodland)M1123, 4dr cgo/trp carr, softop w/ snorkelfor $%1", rhsusf_m998_w_s_4dr_fulltop];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 46: {
        if ((B_DefenseBudget < rhsusf_rg33_wd) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_wd]
        } else {
            _MATV = "rhsusf_rg33_wd" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_wd);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_rg33_wd);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010)Woodland RG-33 (Unarmed) for $%1", rhsusf_rg33_wd ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 47: {
        if ((B_DefenseBudget < rhsusf_rg33_m2_wd) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_m2_wd]
        } else {
            _MATV = "rhsusf_rg33_m2_wd" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_m2_wd);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_rg33_m2_wd);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) Woodland RG-33 (M2) for $%1", rhsusf_rg33_m2_wd ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 48: {
        if ((B_DefenseBudget < rhsusf_rg33_usmc_wd ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_usmc_wd ]
        } else {
            _MATV = "rhsusf_rg33_usmc_wd" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_usmc_wd);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost +rhsusf_rg33_usmc_wd);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an)USA (USMC 2010) Woodland RG-33 (Unarmed)for $%1", rhsusf_rg33_usmc_wd ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 49: {
        if ((B_DefenseBudget < rhsusf_rg33_m2_usmc_wd) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_m2_usmc_wd]
        } else {
            _MATV = "rhsusf_rg33_m2_usmc_wd" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_m2_usmc_wd);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_rg33_m2_usmc_wd);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC 2010)Woodland RG-33 (M2) for $%1", rhsusf_rg33_m2_usmc_wd];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 50: {
        if ((B_DefenseBudget < rhsusf_rg33_usmc_d) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_d]
        } else {
            _MATV = "rhsusf_rg33_d" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_d);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_rg33_d);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) RG-33 (Unarmed) for $%1", rhsusf_rg33_d];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 51: {
        if ((B_DefenseBudget < rhsusf_rg33_m2_usmc_d) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_m2_d]
        } else {
            _MATV = "rhsusf_rg33_m2_d" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_m2_d);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_rg33_m2_d);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) RG-33 (M2) for $%1", rhsusf_rg33_m2_d ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 52: {
        if ((B_DefenseBudget < rhsusf_rg33_usmc_d) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_rg33_usmc_d]
        } else {
            _MATV = "rhsusf_rg33_usmc_d" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_rg33_usmc_d);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_rg33_usmc_d);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC 2010) RG-33 (Unarmed) for $%1", rhsusf_rg33_usmc_d ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
