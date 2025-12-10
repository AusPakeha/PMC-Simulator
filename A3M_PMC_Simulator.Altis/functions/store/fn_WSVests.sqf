switch (TheSelection) do {
    case 33: {
        if (Wallet < V_lxWS_PlateCarrierGL_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_PlateCarrierGL_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carrier GL Rig (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_PlateCarrierGL_desert ];
            Wallet= (wallet - V_lxWS_PlateCarrierGL_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_PlateCarrierGL_desert", 1];
            hint "Mail Call: Your Carrier GL Rig (Desert) has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < V_lxWS_PlateCarrier1_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_PlateCarrier1_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carrier Lite (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_PlateCarrier1_desert ];
            Wallet= (wallet - V_lxWS_PlateCarrier1_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_PlateCarrier1_desert", 1];
            hint "Mail Call: Your Carrier Lite (Desert) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < V_lxWS_PlateCarrier2_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_PlateCarrier2_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carrier Rig (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_PlateCarrier2_desert ];
            Wallet= (wallet - V_lxWS_PlateCarrier2_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_PlateCarrier2_desert", 1];
            hint "Mail Call: Your Carrier Rig (Desert) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < V_lxWS_PlateCarrierSpec_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_PlateCarrierSpec_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carrier Special Rig (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_PlateCarrierSpec_desert ];
            Wallet= (wallet - V_lxWS_PlateCarrierSpec_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_PlateCarrierSpec_desert", 1];
            hint "Mail Call: Your Carrier Special Rig (Desert) has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < V_PlateCarrier_CTRG_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrier_CTRG_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered CTRG Plate Carrier Rig for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrier_CTRG_lxWS ];
            Wallet= (wallet - V_PlateCarrier_CTRG_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrier_CTRG_lxWS", 1];
            hint "Mail Call: Your CTRG Plate Carrier Rig has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < V_lxWS_HarnessO_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_HarnessO_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered LBV Harness (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_HarnessO_oli ];
            Wallet= (wallet - V_lxWS_HarnessO_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_HarnessO_oli", 1];
            hint "Mail Call: Your LBV Harness (Olive) has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < V_lxWS_TacVestIR_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_lxWS_TacVestIR_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Raven Vest (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_lxWS_TacVestIR_oli ];
            Wallet= (wallet - V_lxWS_TacVestIR_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_lxWS_TacVestIR_oli", 1];
            hint "Mail Call: Your Raven Vest (Olive) has arrived in the deliveries box";
        };
    };
};
