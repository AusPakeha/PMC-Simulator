private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < B_Plane_CAS_01_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Plane_CAS_01_F]
        } else {
            _MATV = "B_Plane_CAS_01_F" createVehicle (getMarkerPos "airspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Plane_CAS_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Plane_CAS_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) A-164 Wipeout Anti-Tank Aircraft for $%1, your aircraft will be delivered to the C-12 Airfield.", B_Plane_CAS_01_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 1: {
        if ((B_DefenseBudget < O_Plane_CAS_02_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, O_Plane_CAS_02_F]
        } else {
            _MATV = "O_Plane_CAS_02_F" createVehicle (getMarkerPos "airspawn");
            B_DefenseBudget = (B_DefenseBudget - O_Plane_CAS_02_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + O_Plane_CAS_02_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) To-199 Neophron for $%1, your aircraft will be delivered to the C-12 Airfield.", O_Plane_CAS_02_F];

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