switch (TheSelection) do {
    case 21: {
        if (Wallet<tf_anprc152) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_anprc152];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered a Harris Falcon III® AN/PRC-152 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_anprc152 ];
            Wallet= (wallet - tf_anprc152);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["tf_anprc152", 1];
            hint "Mail Call: Your Harris Falcon III® AN/PRC-152 has arrived in the deliveries box";
        };
    };

    case 22: {
        if (Wallet<tf_rf7800str) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rf7800str];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered a Harris RF-7800S for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rf7800str ];
            Wallet= (wallet - tf_rf7800str);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal["tf_rf7800str", 1];
            hint "Mail Call: Your Harris RF-7800S has arrived in the deliveries box";
        };
    };

    case 23: {
        if (Wallet<tf_rt1523g) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g ];
            Wallet= (wallet - tf_rt1523g);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G has arrived in the deliveries box";
        };
    };

    case 24: {
        if (Wallet<tf_rt1523g_big) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_big];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1702G for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_big ];
            Wallet= (wallet - tf_rt1523g_big);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_big", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1702G has arrived in the deliveries box";
        };
    };

    case 25: {
        if (Wallet<tf_rt1523g_black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_black];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_black ];
            Wallet= (wallet - tf_rt1523g_black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_black", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G (Black) has arrived in the deliveries box";
        };
    };

    case 26: {
        if (Wallet<tf_rt1523g_fabric) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_fabric];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G (Fabric) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_fabric];
            Wallet= (wallet - tf_rt1523g_fabric);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_fabric", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G (Fabric) has arrived in the deliveries box";
        };
    };

    case 27: {
        if (Wallet<tf_rt1523g_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_green];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_green ];
            Wallet= (wallet - tf_rt1523g_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_green", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G (Green) has arrived in the deliveries box";
        };
    };

    case 28: {
        if (Wallet<tf_rt1523g_rhs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_rhs];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G (RHS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_rhs ];
            Wallet= (wallet - tf_rt1523g_rhs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_rhs", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G (RHS) has arrived in the deliveries box";
        };
    };

    case 29: {
        if (Wallet<tf_rt1523g_sage) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_rt1523g_sage];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered an Exelis SINCGARS RT-1523G (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_rt1523g_sage ];
            Wallet= (wallet - tf_rt1523g_sage);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["tf_rt1523g_sage", 1];
            hint "Mail Call: Your Exelis SINCGARS RT-1523G (Sage) has arrived in the deliveries box";
        };
    };
};
