switch (TheSelection) do {
    case 10: {
        if (Wallet < rhs_weap_igla) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_igla ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 9K38 Igla AAfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_igla ];
            Wallet= (wallet - rhs_weap_igla);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_igla", 1];
            hint "Mail Call: Your 9K38 Igla AA has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet < rhs_mag_9k38_rocket) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_9k38_rocket ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 9M39 Igla Rocketfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_9k38_rocket ];
            Wallet= (wallet - rhs_mag_9k38_rocket);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_mag_9k38_rocket", 1];
            hint "Mail Call: Your 9M39 Igla Rocket has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet <  rhs_weap_rpg26) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rpg26 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RPG-26 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rpg26 ];
            Wallet= (wallet - rhs_weap_rpg26);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_rpg26", 1];
            hint "Mail Call: Your RPG-26 has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < rhs_weap_rpg7) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rpg7];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RPG-7 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rpg7];
            Wallet= (wallet - rhs_weap_rpg7);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_rpg7", 1];
            hint "Mail Call: Your RPG-7 has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < rhs_rpg7_PG7VL_mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_rpg7_PG7VL_mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PG-7VL RPG-7V2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_rpg7_PG7VL_mag ];
            Wallet= (wallet - rhs_rpg7_PG7VL_mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_rpg7_PG7VL_mag", 1];
            hint "Mail Call: Your PG-7VL RPG-7V2 has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < rhs_rpg7_PG7VR_mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_rpg7_PG7VR_mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PG-7VR RPG-7V2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_rpg7_PG7VR_mag ];
            Wallet= (wallet - rhs_rpg7_PG7VR_mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_rpg7_PG7VR_mag", 1];
            hint "Mail Call: Your PG-7VR RPG-7V2 has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < rhs_rpg7_OG7V_mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_rpg7_OG7V_mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OG-7V RPG-7V2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_rpg7_OG7V_mag ];
            Wallet= (wallet - rhs_rpg7_OG7V_mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_rpg7_OG7V_mag", 1];
            hint "Mail Call: Your OG-7V RPG-7V2 has arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < rhs_rpg7_TBG7V_mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_rpg7_TBG7V_mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TBG-7V RPG-7V2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_rpg7_TBG7V_mag ];
            Wallet= (wallet - rhs_rpg7_TBG7V_mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_rpg7_TBG7V_mag", 1];
            hint "Mail Call: Your TBG-7V RPG-7V2 has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet < rhs_weap_rshg2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rshg2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RShG-2 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rshg2 ];
            Wallet= (wallet - rhs_weap_rshg2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_rshg2", 1];
            hint "Mail Call: Your RShG-2 has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < rhs_weap_fgm148) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_fgm148];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered FGM-148 Javelin for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_fgm148];
            Wallet= (wallet - rhs_weap_fgm148);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_fgm148", 1];
            hint "Mail Call: Your FGM-148 Javelin has arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < rhs_fgm148_magazine_AT) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_fgm148_magazine_AT ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered HEAT missile for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_fgm148_magazine_AT ];
            Wallet= (wallet - rhs_fgm148_magazine_AT);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_fgm148_magazine_AT", 1];
            hint "Mail Call: Your HEAT missile has arrived in the deliveries box";
        };
    };
    case 21: {
        if (Wallet < rhs_weap_fim92) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_fim92 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered FIM-92F for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_fim92 ];
            Wallet= (wallet - rhs_weap_fim92);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_fim92", 1];
            hint "Mail Call: Your FIM-92F has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < rhs_fim92_mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_fim92_mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Stinger missile for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_fim92_mag ];
            Wallet= (wallet - rhs_fim92_mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlob al["rhs_fim92_mag", 1];
            hint "Mail Call: Your Stinger missile has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < rhs_weap_M136) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M136 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M136 (HEAT) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M136 ];
            Wallet= (wallet - rhs_weap_M136);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M136", 1];
            hint "Mail Call: Your M136 (HEAT) has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < rhs_weap_M136_hedp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M136_hedp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M136 (HEDP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M136_hedp ];
            Wallet= (wallet - rhs_weap_M136_hedp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M136_hedp", 1];
            hint "Mail Call: Your M136 (HEDP) has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < rhs_weap_M136_hp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M136_hp];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M136 (HP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M136_hp];
            Wallet= (wallet - rhs_weap_M136_hp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M136_hp", 1];
            hint "Mail Call: Your M136 (HP) has arrived in the deliveries box";
        };
    };
};
