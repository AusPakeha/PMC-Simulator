switch (TheSelection) do {
    case 6 : {
        if (Wallet < supressor_h_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_h_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (7.62mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_h_lxWS ];
            Wallet= (wallet - supressor_h_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_h_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (7.62mm) has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < supressor_h_sand_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_h_sand_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (7.62mm, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_h_sand_lxWS ];
            Wallet= (wallet - supressor_h_sand_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_h_sand_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (7.62 mm, Sand) has arrived in the deliveries box";
        };
    };
    case 8 : {
        if (Wallet < supressor_h_khaki_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_h_khaki_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (7.62 mm, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_h_khaki_lxWS ];
            Wallet= (wallet - supressor_h_khaki_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_h_khaki_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (7.62 mm, Khaki) has arrived in the deliveries box";
        };
    };
    case 9 : {
        if (Wallet < supressor_l_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_l_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (5.56 mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_l_lxWS ];
            Wallet= (wallet - supressor_l_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_l_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (5.56 mm) has arrived in the deliveries box";
        };
    };
    case 10 : {
        if (Wallet < supressor_l_sand_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_l_sand_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (5.56 mm, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_l_sand_lxWS ];
            Wallet= (wallet - supressor_l_sand_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_l_sand_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (5.56 mm, Sand) has arrived in the deliveries box";
        };
    };
    case 11 : {
        if (Wallet < supressor_l_khaki_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_l_khaki_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (5.56 mm, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_l_khaki_lxWS ];
            Wallet= (wallet - supressor_l_khaki_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_l_khaki_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (5.56 mm, Khaki) has arrived in the deliveries box";
        };
    };
    case 12 : {
        if (Wallet < supressor_m_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_m_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (6.5 mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_m_lxWS ];
            Wallet= (wallet - supressor_m_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_m_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (6.5 mm) has arrived in the deliveries box";
        };
    };
    case 13 : {
        if (Wallet < supressor_m_sand_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_m_sand_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (6.5 mm, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_m_sand_lxWS ];
            Wallet= (wallet - supressor_m_sand_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_m_sand_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (6.5 mm, Sand) has arrived in the deliveries box";
        };
    };
    case 14 : {
        if (Wallet < supressor_m_khaki_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", supressor_m_khaki_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stubby Sound Suppressor (6.5 mm, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", supressor_m_khaki_lxWS ];
            Wallet= (wallet - supressor_m_khaki_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["supressor_m_khaki_lxWS", 1];
            hint "Mail Call: Your Stubby Sound Suppressor (6.5 mm, Khaki) has arrived in the deliveries box";
        };
    };
    case 15 : {
        if (Wallet < muzzel_snds_12Gauge_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzel_snds_12Gauge_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Sound Suppressor (12 Gauge) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzel_snds_12Gauge_lxWS ];
            Wallet= (wallet - muzzel_snds_12Gauge_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep 2;
            Deliveries AddWeaponCargoGlobal ["muzzel_snds_12Gauge_lxWS", 1];
            hint "Mail Call: Your Sound Suppressor (12 Gauge) has arrived in the deliveries box";
        };
    };
};
