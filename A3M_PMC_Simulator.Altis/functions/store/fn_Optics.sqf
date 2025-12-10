switch (TheSelection) do {
    case 0 : {
        if (Wallet < optic_Aco) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Aco ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACO (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Aco ];
            Wallet = (Wallet - optic_Aco);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Aco", 1];
            hint "Mail Call: Your ACO (Red)has arrived in the deliveries box";
        };
    };
    case 1 : {
        if (Wallet < optic_ACO_grn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_ACO_grn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACO (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_ACO_grn ];
            Wallet = (Wallet - optic_ACO_grn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_ACO_grn", 1];
            hint "Mail Call: Your ACO (Green) has arrived in the deliveries box";
        };
    };
    case 2 : {
        if (Wallet < optic_ACO_grn_smg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_ACO_grn_smg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedACO Mini Pic (Fits SMG) (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_ACO_grn_smg ];
            Wallet = (Wallet - optic_ACO_grn_smg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_ACO_grn_smg", 1];
            hint "Mail Call: Your ACO Mini Pic (Fits SMG) (Green) has arrived in the deliveries box";
        };
    };
    case 3 : {
        if (Wallet < optic_Aco_smg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Aco_smg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedACO Mini Pic (Fits SMG) (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Aco_smg ];
            Wallet = (Wallet - optic_Aco_smg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Aco_smg", 1];
            hint "Mail Call: Your ACO Mini Pic (Fits SMG) (Red)has arrived in the deliveries box";
        };
    };
    case 4 : {
        if (Wallet < optic_Arco) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Arco ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ARCOfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Arco ];
            Wallet = (Wallet - optic_Arco);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Arco", 1];
            hint "Mail Call: Your ARCO has arrived in the deliveries box";
        };
    };
    case 5 : {
        if (Wallet < optic_DMS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_DMS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered DMS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_DMS ];
            Wallet = (Wallet - optic_DMS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_DMS", 1];
            hint "Mail Call: Your DMS has arrived in the deliveries box";
        };
    };
    case 6 : {
        if (Wallet < optic_Hamr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Hamr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RCO for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Hamr ];
            Wallet = (Wallet - optic_Hamr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Hamr", 1];
            hint "Mail Call: Your RCO has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < optic_Holosight) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Holosight ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered a Holosight for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Holosight ];
            Wallet = (Wallet - optic_Holosight);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Holosight", 1];
            hint "Mail Call: Your Holosighthas arrived in the deliveries box";
        };
        \
    };
    case 8 : {
        if (Wallet < optic_Holosight_smg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Holosight_smg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MK17 Holosight SMG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Holosight_smg ];
            Wallet = (Wallet - optic_Holosight_smg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Holosight_smg", 1];
            hint "Mail Call: Your MK17 Holosight SMG has arrived in the deliveries box";
        };
    };
    case 9 : {
        if (Wallet < optic_LRPS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_LRPS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered LRPSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_LRPS ];
            Wallet = (Wallet - optic_LRPS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_LRPS", 1];
            hint "Mail Call: Your LRPS has arrived in the deliveries box";
        };
    };
    case 10: {
        if (Wallet < optic_MRCO) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_MRCO ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MRCOfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_MRCO ];
            Wallet = (Wallet - optic_MRCO);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_MRCO", 1];
            hint "Mail Call: Your MRCO has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet < optic_MRD) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_MRD ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MRD for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_MRD ];
            Wallet = (Wallet - optic_MRD);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_MRD", 1];
            hint "Mail Call: Your MRD has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet < optic_Nightstalker) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Nightstalker ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Nightstalkerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Nightstalker ];
            Wallet = (Wallet - optic_Nightstalker);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Nightstalker", 1];
            hint "Mail Call: Your Nightstalker has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < optic_NVS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_NVS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered NVS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_NVS ];
            Wallet = (Wallet - optic_NVS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_NVS", 1];
            hint "Mail Call: Your NVS has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < optic_SOS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_SOS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SOS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_SOS ];
            Wallet = (Wallet - optic_SOS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_SOS", 1];
            hint "Mail Call: Your SOS has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < optic_tws) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_tws ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TWS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_tws ];
            Wallet = (Wallet - optic_tws);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_tws", 1];
            hint "Mail Call: Your TWS has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < optic_tws_mg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_tws_mg];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TWS MG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_tws_mg];
            Wallet = (Wallet - optic_tws_mg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_tws_mg", 1];
            hint "Mail Call: Your TWS MG has arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < optic_Yorris) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", optic_Yorris];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Yorris J2 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", optic_Yorris];
            Wallet = (Wallet - optic_Yorris);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["optic_Yorris", 1];
            hint "Mail Call: Your Yorris J2has arrived in the deliveries box";
        };
    };
};
