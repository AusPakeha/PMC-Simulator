private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < B_Heli_Transport_01_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Heli_Transport_01_F]
        } else {
            _MATV = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Heli_Transport_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Heli_Transport_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) UH-80 Ghosthawk Combat Transport Helicopter for $%1, your aircraft will be delivered to the C-12 Airfield.", B_Heli_Transport_01_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 1: {
        if ((B_DefenseBudget < B_Heli_Light_01_dynamicLoadout_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Heli_Light_01_dynamicLoadout_F]
        } else {
            _MATV = "B_Heli_Light_01_dynamicLoadout_F" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Heli_Light_01_dynamicLoadout_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Heli_Light_01_dynamicLoadout_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) AH-9 Pawnee Combat Support Helicopter for $%1, your aircraft will be delivered to the C-12 Airfield.", B_Heli_Light_01_dynamicLoadout_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 2: {
        if ((B_DefenseBudget < B_Heli_Light_01_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Heli_Light_01_F]
        } else {
            _MATV = "B_Heli_Light_01_F" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Heli_Light_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Heli_Light_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) MH-9 Hummingbird Light Transport Helicopter for $%1, your aircraft will be delivered to the C-12 Airfield.", B_Heli_Light_01_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 3: {
        if ((B_DefenseBudget < O_Heli_Light_02_unarmed_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, O_Heli_Light_02_unarmed_F]
        } else {
            _MATV = "O_Heli_Light_02_unarmed_F" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - O_Heli_Light_02_unarmed_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + O_Heli_Light_02_unarmed_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) PO-30 Orca (Black) for $%1, your aircraft will be delivered to the C-12 Airfield.", O_Heli_Light_02_unarmed_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 4: {
        if ((B_DefenseBudget < O_Heli_Light_02_dynamicLoadout_F) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, O_Heli_Light_02_dynamicLoadout_F]
        } else {
            _MATV = "O_Heli_Light_02_dynamicLoadout_F" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - O_Heli_Light_02_dynamicLoadout_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + O_Heli_Light_02_dynamicLoadout_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) PO-30 Orca for $%1, your aircraft will be delivered to the C-12 Airfield.", O_Heli_Light_02_dynamicLoadout_F];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};