switch (TheSelection) do {
    case 44: {
        if (Wallet < rhs_uniform_cu_ocp_patchless) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_uniform_cu_ocp_patchless ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Army Combat Uniform OCPfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_uniform_cu_ocp_patchless ];
            Wallet = (Wallet - rhs_uniform_cu_ocp_patchless);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhs_uniform_cu_ocp_patchless", 1];
            hint "Mail Call: Your Army Combat Uniform OCP has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < rhs_uniform_cu_ucp_patchless) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_uniform_cu_ucp_patchless ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Army Combat Uniform UCPfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_uniform_cu_ucp_patchless ];
            Wallet = (Wallet - rhs_uniform_cu_ucp_patchless);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhs_uniform_cu_ucp_patchless", 1];
            hint "Mail Call: Your Army Combat Uniform UCP has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < rhs_uniform_FROG01_wd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_uniform_FROG01_wd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Flame Resistant Organizational Gear MARPAT (Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_uniform_FROG01_wd ];
            Wallet = (Wallet - rhs_uniform_FROG01_wd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhs_uniform_FROG01_wd", 1];
            hint "Mail Call: Your Flame Resistant Organizational Gear MARPAT (Woodland) has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < rhs_uniform_FROG01_d) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_uniform_FROG01_d ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Flame Resistant Organizational Gear MARPAT (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_uniform_FROG01_d ];
            Wallet = (Wallet - rhs_uniform_FROG01_d);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhs_uniform_FROG01_d", 1];
            hint "Mail Call: Your Flame Resistant Organizational Gear MARPAT (Desert) has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < rhs_uniform_FROG01_m81) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_uniform_FROG01_m81 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Flame Resistant Organizational Gear M81for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_uniform_FROG01_m81 ];
            Wallet = (Wallet - rhs_uniform_FROG01_m81);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["rhs_uniform_FROG01_m81", 1];
            hint "Mail Call: Your Flame Resistant Organizational Gear M81 has arrived in the deliveries box";
        };
    };
};
