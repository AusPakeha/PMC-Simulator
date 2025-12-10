switch (TheSelection) do {
    case 6 : {
        if (Wallet < ef_snds_mxar) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ef_snds_mxar ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MXAR Sound Suppressor (6.5mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ef_snds_mxar ];
            Wallet= (wallet - ef_snds_mxar);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["ef_snds_mxar", 1];
            hint "Mail Call: Your MXAR Sound Suppressor (6.5mm) has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < ef_snds_mxar_sand) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ef_snds_mxar_sand ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MXAR Sound Suppressor (6.5mm, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ef_snds_mxar_sand ];
            Wallet= (wallet - ef_snds_mxar_sand);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["ef_snds_mxar_sand", 1];
            hint "Mail Call: Your MXAR Sound Suppressor (6.5mm, Sand) has arrived in the deliveries box";
        };
    };
    case 8 : {
        if (Wallet < ef_snds_mxar_coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ef_snds_mxar_coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MXAR Sound Suppressor (6.5mm, Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ef_snds_mxar_coy ];
            Wallet= (wallet - ef_snds_mxar_coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["ef_snds_mxar_coy", 1];
            hint "Mail Call: Your MXAR Sound Suppressor (6.5mm, Coyote) has arrived in the deliveries box";
        };
    };
    case 9 : {
        if (Wallet < ef_snds_mxar_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ef_snds_mxar_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MXAR Sound Suppressor (6.5mm, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ef_snds_mxar_khk ];
            Wallet= (wallet - ef_snds_mxar_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["ef_snds_mxar_khk", 1];
            hint "Mail Call: Your MXAR Sound Suppressor (6.5mm, Khaki) has arrived in the deliveries box";
        };
    };
};
