switch (TheSelection) do {
    case 44: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_1 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_1", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert) has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert, Gloves) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_2 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_2", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert, Gloves) has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_5) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_5 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert, Gloves, Kneepads) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_5 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_5);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_5", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert, Gloves, Kneepads) has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_3) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_3 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert, Gloves, Rolled Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_3 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_3", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert, Gloves, Rolled Up) has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert, Gloves, Rolled Up, Kneepads) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_4 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_4", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert, Gloves, Rolled Up, Kneepads) has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < EF_U_B_MarineCombatUniform_Des_6) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Des_6 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Desert, Rolled Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Des_6 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Des_6);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Des_6", 1];
            hint "Mail Call: Your Marine Combat Uniform (Desert, Rolled Up) has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Wdl_1 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_1", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland) has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland, Gloves) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Wdl_2 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_2", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland, Gloves) has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_5) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_5 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland, Gloves, Kneepads) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Wdl_5 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_5);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_5", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland, Gloves, Kneepads) has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_3) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_3 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland, Gloves, Rolled Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Wdl_3 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_3", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland, Gloves, Rolled Up) has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland, Gloves, Rolled Up, Kneepads) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniformWdl_4 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_4", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland, Gloves, Rolled Up, Kneepads) has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < EF_U_B_MarineCombatUniform_Wdl_6) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Wdl_6 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Combat Uniform (Woodland, Rolled Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Wdl_6 ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Wdl_6);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Wdl_6", 1];
            hint "Mail Call: Your Marine Combat Uniform (Woodland, Rolled Up) has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < EF_U_B_MarineCombatUniform_Diver_Des) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Diver_Des ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Diver Uniform (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Diver_Des ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Diver_Des);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Diver_Des", 1];
            hint "Mail Call: Your Marine Diver Uniform (Desert) has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < EF_U_B_MarineCombatUniform_Diver_Wdl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_U_B_MarineCombatUniform_Diver_Wdl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Marine Diver Uniform (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_U_B_MarineCombatUniform_Diver_Wdl ];
            Wallet = (Wallet - EF_U_B_MarineCombatUniform_Diver_Wdl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_U_B_MarineCombatUniform_Diver_Wdl", 1];
            hint "Mail Call: Your Marine Diver Uniform (Desert) has arrived in the deliveries box";
        };
    };
};
