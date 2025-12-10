private _rank = rank player;

switch (TheSelection) do {
    case 2: {
        if ((B_DefenseBudget < RHS_Su25SM_vvs ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Su25SM_vvs ]
        } else {
            _MATV = "RHS_Su25SM_vvs" createVehicle (getMarkerPos"airspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Su25SM_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Su25SM_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS (VVS grey) Su-25SM for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Su25SM_vvs ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 3: {
        if ((B_DefenseBudget < RHS_Su25SM_vvsc ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Su25SM_vvsc ]
        } else {
            _MATV = "RHS_Su25SM_vvsc" createVehicle (getMarkerPos"airspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Su25SM_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Su25SM_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS (VVS camo) Su-25SM for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Su25SM_vvsc ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 4: {
        if ((B_DefenseBudget < rhs_a10 ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_a10 ]
        } else {
            _MATV = "rhs_a10" createVehicle (getMarkerPos"airspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_a10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_a10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) A-10A Thunderbolt II for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_a10 ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 5: {
        if ((B_DefenseBudget < RHS_C130J ) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_C130J ]
        } else {
            _MATV = "RHS_C130J" createVehicle (getMarkerPos"airspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_C130J);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_C130J);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) Hercules C-130J for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_C130J ];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
