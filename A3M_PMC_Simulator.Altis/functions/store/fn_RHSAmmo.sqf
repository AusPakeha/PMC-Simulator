switch (TheSelection) do {
    case 25: {
        if (Wallet < rhs_mag_9x19_17) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_9x19_17 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 9x19mm (17 Rds)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_9x19_17 ];
            Wallet= (wallet - rhs_mag_9x19_17);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_9x19_17", 1];
            hint "Mail Call: Your 9x19mm (17 Rds) Ammo has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < rhs_100Rnd_762x54mmR) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_100Rnd_762x54mmR ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PKM (100rd) 762x54mmRfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_100Rnd_762x54mmR ];
            Wallet= (wallet - rhs_100Rnd_762x54mmR);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 1];
            hint "Mail Call: Your PKM (100rd) 762x54mmR Ammo has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < rhs_100Rnd_762x54mmR_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_100Rnd_762x54mmR_green];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PKM (100rd) 762x54mmR (Green)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_100Rnd_762x54mmR_green];
            Wallet= (wallet - rhs_100Rnd_762x54mmR_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_green", 1];
            hint "Mail Call: Your PKM (100rd) 762x54mmR (Green) Ammo has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < rhs_30Rnd_762x39mm) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_762x39mm ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7.62x39mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_762x39mm ];
            Wallet= (wallet - rhs_30Rnd_762x39mm);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm", 1];
            hint "Mail Call: Your 7.62x39mm Ammo has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < rhs_30Rnd_762x39mm_tracer) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_762x39mm_tracer ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7.62x39mm (tracer)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_762x39mm_tracer ];
            Wallet= (wallet - rhs_30Rnd_762x39mm_tracer);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm_tracer", 1];
            hint "Mail Call: Your 7.62x39mm (tracer) Ammo has arrived in the deliveries box";
        };
    };
    case 30: {
        if (Wallet < rhs_30Rnd_762x39mm_89) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_762x39mm_89 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7.62x39mm (89) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_762x39mm_89 ];
            Wallet= (wallet - rhs_30Rnd_762x39mm_89);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm_89", 1];
            hint "Mail Call: Your 7.62x39mm (89) Ammo has arrived in the deliveries box";
        };
    };
    case 31: {
        if (Wallet < rhs_30Rnd_545x39_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_545x39_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 5N7 AK-74 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_545x39_AK ];
            Wallet= (wallet - rhs_30Rnd_545x39_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_545x39_AK", 1];
            hint "Mail Call: Your 5N7 AK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 32: {
        if (Wallet < rhs_30Rnd_545x39_AK_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_545x39_AK_green ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7T3M AK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_545x39_AK_green ];
            Wallet= (wallet - rhs_30Rnd_545x39_AK_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_green", 1];
            hint "Mail Call: Your 7T3M AK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 33: {
        if (Wallet < rhs_30Rnd_545x39_7n10_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_545x39_7n10_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7N10 AK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_545x39_7n10_AK ];
            Wallet= (wallet - rhs_30Rnd_545x39_7n10_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_545x39_7n10_AK", 1];
            hint "Mail Call: Your 7N10 AK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < rhs_30Rnd_545x39_7n22_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_30Rnd_545x39_7n22_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7N22 AK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_30Rnd_545x39_7n22_AK ];
            Wallet= (wallet - rhs_30Rnd_545x39_7n22_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_30Rnd_545x39_7n22_AK", 1];
            hint "Mail Call: Your 7N22 AK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < rhs_45Rnd_545X39_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_45Rnd_545X39_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 5N7 RPK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_45Rnd_545X39_AK ];
            Wallet= (wallet - rhs_45Rnd_545X39_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_45Rnd_545X39_AK", 1];
            hint "Mail Call: Your 5N7 RPK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < rhs_45Rnd_545X39_AK_Green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_45Rnd_545X39_AK_Green ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7T3M RPK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_45Rnd_545X39_AK_Green ];
            Wallet= (wallet - rhs_45Rnd_545X39_AK_Green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_45Rnd_545X39_AK_Green", 1];
            hint "Mail Call: Your 7T3M RPK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < rhs_45Rnd_545X39_7N10_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_45Rnd_545X39_7N10_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7N10 RPK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_45Rnd_545X39_7N10_AK ];
            Wallet= (wallet - rhs_45Rnd_545X39_7N10_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_45Rnd_545X39_7N10_AK", 1];
            hint "Mail Call: Your 7N10 RPK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < rhs_45Rnd_545X39_7N22_AK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_45Rnd_545X39_7N22_AK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7N22 RPK-74for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_45Rnd_545X39_7N22_AK ];
            Wallet= (wallet - rhs_45Rnd_545X39_7N22_AK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_45Rnd_545X39_7N22_AK", 1];
            hint "Mail Call: Your 7N22 RPK-74 Ammo has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < rhs_10Rnd_762x54mmR_7N1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_10Rnd_762x54mmR_7N1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 7N1 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_10Rnd_762x54mmR_7N1 ];
            Wallet= (wallet - rhs_10Rnd_762x54mmR_7N1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N1", 1];
            hint "Mail Call: Your 7N1 Ammo has arrived in the deliveries box";
        };
    };
    case 40: {
        if (Wallet < rhsusf_20Rnd_762x51_m118_special_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_20Rnd_762x51_m118_special_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M118 Special 20 Rndsfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_20Rnd_762x51_m118_special_Mag ];
            Wallet= (wallet - rhsusf_20Rnd_762x51_m118_special_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 1];
            hint "Mail Call: Your M118 Special 20 Rnds Ammo has arrived in the deliveries box";
        };
    };
    case 41: {
        if (Wallet < rhsusf_20Rnd_762x51_m993_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_20Rnd_762x51_m993_Mag];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M993 20 Rnds for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_20Rnd_762x51_m993_Mag];
            Wallet= (wallet - rhsusf_20Rnd_762x51_m993_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag", 1];
            hint "Mail Call: Your M993 20 Rnds has arrived in the deliveries box";
        };
    };
    case 42: {
        if (Wallet < rhs_mag_30Rnd_556x45_Mk262_Stanag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_Mk262_Stanag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Mk262 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_Mk262_Stanag ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_Mk262_Stanag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 1];
            hint "Mail Call: Your Mk262 Ammo has arrived in the deliveries box";
        };
    };
    case 43: {
        if (Wallet < rhs_mag_30Rnd_556x45_Mk318_Stanag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_Mk318_Stanag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Mk318 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_Mk318_Stanag ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_Mk318_Stanag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 1];
            hint "Mail Call: Your Mk318 Ammo has arrived in the deliveries box";
        };
    };
    case 44: {
        if (Wallet < rhs_mag_30Rnd_556x45_M855A1_Stanag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M855A1_Stanag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M885A1 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M855A1_Stanag ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M855A1_Stanag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 1];
            hint "Mail Call: Your M885A1 Ammo has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M885A1 (no tracers) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", 1];
            hint "Mail Call: Your M885A1 (no tracers) Ammo has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M885A1 (red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1];
            hint "Mail Call: Your M885A1 (red) Ammo has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M885A1 (green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 1];
            hint "Mail Call: Your M885A1 (green) Ammo has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M885A1 (yellow) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 1];
            hint "Mail Call: Your M885A1 (yellow) Ammo has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < rhs_mag_30Rnd_556x45_M200_Stanag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_30Rnd_556x45_M200_Stanag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M200 (blanks) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_30Rnd_556x45_M200_Stanag ];
            Wallet= (wallet - rhs_mag_30Rnd_556x45_M200_Stanag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M200_Stanag", 1];
            hint "Mail Call: Your M200 (blanks) Ammo has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < rhsusf_5Rnd_300winmag_xm2010) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_5Rnd_300winmag_xm2010 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered .300 Win Mag for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_5Rnd_300winmag_xm2010 ];
            Wallet= (wallet - rhsusf_5Rnd_300winmag_xm2010);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 1];
            hint "Mail Call: Your .300 Win Mag Ammo has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < rhsusf_100Rnd_762x51) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_100Rnd_762x51 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M240 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_100Rnd_762x51 ];
            Wallet= (wallet - rhsusf_100Rnd_762x51);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_100Rnd_762x51", 1];
            hint "Mail Call: Your M240 Ammo has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < rhsusf_100Rnd_556x45_soft_pouch) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_100Rnd_556x45_soft_pouch ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M249 soft pouch (100Rnd) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_100Rnd_556x45_soft_pouch ];
            Wallet= (wallet - rhsusf_100Rnd_556x45_soft_pouch);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 1];
            hint "Mail Call: Your M249 soft pouch (100Rnd) Ammo has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < rhsusf_100Rnd_556x45_M200_soft_pouch) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_100Rnd_556x45_M200_soft_pouch ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M249 soft pouch (100Rnd Blanks)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_100Rnd_556x45_M200_soft_pouch ];
            Wallet= (wallet - rhsusf_100Rnd_556x45_M200_soft_pouch);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_100Rnd_556x45_M200_soft_pouch", 1];
            hint "Mail Call: Your M249 soft pouch (100Rnd Blanks) Ammo has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < rhsusf_200Rnd_556x45_soft_pouch) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_200Rnd_556x45_soft_pouch ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M249 soft pouch (200Rnd) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_200Rnd_556x45_soft_pouch ];
            Wallet= (wallet - rhsusf_200Rnd_556x45_soft_pouch);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch", 1];
            hint "Mail Call: Your M249 soft pouch (200Rnd) Ammo has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < rhsusf_5Rnd_00Buck) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_5Rnd_00Buck ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 5Rnd .00 Buckshot for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_5Rnd_00Buck ];
            Wallet= (wallet - rhsusf_5Rnd_00Buck);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_5Rnd_00Buck", 1];
            hint "Mail Call: Your 5Rnd .00 Buckshot Ammo has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < rhsusf_8Rnd_00Buck) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_8Rnd_00Buck ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 8Rnd .00 Buckshot for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_8Rnd_00Buck ];
            Wallet= (wallet - rhsusf_8Rnd_00Buck);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_8Rnd_00Buck", 1];
            hint "Mail Call: Your 8Rnd .00 Buckshot Ammo has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < rhsusf_20Rnd_762x51_m118_special_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_20Rnd_762x51_m118_special_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M118 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_20Rnd_762x51_m118_special_Mag ];
            Wallet= (wallet - rhsusf_20Rnd_762x51_m118_special_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 1];
            hint "Mail Call: Your M118 Ammo has arrived in the deliveries box";
        };
    };
    case 58: {
        if (Wallet < rhsusf_20Rnd_762x51_m993_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_20Rnd_762x51_m993_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M993 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_20Rnd_762x51_m993_Mag ];
            Wallet= (wallet - rhsusf_20Rnd_762x51_m993_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag", 1];
            hint "Mail Call: Your M993 Ammo has arrived in the deliveries box";
        };
    };
};
