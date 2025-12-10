private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        if ((B_DefenseBudget < rhs_weapon_crate) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_weapon_crate]
        } else {
            _SMABox = "rhs_weapon_crate" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - rhs_weapon_crate);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_weapon_crate);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a shipment of 330 Assorted Russian Military Arms for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", SMA_Weapon_Box];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 6: {
        if ((B_DefenseBudget < rhsusf_weapon_crate) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhsusf_weapon_crate]
        } else {
            _SMABox = "rhsusf_weapon_crate" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - rhsusf_weapon_crate);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhsusf_weapon_crate);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a shipment of 460 Assorted U.S. Military Arms for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", SMA_Weapon_Box];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
};
