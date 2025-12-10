private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        if (B_DefenseBudget < ACE_Wheel) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_Wheel];
        } else {
            _SpareTire = "ACE_Wheel" createVehicle (getMarkerPos "SvcSpwn");
            B_DefenseBudget = (B_DefenseBudget - ACE_Wheel);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_Wheel);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Spare Wheel for $%1 \n \n It will be delivered to the Vehicle Service Location at the C-12 Facility. ", ACE_Wheel ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 6: {
        if (B_DefenseBudget < ACE_Track) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_Track];
        } else {
            _SpareTrack = "ACE_Track" createVehicle (getMarkerPos "SvcSpwn");
            B_DefenseBudget = (B_DefenseBudget -ACE_Track);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_Track);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Spare Track for $%1 \n \n It will be delivered to the Vehicle Service Location at the C-12 Facility. ", ACE_Track ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 7: {
        if (B_DefenseBudget < ACE_Box_Ammo) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_Box_Ammo];
        } else {
            _SpareTrack = "ACE_Box_Ammo" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - ACE_Box_Ammo);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_Box_Ammo);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a box of ACE Match Grade Ammunition (Assorted) for $%1 \n \n It will be delivered to the Operational Readiness Area at the C-12 Facility. ", ACE_Box_Ammo ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 8: {
        if (B_DefenseBudget < ACE_medicalSupplyCrate_advanced) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_medicalSupplyCrate_advanced];
        } else {
            _SpareTrack = "ACE_medicalSupplyCrate_advanced" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - ACE_medicalSupplyCrate_advanced);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_medicalSupplyCrate_advanced);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an ACE Advanced Medical Supply Crate for $%1 \n \n It will be delivered to the Operational Readiness Area at the C-12 Facility. ", ACE_medicalSupplyCrate_advanced ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 9: {
        if (B_DefenseBudget < ACE_Item_Sandbag_empty) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_Item_Sandbag_empty];
        } else {
            _SpareTrack = "ACE_Item_Sandbag_empty" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - ACE_Item_Sandbag_empty);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_Item_Sandbag_empty);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Single Sandbag for $%1 \n \n It will be delivered to the Operational Readiness Area at the C-12 Facility. ", ACE_Item_Sandbag_empty ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 10: {
        if (B_DefenseBudget < ACE_Box_Misc) then {
            hint format ["Your company does not have sufficient money (Costs $%) to do this.", ACE_Item_Sandbag_empty];
        } else {
            _SpareTrack = "ACE_Box_Misc" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - ACE_Box_Misc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ACE_Box_Misc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an ACE Misc Supply Crate (Tactical Office Supplies) for $%1 \n \n It will be delivered to the Operational Readiness Area at the C-12 Facility. ", ACE_Box_Misc ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
};
