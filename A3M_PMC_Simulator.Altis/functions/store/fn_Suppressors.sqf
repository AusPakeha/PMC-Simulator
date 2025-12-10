switch (TheSelection) do {
    case 0 : {
        if (Wallet < muzzle_snds_acp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_acp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered .45 ACP Sound Suppressorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_acp ];
            Wallet= (wallet - muzzle_snds_acp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_acp", 1];
            hint "Mail Call: Your .45 ACP Sound Suppressor has arrived in the deliveries box";
        };
    };
    case 1 : {
        if (Wallet < muzzle_snds_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7.62 Sound Suppressor for $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_B ];
            Wallet= (wallet - muzzle_snds_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_B", 1];
            hint "Mail Call: Your 7.62 Sound Suppressorhas arrived in the deliveries box";
        };
    };
    case 2 : {
        if (Wallet < muzzle_snds_H) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_H ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered6.5mm Sound Suppressor for $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_H ];
            Wallet= (wallet - muzzle_snds_H);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_H", 1];
            hint "Mail Call: Your 6.5mm Sound Suppressor has arrived in the deliveries box";
        };
    };
    case 3 : {
        if (Wallet < muzzle_snds_H_MG) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_H_MG];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedHRF 6.5mm Sound Suppressor (LMG)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_H_MG];
            Wallet= (wallet - muzzle_snds_H_MG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_H_MG", 1];
            hint "Mail Call: Your HRF 6.5mm Sound Suppressor (LMG) has arrived in the deliveries box";
        };
    };
    case 4 : {
        if (Wallet < muzzle_snds_L) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_L ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered9mm Sound Suppressorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_L ];
            Wallet= (wallet - muzzle_snds_L);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_L", 1];
            hint "Mail Call: Your 9mm Sound Suppressor has arrived in the deliveries box";
        };
    };
    case 5 : {
        if (Wallet < muzzle_snds_M) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", muzzle_snds_M ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered5.56mm Sound Suppressor for $%1.00. Your order will be delivered soon! Check the deliveries box often!", muzzle_snds_M ];
            Wallet= (wallet - muzzle_snds_M);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["muzzle_snds_M", 1];
            hint "Mail Call: Your 5.56mm Sound Suppressor has arrived in the deliveries box";
        };
    };
};
