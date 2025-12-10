private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        _rank = rank player;
        if ((B_DefenseBudget < B_ION_APC_Wheeled_01_command_lxWS) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_APC_Wheeled_01_command_lxWS]
        } else {
            _MATV = "B_ION_APC_Wheeled_01_command_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_APC_Wheeled_01_command_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_APC_Wheeled_01_command_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) ION PMC Badger IFV (Command) for $%1", B_ION_APC_Wheeled_01_command_lxWS];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 1: {
        _rank = rank player;
        if ((B_DefenseBudget < B_ION_APC_Wheeled_02_hmg_lxWS) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_ION_APC_Wheeled_02_hmg_lxWS]
        } else {
            _MATV = "B_ION_APC_Wheeled_02_hmg_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_ION_APC_Wheeled_02_hmg_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_ION_APC_Wheeled_02_hmg_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an ) ION PMC Otokar ARMA (HMG) for $%1", B_ION_APC_Wheeled_02_hmg_lxWS];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV;
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 2: {
        _rank = rank player;
        if ((B_DefenseBudget < B_APC_Wheeled_01_atgm_lxWS) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_APC_Wheeled_01_atgm_lxWS]
        } else {
            _MATV = "B_APC_Wheeled_01_atgm_lxWS" createVehicle (getMarkerPos "vehspawn");
            B_DefenseBudget = (B_DefenseBudget - B_APC_Wheeled_01_atgm_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_APC_Wheeled_01_atgm_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) Badger IFV (ATGM) for $%1", B_APC_Wheeled_01_atgm_lxWS];

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
