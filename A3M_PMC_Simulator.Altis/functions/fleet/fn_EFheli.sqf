private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        _rank = rank player;
        if ((B_DefenseBudget < EF_B_Heli_Transport_01_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Heli_Transport_01_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Heli_Transport_01_MJTF_Wdl" createVehicle (getMarkerPos"chspaw n");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Heli_Transport_01_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Heli_Transport_01_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF UH-80 Ghost Hawk, your aircraft will be delivered to the C-12 Airfield.", EF_B_Heli_Transport_01_MJTF_Wdl];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 6: {
        _rank = rank player;
        if ((B_DefenseBudget < EF_B_Heli_Transport_01_pylons_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_Heli_Transport_01_pylons_MJTF_Wdl]
        } else {
            _MATV = "EF_B_Heli_Transport_01_pylons_MJTF_Wdl" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - EF_B_Heli_Transport_01_pylons_MJTF_Wdl);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + EF_B_Heli_Transport_01_pylons_MJTF_Wdl);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MJTF UH-80 Ghost Hawk (Stub Wings), your aircraft will be delivered to the C-12 Airfield.", EF_B_Heli_Transport_01_pylons_MJTF_Wdl];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};
