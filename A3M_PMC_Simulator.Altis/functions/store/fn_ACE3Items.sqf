switch (TheSelection) do {
    case 8: {
        if (Wallet < ACE_MapTools) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_MapTools];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Map Toolsfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_MapTools];
            Wallet = (Wallet - ACE_MapTools);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ACE_MapTools", 1];
            hint "Mail Call: Your Map Tools has arrived in the deliveries box";
        };
    };

    case 9: {
        if (Wallet < ACE_CableTie) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_CableTie];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ZipCuff Cable Restraintfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_CableTie];
            Wallet = (Wallet - ACE_CableTie);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ACE_CableTie", 1];
            hint "Mail Call: Your ZipCuff Cable Restraint has arrived in the deliveries box";
        };
    };

    case 10: {
        if (Wallet < ACE_EarPlugs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_EarPlugs];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Ear Plugsfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_EarPlugs];
            Wallet = (Wallet - ACE_EarPlugs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ACE_EarPlugs", 1];
            hint "Mail Call: Your Ear Plugs has arrived in the deliveries box";
        };
    };

    case 11: {
        if (Wallet < ACE_wirecutter) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_wirecutter];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Wire Cuttersfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_wirecutter];
            Wallet = (Wallet - ACE_wirecutter);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ACE_wirecutter", 1];
            hint "Mail Call: Your Wire Cutters has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet < ACE_SpareBarrel) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_SpareBarrel];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Spare Barrelfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_SpareBarrel];
            Wallet = (Wallet - ACE_SpareBarrel);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ACE_SpareBarrel", 1];
            hint "Mail Call: Your Spare Barrel has arrived in the deliveries box";
        };
    };
};
