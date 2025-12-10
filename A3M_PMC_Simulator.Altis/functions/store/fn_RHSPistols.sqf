switch (TheSelection) do {
    case 8: {
        if (Wallet < rhs_weap_makarov_pmm) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_makarov_pmm];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Makarov PMMfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_makarov_pmm];
            Wallet = (Wallet - rhs_weap_makarov_pmm);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_makarov_pmm", 1];
            hint "Mail Call: Your Makarov PMM has arrived in the deliveries box";
        };
    };
    case 9: {
        if (Wallet < rhs_weap_pya) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_pya];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MP-443 Grachfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_pya];
            Wallet = (Wallet - rhs_weap_pya);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_pya", 1];
            hint "Mail Call: Your MP-443 Grach has arrived in the deliveries box";
        };
    };
};
