switch (TheSelection) do {
    case 18: {
        if (Wallet < rhs_acc_1p29) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1p29 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 1P29 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1p29 ];
            Wallet = (Wallet - rhs_acc_1p29);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1p29", 1];
            hint "Mail Call: Your 1P29 has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < rhs_acc_1p63) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1p63 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 1P63for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1p63 ];
            Wallet = (Wallet - rhs_acc_1p63);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1p63", 1];
            hint "Mail Call: Your 1P63 has arrived in the deliveries box";
        };
    };

    case 20: {
        if (Wallet < rhs_acc_1pn93_1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1pn93_1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 1PN93-1 (Night vision) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1pn93_1 ];
            Wallet = (Wallet - rhs_acc_1pn93_1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1pn93_1", 1];
            hint "Mail Call: Your 1PN93-1 (Night vision) has arrived in the deliveries box";
        };
    };

    case 21: {
        if (Wallet < rhs_acc_1pn93_2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_1pn93_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 1PN93-2 (Night vision - RPG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_1pn93_2 ];
            Wallet = (Wallet - rhs_acc_1pn93_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_1pn93_2", 1];
            hint "Mail Call: Your 1PN93-2 (Night vision - RPG) has arrived in the deliveries box";
        };
    };

    case 22: {
        if (Wallet < rhs_acc_ekp1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_ekp1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered EKP-1 Kobra for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_ekp1 ];
            Wallet = (Wallet - rhs_acc_ekp1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_ekp1", 1];
            hint "Mail Call: Your EKP-1 Kobra has arrived in the deliveries box";
        };
    };

    case 23: {
        if (Wallet < rhs_acc_pgo7v) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pgo7v ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PGO-7V (RPG optic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pgo7v ];
            Wallet = (Wallet - rhs_acc_pgo7v);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pgo7v", 1];
            hint "Mail Call: Your PGO-7V (RPG optic) has arrived in the deliveries box";
        };
    };

    case 24: {
        if (Wallet < rhs_acc_pkas) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pkas ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PK-AS (Reflex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pkas ];
            Wallet = (Wallet - rhs_acc_pkas);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pkas", 1];
            hint "Mail Call: Your PK-AS (Reflex) has arrived in the deliveries box";
        };
    };

    case 25: {
        if (Wallet < rhs_acc_pso1m2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_acc_pso1m2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PSO-1M2 (4x24 tele) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_acc_pso1m2 ];
            Wallet = (Wallet - rhs_acc_pso1m2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_acc_pso1m2", 1];
            hint "Mail Call: Your PSO-1M2 (4x24 tele) has arrived in the deliveries box";
        };
    };

    case 26: {
        if (Wallet < rhsusf_acc_EOTECH) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_EOTECH ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered EOtech XPS3 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_EOTECH ];
            Wallet = (Wallet - rhsusf_acc_EOTECH);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_EOTECH", 1];
            hint "Mail Call: Your EOtech XPS3 has arrived in the deliveries box";
        };
    };

    case 27: {
        if (Wallet < rhsusf_acc_eotech_552) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_eotech_552];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered EOtech M552 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_eotech_552];
            Wallet = (Wallet - rhsusf_acc_eotech_552);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_eotech_552", 1];
            hint "Mail Call: Your EOtech M552 has arrived in the deliveries box";
        };
    };

    case 28: {
        if (Wallet < rhsusf_acc_LEUPOLDMK4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_LEUPOLDMK4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Leupold Mk4 (3.5-10x40mm)* for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_LEUPOLDMK4 ];
            Wallet = (Wallet - rhsusf_acc_LEUPOLDMK4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_LEUPOLDMK4", 1];
            hint "Mail Call: Your Leupold Mk4 (3.5-10x40mm)* has arrived in the deliveries box";
        };
    };

    case 29: {
        if (Wallet < rhsusf_acc_LEUPOLDMK4_2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_LEUPOLDMK4_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Leupold Mk4 (6.5-20x50mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_LEUPOLDMK4_2 ];
            Wallet = (Wallet - rhsusf_acc_LEUPOLDMK4_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_LEUPOLDMK4_2", 1];
            hint "Mail Call: Your Leupold Mk4 (6.5-20x50mm) has arrived in the deliveries box";
        };
    };

    case 30: {
        if (Wallet < rhsusf_acc_ELCAN) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ELCAN ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M145 MGO Elcan for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ELCAN ];
            Wallet = (Wallet - rhsusf_acc_ELCAN);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ELCAN", 1];
            hint "Mail Call: Your M145 MGO Elcan has arrived in the deliveries box";
        };
    };

    case 31: {
        if (Wallet < rhsusf_acc_ELCAN_PIP) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ELCAN_PIP];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M145 MGO Elcan (PiP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ELCAN_PIP];
            Wallet = (Wallet - rhsusf_acc_ELCAN_PIP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ELCAN_PIP", 1];
            hint "Mail Call: Your M145 MGO Elcan (PiP) has arrived in the deliveries box";
        };
    };

    case 32: {
        if (Wallet < rhsusf_acc_ACOG) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M150 RCO ACOG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG ];
            Wallet = (Wallet - rhsusf_acc_ACOG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG", 1];
            hint "Mail Call: Your M150 RCO ACOG has arrived in the deliveries box";
        };
    };

    case 33: {
        if (Wallet < rhsusf_acc_ACOG_PIP) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG_PIP];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M150 RCO ACOG (PiP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG_PIP];
            Wallet = (Wallet - rhsusf_acc_ACOG_PIP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG_PIP", 1];
            hint "Mail Call: Your M150 RCO ACOG (PiP) has arrived in the deliveries box";
        };
    };

    case 34: {
        if (Wallet < rhsusf_acc_ACOG2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M150 RCO ACOG (ARD) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG2 ];
            Wallet = (Wallet - rhsusf_acc_ACOG2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG2", 1];
            hint "Mail Call: Your M150 RCO ACOG (ARD) has arrived in the deliveries box";
        };
    };

    case 35: {
        if (Wallet < rhsusf_acc_ACOG3) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG3 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M150 RCO ACOG (ARD/Lens Cover) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG3 ];
            Wallet = (Wallet - rhsusf_acc_ACOG3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG3", 1];
            hint "Mail Call: Your M150 RCO ACOG (ARD/Lens Cover) has arrived in the deliveries box";
        };
    };

    case 36: {
        if (Wallet < rhsusf_acc_ACOG_USMC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG_USMC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PVQ-31 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG_USMC];
            Wallet = (Wallet - rhsusf_acc_ACOG_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 has arrived in the deliveries box";
        };
    };

    case 37: {
        if (Wallet < rhsusf_acc_ACOG2_USMC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG2_USMC ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PVQ-31 (ARD) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG2_USMC ];
            Wallet = (Wallet - rhsusf_acc_ACOG2_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG2_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 (ARD) has arrived in the deliveries box";
        };
    };

    case 38: {
        if (Wallet < rhsusf_acc_ACOG3_USMC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_ACOG3_USMC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PVQ-31 (ARD/Lens Cover) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_ACOG3_USMC];
            Wallet = (Wallet - rhsusf_acc_ACOG3_USMC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_ACOG3_USMC", 1];
            hint "Mail Call: Your AN/PVQ-31 (ARD/Lens Cover) has arrived in the deliveries box";
        };
    };

    case 39: {
        if (Wallet < rhsusf_acc_compm4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_compm4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M68 CCO Aimpoint M4 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_compm4 ];
            Wallet = (Wallet - rhsusf_acc_compm4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_acc_compm4", 1];
            hint "Mail Call: Your M68 CCO Aimpoint M4 has arrived in the deliveries box";
        };
    };
};
