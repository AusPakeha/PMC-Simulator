switch (TheSelection) do {
    case 18: { ["rhs_acc_1p29", "1P29", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1p29 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1p29 ];
            Wallet = (Wallet - rhs_acc_1p29);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1p29", 1];
            hint "Mail Call: Your 1P29 has arrived in the deliveries box";
        };
    };
    case 19: { ["rhs_acc_1p63", "1P63", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1p63 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1p63 ];
            Wallet = (Wallet - rhs_acc_1p63);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1p63", 1];
            hint "Mail Call: Your 1P63 has arrived in the deliveries box";
        };
    };

    case 20: { ["rhs_acc_1pn93_1", "1PN93-1 (Night vision)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1pn93_1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1pn93_1 ];
            Wallet = (Wallet - rhs_acc_1pn93_1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1pn93_1", 1];
            hint "Mail Call: Your 1PN93-1 (Night vision) has arrived in the deliveries box";
        };
    };

    case 21: { ["rhs_acc_1pn93_2", "1PN93-2 (Night vision - RPG)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1pn93_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1pn93_2 ];
            Wallet = (Wallet - rhs_acc_1pn93_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1pn93_2", 1];
            hint "Mail Call: Your 1PN93-2 (Night vision - RPG) has arrived in the deliveries box";
        };
    };

    case 22: { ["rhs_acc_ekp1", "EKP-1 Kobra", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_ekp1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_ekp1 ];
            Wallet = (Wallet - rhs_acc_ekp1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_ekp1", 1];
            hint "Mail Call: Your EKP-1 Kobra has arrived in the deliveries box";
        };
    };

    case 23: { ["rhs_acc_pgo7v", "PGO-7V (RPG optic)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pgo7v ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pgo7v ];
            Wallet = (Wallet - rhs_acc_pgo7v);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pgo7v", 1];
            hint "Mail Call: Your PGO-7V (RPG optic) has arrived in the deliveries box";
        };
    };

    case 24: { ["rhs_acc_pkas", "PK-AS (Reflex)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pkas ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pkas ];
            Wallet = (Wallet - rhs_acc_pkas);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pkas", 1];
            hint "Mail Call: Your PK-AS (Reflex) has arrived in the deliveries box";
        };
    };

    case 25: { ["rhs_acc_pso1m2", "PSO-1M2 (4x24 tele)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pso1m2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pso1m2 ];
            Wallet = (Wallet - rhs_acc_pso1m2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pso1m2", 1];
            hint "Mail Call: Your PSO-1M2 (4x24 tele) has arrived in the deliveries box";
        };
    };

    case 26: { ["rhsusf_acc_EOTECH", "EOtech XPS3", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_EOTECH ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_EOTECH ];
            Wallet = (Wallet - rhsusf_acc_EOTECH);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_EOTECH", 1];
            hint "Mail Call: Your EOtech XPS3 has arrived in the deliveries box";
        };
    };

    case 27: { ["rhsusf_acc_eotech_552", "EOtech M552", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_eotech_552];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_eotech_552];
            Wallet = (Wallet - rhsusf_acc_eotech_552);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_eotech_552", 1];
            hint "Mail Call: Your EOtech M552 has arrived in the deliveries box";
        };
    };

    case 28: { ["rhsusf_acc_LEUPOLDMK4", "Leupold Mk4 (3.5-10x40mm)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_LEUPOLDMK4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered * for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_LEUPOLDMK4 ];
            Wallet = (Wallet - rhsusf_acc_LEUPOLDMK4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_LEUPOLDMK4", 1];
            hint "Mail Call: Your Leupold Mk4 (3.5-10x40mm)* has arrived in the deliveries box";
        };
    };

    case 29: { ["rhsusf_acc_LEUPOLDMK4_2", "Leupold Mk4 (6.5-20x50mm)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_LEUPOLDMK4_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_LEUPOLDMK4_2 ];
            Wallet = (Wallet - rhsusf_acc_LEUPOLDMK4_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_LEUPOLDMK4_2", 1];
            hint "Mail Call: Your Leupold Mk4 (6.5-20x50mm) has arrived in the deliveries box";
        };
    };

    case 30: { ["rhsusf_acc_ELCAN", "M145 MGO Elcan", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ELCAN ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ELCAN ];
            Wallet = (Wallet - rhsusf_acc_ELCAN);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ELCAN", 1];
            hint "Mail Call: Your M145 MGO Elcan has arrived in the deliveries box";
        };
    };

    case 31: { ["rhsusf_acc_ELCAN_PIP", "M145 MGO Elcan (PiP)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ELCAN_PIP];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ELCAN_PIP];
            Wallet = (Wallet - rhsusf_acc_ELCAN_PIP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ELCAN_PIP", 1];
            hint "Mail Call: Your M145 MGO Elcan (PiP) has arrived in the deliveries box";
        };
    };

    case 32: { ["rhsusf_acc_ACOG", "M150 RCO ACOG", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG ];
            Wallet = (Wallet - rhsusf_acc_ACOG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG", 1];
            hint "Mail Call: Your M150 RCO ACOG has arrived in the deliveries box";
        };
    };

    case 33: { ["rhsusf_acc_ACOG_PIP", "M150 RCO ACOG (PiP)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG_PIP];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG_PIP];
            Wallet = (Wallet - rhsusf_acc_ACOG_PIP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG_PIP", 1];
            hint "Mail Call: Your M150 RCO ACOG (PiP) has arrived in the deliveries box";
        };
    };

    case 34: { ["rhsusf_acc_ACOG2", "M150 RCO ACOG (ARD)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG2 ];
            Wallet = (Wallet - rhsusf_acc_ACOG2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG2", 1];
            hint "Mail Call: Your M150 RCO ACOG (ARD) has arrived in the deliveries box";
        };
    };

    case 35: { ["rhsusf_acc_ACOG3", "M150 RCO ACOG (ARD/Lens Cover)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG3 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG3 ];
            Wallet = (Wallet - rhsusf_acc_ACOG3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG3", 1];
            hint "Mail Call: Your M150 RCO ACOG (ARD/Lens Cover) has arrived in the deliveries box";
        };
    };

    case 36: { ["rhsusf_acc_ACOG_USMC", "AN/PVQ-31", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG_USMC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG_USMC];
            Wallet = (Wallet - rhsusf_acc_ACOG_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 has arrived in the deliveries box";
        };
    };

    case 37: { ["rhsusf_acc_ACOG2_USMC", "AN/PVQ-31 (ARD)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG2_USMC ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG2_USMC ];
            Wallet = (Wallet - rhsusf_acc_ACOG2_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG2_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 (ARD) has arrived in the deliveries box";
        };
    };

    case 38: { ["rhsusf_acc_ACOG3_USMC", "AN/PVQ-31 (ARD/Lens Cover)", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG3_USMC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG3_USMC];
            Wallet = (Wallet - rhsusf_acc_ACOG3_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG3_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 (ARD/Lens Cover) has arrived in the deliveries box";
        };
    };

    case 39: { ["rhsusf_acc_compm4", "M68 CCO Aimpoint M4", "deliveries"] call A3M_fnc_buyItem; };
        if (Wallet < ) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_compm4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered  for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_compm4 ];
            Wallet = (Wallet - rhsusf_acc_compm4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_compm4", 1];
            hint "Mail Call: Your M68 CCO Aimpoint M4 has arrived in the deliveries box";
        };
    };
};
