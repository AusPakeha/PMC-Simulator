switch (TheSelection) do {
    case 21: {
        if (Wallet < B_rhsusf_B_BACKPACK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_rhsusf_B_BACKPACK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (Raven UAV) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_rhsusf_B_BACKPACK ];
            Wallet = (Wallet - B_rhsusf_B_BACKPACK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGl obal["B_rhsusf_B_BACKPACK", 1];
            hint "Mail Call: Your Eagle A-III (Raven UAV) has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < rhsusf_ANPVS_14) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ANPVS_14 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PVS-14 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ANPVS_14 ];
            Wallet = (Wallet - rhsusf_ANPVS_14);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhsusf_ANPVS_14", 1];
            hint "Mail Call: Your AN/PVS-14 has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < rhsusf_ANPVS_15) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ANPVS_15 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PVS-15 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ANPVS_15 ];
            Wallet = (Wallet - rhsusf_ANPVS_15);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhsusf_ANPVS_15", 1];
            hint "Mail Call: Your AN/PVS-15 has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < lerca_1200_black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lerca_1200_black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Lerca 1200 (black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lerca_1200_black ];
            Wallet = (Wallet - lerca_1200_black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["lerca_1200_black", 1];
            hint "Mail Call: Your Lerca 1200 (black) has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < lerca_1200_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lerca_1200_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Lerca 1200 (tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lerca_1200_tan ];
            Wallet = (Wallet - lerca_1200_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["lerca_1200_tan", 1];
            hint "Mail Call: Your Lerca 1200 (tan) has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < rhsusf_acc_anpeq15) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_anpeq15 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PEQ-15 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_anpeq15 ];
            Wallet = (Wallet - rhsusf_acc_anpeq15);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhsusf_acc_anpeq15", 1];
            hint "Mail Call: Your AN/PEQ-15 has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < rhsusf_acc_anpeq15A) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_anpeq15A ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PEQ-15A for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_anpeq15A ];
            Wallet = (Wallet - rhsusf_acc_anpeq15A);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhsusf_acc_anpeq15A", 1];
            hint "Mail Call: Your AN/PEQ-15A has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < rhsusf_acc_anpeq15_light) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_anpeq15_light ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AN/PEQ-15/M952V (Light) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_anpeq15_light ];
            Wallet = (Wallet - rhsusf_acc_anpeq15_light);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhsusf_acc_anpeq15_light", 1];
            hint "Mail Call: Your AN/PEQ-15/M952V (Light) has arrived in the deliveries box";
        };
    };
};
