switch (TheSelection) do {
    case 0 : {
        if (Wallet < hgun_ACPC2_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_ACPC2_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Colt 1911 .45 cal. for $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_ACPC2_F];
            Wallet = (Wallet - hgun_ACPC2_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_ACPC2_F", 1];
            hint "Mail Call: Your Colt 1911 .45 cal. has arrived in the deliveries box";
        };
    };
    case 1 : {
        if (Wallet < hgun_P07_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_P07_F ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Walther P 07 9mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_P07_F ];
            Wallet = (Wallet - hgun_P07_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_P07_F", 1];
            hint "Mail Call: Your Walther P 07 9mm has arrived in the deliveries box";
        };
    };
    case 2 : {
        if (Wallet < hgun_PDW2000_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_PDW2000_F ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered HK PDW2000 9mm SMG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_PDW2000_F ];
            Wallet = (Wallet - hgun_PDW2000_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_PDW2000_F", 1];
            hint "Mail Call: Your HK PDW2000 9mm SMG has arrived in the deliveries box";
        };
    };
    case 3 : {
        if (Wallet < hgun_Pistol_heavy_01_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_Pistol_heavy_01_F ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered HK USP .45 cal. for $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_Pistol_heavy_01_F ];
            Wallet = (Wallet - hgun_Pistol_heavy_01_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_Pistol_heavy_01_F", 1];
            hint "Mail Call: Your HK USP .45 cal. has arrived in the deliveries box";
        };
    };
    case 4 : {
        if (Wallet < hgun_Pistol_heavy_02_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_Pistol_heavy_02_F ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered S&W 500 .45 cal.for $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_Pistol_heavy_02_F ];
            Wallet = (Wallet - hgun_Pistol_heavy_02_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_Pistol_heavy_02_F", 1];
            hint "Mail Call: Your S&W 500 .45 cal. has arrived in the deliveries box";
        };
    };
    case 5 : {
        if (Wallet < hgun_Rook40_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", hgun_Rook40_F ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered CZ-75 9mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", hgun_Rook40_F ];
            Wallet = (Wallet - hgun_Rook40_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["hgun_Rook40_F", 1];
            hint "Mail Call: Your CZ-75 9mmhas arrived in the deliveries box";
        };
    };
    case 6 : {
        if (Wallet < SMG_01_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SMG_01_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedVermin SMG .45 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SMG_01_F];
            Wallet = (Wallet - SMG_01_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["SMG_01_F", 1];
            hint "Mail Call: Your Vermin SMG .45 has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < SMG_02_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SMG_02_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered HK MP5 Hybrid 9mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SMG_02_F];
            Wallet = (Wallet - SMG_02_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["SMG_02_F", 1];
            hint "Mail Call: Your HK MP5 Hybrid 9mmhas arrived in the deliveries box";
        };
    };
};
