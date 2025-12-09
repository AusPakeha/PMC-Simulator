private _rank = rank player;

switch (TheSelection) do {
    case 37: {
        if ((B_DefenseBudget < B_ION_Heli_EC_01_RF) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_Heli_EC_01_RF]
        } else {
            _MATV = "B_ION_Heli_EC_01_RF" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_Heli_EC_01_RF);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_Heli_EC_01_RF);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC H225 Supa Puma (Transport), your aircraft will be delivered to the C-12 Airfield.", B_ION_Heli_EC_01_RF];

            [] call DoBudget;
            [] call DoTotal;
            
            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 38: {
        if ((B_DefenseBudget < B_Heli_EC_03_RF) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Heli_EC_03_RF]
        } else {
            _MATV = "B_Heli_EC_03_RF" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Heli_EC_03_RF);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Heli_EC_03_RF);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) H225M Super Cougar, your aircraft will be delivered to the C-12 Airfield.", B_Heli_EC_03_RF];

            [] call DoBudget;
            [] call DoTotal;
            
            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 39: {
        if ((B_DefenseBudget < B_Heli_EC_04_military_RF) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Heli_EC_04_military_RF]
        } else {
            _MATV = "B_Heli_EC_04_military_RF" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - B_Heli_EC_04_military_RF);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Heli_EC_04_military_RF);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) H225M Super Cougar (Unarmed), your aircraft will be delivered to the C-12 Airfield.", B_Heli_EC_04_military_RF];

            [] call DoBudget;
            [] call DoTotal;
            
            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
};