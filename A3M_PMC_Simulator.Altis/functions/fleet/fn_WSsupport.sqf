private _rank = rank player;

switch (TheSelection) do {
        case 6 : {
            if ((B_DefenseBudget < EF_B_CombatBoat_Unarmed_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
                hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_CombatBoat_Unarmed_MJTF_Wdl]
            } else {
                _SMABox = "EF_B_CombatBoat_Unarmed_MJTF_Wdl" createVehicle (getMarkerPos "ArmrySpwn");
                B_DefenseBudget = (B_DefenseBudget - EF_B_CombatBoat_Unarmed_MJTF_Wdl);
                publicVariable "B_DefenseBudget";
                B_TotalCost = (B_TotalCost + EF_B_CombatBoat_Unarmed_MJTF_Wdl);
                publicVariable "B_TotalCost";
                hint format ["You have purchased a MJTF Combat Boat (Unarmed) for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", EF_B_CombatBoat_Unarmed_MJTF_Wdl];

                [] call DoBudget;
                [] call DoTotal;
            };
        };
        case 7 : {
            if ((B_DefenseBudget < EF_B_ComabtBoat_HMG_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
                hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_ComabtBoat_HMG_MJTF_Wdl]
            } else {
                _SMABox = "EF_B_ComabtBoat_HMG_MJTF_Wdl" createVehicle (getMarkerPos "ArmrySpwn");
                B_DefenseBudget = (B_DefenseBudget - EF_B_ComabtBoat_HMG_MJTF_Wdl);
                publicVariable "B_DefenseBudget";
                B_TotalCost = (B_TotalCost + EF_B_ComabtBoat_HMG_MJTF_Wdl);
                publicVariable "B_TotalCost";
                hint format ["You have purchased a MJTF Combat Boat (HMG) for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", EF_B_ComabtBoat_HMG_MJTF_Wdl];

                [] call DoBudget;
                [] call DoTotal;
            };
        };
        case 8 : {
            if ((B_DefenseBudget < EF_B_CombatBoat_AT_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
                hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_CombatBoat_AT_MJTF_Wdl]
            } else {
                _SMABox = "EF_B_CombatBoat_AT_MJTF_Wdl" createVehicle (getMarkerPos "ArmrySpwn");
                B_DefenseBudget = (B_DefenseBudget - EF_B_CombatBoat_AT_MJTF_Wdl);
                publicVariable "B_DefenseBudget";
                B_TotalCost = (B_TotalCost + EF_B_CombatBoat_AT_MJTF_Wdl);
                publicVariable "B_TotalCost";
                hint format ["You have purchased a MJTF Combat Boat (AT) for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", EF_B_CombatBoat_AT_MJTF_Wdl];

                [] call DoBudget;
                [] call DoTotal;
            };
        };
        case 9 : {
            if ((B_DefenseBudget < EF_B_LCC_MJTF_Wdl) or ( _rank != B_MaxRank)) then {
                hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, EF_B_LCC_MJTF_Wdl]
            } else {
                _SMABox = "EF_B_LCC_MJTF_Wdl" createVehicle (getMarkerPos "ArmrySpwn");
                B_DefenseBudget = (B_DefenseBudget - EF_B_LCC_MJTF_Wdl);
                publicVariable "B_DefenseBudget";
                B_TotalCost = (B_TotalCost + EF_B_LCC_MJTF_Wdl);
                publicVariable "B_TotalCost";
                hint format ["You have purchased a MJTF LCC-1 for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", EF_B_LCC_MJTF_Wdl];

                [] call DoBudget;
                [] call DoTotal;
            };
        };
    };