switch (TheSelection) do {
    case 12: {
        if (Wallet < rhs_VOG25) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_VOG25 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered VOG-25 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_VOG25 ];
            Wallet = (Wallet - rhs_VOG25);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_VOG25", 1];
            hint "Mail Call: Your VOG-25 has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < rhs_VOG25p) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_VOG25p ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered VOG-25P (Bouncing) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_VOG25p ];
            Wallet = (Wallet - rhs_VOG25p);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_VOG25p", 1];
            hint "Mail Call: Your VOG-25P (Bouncing) has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < rhs_vg40tb) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_vg40tb ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered VOG-25TB (Thermobaric)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_vg40tb ];
            Wallet = (Wallet - rhs_vg40tb);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_vg40tb", 1];
            hint "Mail Call: Your VOG-25TB (Thermobaric) has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < rhs_g_vg40sz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_g_vg40sz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered VOG-40SZ (Flashbang)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_g_vg40sz];
            Wallet = (Wallet - rhs_g_vg40sz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_g_vg40sz", 1];
            hint "Mail Call: Your VOG-40SZ (Flashbang) has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < rhs_mag_rgd5) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_rgd5];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RGD-5 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_rgd5];
            Wallet = (Wallet - rhs_mag_rgd5);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_rgd5", 1];
            hint "Mail Call: Your RGD-5 has arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < rhs_mag_fakel) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_fakel];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Fakel for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_fakel];
            Wallet = (Wallet - rhs_mag_fakel);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_fakel", 1];
            hint "Mail Call: Your Fakel has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet < rhs_mag_fakels) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_fakels];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Fakel-S for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_fakels];
            Wallet = (Wallet - rhs_mag_fakels);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_fakels", 1];
            hint "Mail Call: Your Fakel-S has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < rhs_mag_zarya2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_zarya2];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Zarya-2 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_zarya2];
            Wallet = (Wallet - rhs_mag_zarya2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_zarya2", 1];
            hint "Mail Call: Your Zarya-2 has arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < rhs_mag_plamyam) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_plamyam];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Plamya-M for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_plamyam];
            Wallet = (Wallet - rhs_mag_plamyam);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_plamyam", 1];
            hint "Mail Call: Your Plamya-M has arrived in the deliveries box";
        };
    };
    case 21: {
        if (Wallet < rhs_mag_M433_HEDP) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M433_HEDP ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M433 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M433_HEDP ];
            Wallet = (Wallet - rhs_mag_M433_HEDP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_M433_HEDP", 1];
            hint "Mail Call: Your M433 has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < rhs_mag_M4009) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M4009 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stun grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M4009 ];
            Wallet = (Wallet - rhs_mag_M4009);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_M4009", 1];
            hint "Mail Call: Your Stun grenade has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < rhs_mag_m576) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m576 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M576 Buckshot for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m576 ];
            Wallet = (Wallet - rhs_mag_m576);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_m576", 1];
            hint "Mail Call: Your M576 Buckshot has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < rhs_mag_m67) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m67 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M67 Frag Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m67 ];
            Wallet = (Wallet - rhs_mag_m67);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_m67", 1];
            hint "Mail Call: Your M67 Frag Grenade has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < rhs_mag_mk84) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_mk84];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Mk84 Stun Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_mk84];
            Wallet = (Wallet - rhs_mag_mk84);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_mk84", 1];
            hint "Mail Call: Your Mk84 Stun Grenade has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < rhs_mag_an_m14_th3) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_an_m14_th3];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M14/Th3 incendiary for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_an_m14_th3];
            Wallet = (Wallet - rhs_mag_an_m14_th3);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_an_m14_th3", 1];
            hint "Mail Call: Your M14/Th3 incendiary has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < rhs_mag_m7a3_cs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m7a3_cs];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M7A3 Gas CS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m7a3_cs];
            Wallet = (Wallet - rhs_mag_m7a3_cs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_m7a3_cs", 1];
            hint "Mail Call: Your M7A3 Gas CS has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < rhs_mag_mk3a2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_mk3a2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M84 Stun Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_mk3a2 ];
            Wallet = (Wallet - rhs_mag_mk3a2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_mk3a2", 1];
            hint "Mail Call: Your M84 Stun Grenade has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < rhs_mag_m69) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m69];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M69 Practice Grenadefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m69];
            Wallet = (Wallet - rhs_mag_m69);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_m69", 1];
            hint "Mail Call: Your M69 Practice Grenade has arrived in the deliveries box";
        };
    };
};
