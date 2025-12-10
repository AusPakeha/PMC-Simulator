switch (TheSelection) do {
    case 25: {
        if (Wallet < rhs_weap_pkm) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_pkm];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PKMfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_pkm];
            Wallet = (Wallet - rhs_weap_pkm);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_pkm", 1];
            hint "Mail Call: Your PKM has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < rhs_weap_ak103) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak103];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-103 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak103];
            Wallet = (Wallet - rhs_weap_ak103);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak103", 1];
            hint "Mail Call: Your AK-103 has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < rhs_weap_ak103_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak103_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-103 (NPZ) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak103_npz];
            Wallet = (Wallet - rhs_weap_ak103_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak103_npz", 1];
            hint "Mail Call: Your AK-103 (NPZ) has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < rhs_weap_ak103_1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak103_1];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-103 1 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak103_1];
            Wallet = (Wallet - rhs_weap_ak103_1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak103_1", 1];
            hint "Mail Call: Your AK-103 1 has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < rhs_weap_ak103_2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak103_2];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-103 2 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak103_2];
            Wallet = (Wallet - rhs_weap_ak103_2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak103_2", 1];
            hint "Mail Call: Your AK-103 2 has arrived in the deliveries box";
        };
    };
    case 30: {
        if (Wallet < rhs_weap_ak74m) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m ];
            Wallet = (Wallet - rhs_weap_ak74m);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            Sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m", 1];
            hint "Mail Call: Your AK-74M has arrived in the deliveries box";
        };
    };
    case 31: {
        if (Wallet < rhs_weap_ak74m_plummag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_plummag];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (Plum Mag) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_plummag];
            Wallet = (Wallet - rhs_weap_ak74m_plummag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_plummag", 1];
            hint "Mail Call: Your AK-74M (Plum Mag) has arrived in the deliveries box";
        };
    };
    case 32: {
        if (Wallet < rhs_weap_ak74m_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (NPZ) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_npz];
            Wallet = (Wallet - rhs_weap_ak74m_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_npz", 1];
            hint "Mail Call: Your AK-74M (NPZ) has arrived in the deliveries box";
        };
    };
    case 33: {
        if (Wallet < rhs_weap_ak74m_folded) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_folded ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (folded) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_folded ];
            Wallet = (Wallet - rhs_weap_ak74m_folded);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_folded", 1];
            hint "Mail Call: Your AK-74M (folded) has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < rhs_weap_ak74m_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_camo ];
            Wallet = (Wallet - rhs_weap_ak74m_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_camo", 1];
            hint "Mail Call: Your AK-74M (camo) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < rhs_weap_ak74m_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_desert ];
            Wallet = (Wallet - rhs_weap_ak74m_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_desert", 1];
            hint "Mail Call: Your AK-74M (desert) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < rhs_weap_ak74m_2mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_2mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (2 mag) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_2mag ];
            Wallet = (Wallet - rhs_weap_ak74m_2mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_2mag", 1];
            hint "Mail Call: Your AK-74M (2 mag) has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < rhs_weap_ak74m_2mag_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_2mag_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (2 mag/NPZ) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_2mag_npz];
            Wallet = (Wallet - rhs_weap_ak74m_2mag_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_2mag_npz", 1];
            hint "Mail Call: Your AK-74M (2 mag/NPZ) has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < rhs_weap_ak74m_2mag_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_2mag_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (2 mag and camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_2mag_camo ];
            Wallet = (Wallet - rhs_weap_ak74m_2mag_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_2mag_camo", 1];
            hint "Mail Call: Your AK-74M (2 mag and camo) has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < rhs_weap_ak74m_gp25) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_gp25 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (GP-25 Kostyor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_gp25 ];
            Wallet = (Wallet - rhs_weap_ak74m_gp25);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_gp25", 1];
            hint "Mail Call: Your AK-74M (GP-25 Kostyor) has arrived in the deliveries box";
        };
    };
    case 40: {
        if (Wallet < rhs_weap_ak74m_gp25_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_ak74m_gp25_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AK-74M (GP-25 Kostyor/NPZ) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_ak74m_gp25_npz];
            Wallet = (Wallet - rhs_weap_ak74m_gp25_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_ak74m_gp25_npz", 1];
            hint "Mail Call: Your AK-74M (GP-25 Kostyor/NPZ) has arrived in the deliveries box";
        };
    };
    case 41: {
        if (Wallet < rhs_weap_svdp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svdp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-M Dragunov for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svdp ];
            Wallet = (Wallet - rhs_weap_svdp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svdp", 1];
            hint "Mail Call: Your SVD-M Dragunov has arrived in the deliveries box";
        };
    };
    case 42: {
        if (Wallet < rhs_weap_svdp_wd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svdp_wd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-M Dragunov (camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svdp_wd ];
            Wallet = (Wallet - rhs_weap_svdp_wd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svdp_wd", 1];
            hint "Mail Call: Your SVD-M Dragunov (camo) has arrived in the deliveries box";
        };
    };
    case 43: {
        if (Wallet < rhs_weap_svds) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svds ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-S Dragunov for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svds ];
            Wallet = (Wallet - rhs_weap_svds);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svds", 1];
            hint "Mail Call: Your SVD-S Dragunov has arrived in the deliveries box";
        };
    };
    case 44: {
        if (Wallet < rhs_weap_svdp_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svdp_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-M Dragunov for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svdp_npz];
            Wallet = (Wallet - rhs_weap_svdp_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svdp_npz", 1];
            hint "Mail Call: Your SVD-M Dragunov has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < rhs_weap_svdp_wd_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svdp_wd_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-M Dragunov (camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svdp_wd_npz];
            Wallet = (Wallet - rhs_weap_svdp_wd_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svdp_wd_npz", 1];
            hint "Mail Call: Your SVD-M Dragunov (camo) has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < rhs_weap_svds_npz) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_svds_npz];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SVD-S Dragunov for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_svds_npz];
            Wallet = (Wallet - rhs_weap_svds_npz);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_svds_npz", 1];
            hint "Mail Call: Your SVD-S Dragunov has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < rhs_weap_m14ebrri) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m14ebrri ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Mk14 EBR-RIfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m14ebrri ];
            Wallet = (Wallet - rhs_weap_m14ebrri);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m14ebrri", 1];
            hint "Mail Call: Your Mk14 EBR-RI has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < rhs_weap_m16a4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m16a4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M16A4 RIS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m16a4 ];
            Wallet = (Wallet - rhs_weap_m16a4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m16a4", 1];
            hint "Mail Call: Your M16A4 RIS has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < rhs_weap_m16a4_grip) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m16a4_grip ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M16A4 (Grippod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m16a4_grip ];
            Wallet = (Wallet - rhs_weap_m16a4_grip);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m16a4_grip", 1];
            hint "Mail Call: Your M16A4 (Grippod) has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < rhs_weap_m16a4_carryhandle) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m16a4_carryhandle ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M16A4 (Carryhandle) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m16a4_carryhandle ];
            Wallet = (Wallet - rhs_weap_m16a4_carryhandle);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle", 1];
            hint "Mail Call: Your M16A4 (Carryhandle) has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < rhs_weap_m16a4_carryhandle_pmag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m16a4_carryhandle_pmag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M16A4 (Carryhandle/Pmag) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m16a4_carryhandle_pmag ];
            Wallet = (Wallet - rhs_weap_m16a4_carryhandle_pmag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_pmag", 1];
            hint "Mail Call: Your M16A4 (Carryhandle/Pmag) has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < rhs_weap_m16a4_carryhandle_M203) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m16a4_carryhandle_M203];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M16A4 (Carryhandle/M203) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m16a4_carryhandle_M203];
            Wallet = (Wallet - rhs_weap_m16a4_carryhandle_M203);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_M203", 1];
            hint "Mail Call: Your M16A4 (Carryhandle/M203) has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < rhs_weap_XM2010) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_XM2010 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M2010 ESR for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_XM2010 ];
            Wallet = (Wallet - rhs_weap_XM2010);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_XM2010", 1];
            hint "Mail Call: Your M2010 ESR has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < rhs_weap_XM2010_wd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_XM2010_wd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M2010 ESR (camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_XM2010_wd ];
            Wallet = (Wallet - rhs_weap_XM2010_wd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_XM2010_wd", 1];
            hint "Mail Call: Your M2010 ESR (camo) has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < rhs_weap_XM2010_d) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_XM2010_d ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M2010 ESR (desert)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_XM2010_d ];
            Wallet = (Wallet - rhs_weap_XM2010_d);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_XM2010_d", 1];
            hint "Mail Call: Your M2010 ESR (desert) has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < rhs_weap_XM2010_sa) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_XM2010_sa ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M2010 ESR (semi-arid)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_XM2010_sa ];
            Wallet = (Wallet - rhs_weap_XM2010_sa);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_XM2010_sa", 1];
            hint "Mail Call: Your M2010 ESR (semi-arid) has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < rhs_weap_m240B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m240B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M240B for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m240B ];
            Wallet = (Wallet - rhs_weap_m240B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m240B", 1];
            hint "Mail Call: Your M240B has arrived in the deliveries box";
        };
    };
    case 58: {
        if (Wallet < rhs_weap_m249_pip) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m249_pip ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M249 PIP for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m249_pip ];
            Wallet = (Wallet - rhs_weap_m249_pip);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m249_pip", 1];
            hint "Mail Call: Your M249 PIP has arrived in the deliveries box";
        };
    };
    case 59: {
        if (Wallet < rhs_weap_M320) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M320 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M320 GLMfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M320 ];
            Wallet = (Wallet - rhs_weap_M320);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M320", 1];
            hint "Mail Call: Your M320 GLM has arrived in the deliveries box";
        };
    };
    case 60: {
        if (Wallet < rhs_weap_m4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 RIS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4 ];
            Wallet = (Wallet - rhs_weap_m4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4", 1];
            hint "Mail Call: Your M4 RIS has arrived in the deliveries box";
        };
    };
    case 61: {
        if (Wallet < rhs_weap_m4_grip) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_grip ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (Grippod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_grip ];
            Wallet = (Wallet - rhs_weap_m4_grip);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_grip", 1];
            hint "Mail Call: Your M4 (Grippod) has arrived in the deliveries box";
        };
    };
    case 62: {
        if (Wallet < rhs_weap_m4_grip2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_grip2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (AFG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_grip2 ];
            Wallet = (Wallet - rhs_weap_m4_grip2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_grip2", 1];
            hint "Mail Call: Your M4 (AFG) has arrived in the deliveries box";
        };
    };
    case 63: {
        if (Wallet < rhs_weap_m4_bipod) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_bipod ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (Bipod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_bipod ];
            Wallet = (Wallet - rhs_weap_m4_bipod);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_bipod", 1];
            hint "Mail Call: Your M4 (Bipod) has arrived in the deliveries box";
        };
    };
    case 64: {
        if (Wallet < rhs_weap_m4_carryhandle) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_carryhandle ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (Carryhandle) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_carryhandle ];
            Wallet = (Wallet - rhs_weap_m4_carryhandle);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_carryhandle", 1];
            hint "Mail Call: Your M4 (Carryhandle) has arrived in the deliveries box";
        };
    };
    case 65: {
        if (Wallet < rhs_weap_m4_carryhandle_pmag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_carryhandle_pmag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (Carryhandle/PMAG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_carryhandle_pmag ];
            Wallet = (Wallet - rhs_weap_m4_carryhandle_pmag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_carryhandle_pmag", 1];
            hint "Mail Call: Your M4 (Carryhandle/PMAG) has arrived in the deliveries box";
        };
    };
    case 66: {
        if (Wallet < rhs_weap_m4_m203) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_m203 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (M203) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_m203 ];
            Wallet = (Wallet - rhs_weap_m4_m203);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_m203", 1];
            hint "Mail Call: Your M4 (M203) has arrived in the deliveries box";
        };
    };
    case 67: {
        if (Wallet < rhs_weap_m4_m203S) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4_m203S ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (M203S) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4_m203S ];
            Wallet = (Wallet - rhs_weap_m4_m203S);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4_m203S", 1];
            hint "Mail Call: Your M4 (M203S) has arrived in the deliveries box";
        };
    };
    case 68: {
        if (Wallet < rhs_m4_m320) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_m4_m320 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4 (M320) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_m4_m320 ];
            Wallet = (Wallet - rhs_m4_m320);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_m4_m320", 1];
            hint "Mail Call: Your M4 (M320) has arrived in the deliveries box";
        };
    };
    case 69: {
        if (Wallet < rhs_weap_m4a1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 RIS for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1 ];
            Wallet = (Wallet - rhs_weap_m4a1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1", 1];
            hint "Mail Call: Your M4A1 RIS has arrived in the deliveries box";
        };
    };
    case 70: {
        if (Wallet < rhs_weap_m4a1_grip) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_grip ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Grippod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_grip ];
            Wallet = (Wallet - rhs_weap_m4a1_grip);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_grip", 1];
            hint "Mail Call: Your M4A1 (Grippod) has arrived in the deliveries box";
        };
    };
    case 71: {
        if (Wallet < rhs_weap_m4a1_grip2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_grip2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (AFG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_grip2 ];
            Wallet = (Wallet - rhs_weap_m4a1_grip2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_grip2", 1];
            hint "Mail Call: Your M4A1 (AFG) has arrived in the deliveries box";
        };
    };
    case 72: {
        if (Wallet < rhs_weap_m4a1_bipod) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_bipod ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Bipod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_bipod ];
            Wallet = (Wallet - rhs_weap_m4a1_bipod);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_bipod", 1];
            hint "Mail Call: Your M4A1 (Bipod) has arrived in the deliveries box";
        };
    };
    case 73: {
        if (Wallet < rhs_weap_m4a1_carryhandle) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle", 1];
            hint "Mail Call: Your M4A1 (Carryhandle) has arrived in the deliveries box";
        };
    };
    case 74: {
        if (Wallet < rhs_weap_m4a1_carryhandle_grip) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle_grip];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle/Grippod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle_grip];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle_grip);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle_grip", 1];
            hint "Mail Call: Your M4A1 (Carryhandle/Grippod) has arrived in the deliveries box";
        };
    };
    case 75: {
        if (Wallet < rhs_weap_m4a1_carryhandle_grip2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle_grip2];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle/AFG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle_grip2];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle_grip2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle_grip2", 1];
            hint "Mail Call: Your M4A1 (Carryhandle/AFG) has arrived in the deliveries box";
        };
    };
    case 76: {
        if (Wallet < rhs_weap_m4a1_carryhandle_bipod) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle_bipod];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle/Bipod) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle_bipod];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle_bipod);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle_bipod", 1];
            hint "Mail Call: Your M4A1 (Carryhandle/Bipod) has arrived in the deliveries box";
        };
    };
    case 77: {
        if (Wallet < rhs_weap_m4a1_m203) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_m203 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (M203) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_m203 ];
            Wallet = (Wallet - rhs_weap_m4a1_m203);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_m203", 1];
            hint "Mail Call: Your M4A1 (M203) has arrived in the deliveries box";
        };
    };
    case 78: {
        if (Wallet < rhs_weap_m4a1_m203s) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_m203s ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (M203S) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_m203s ];
            Wallet = (Wallet - rhs_weap_m4a1_m203s);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_m203s", 1];
            hint "Mail Call: Your M4A1 (M203S) has arrived in the deliveries box";
        };
    };
    case 79: {
        if (Wallet < rhs_weap_m4a1_carryhandle_m203) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle_m203 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle/M203) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle_m203 ];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle_m203);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle_m203", 1];
            hint "Mail Call: Your M4A1 (Carryhandle/M203) has arrived in the deliveries box";
        };
    };
    case 80: {
        if (Wallet < rhs_weap_m4a1_carryhandle_m203s) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_carryhandle_m203s ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (Carryhandle/M203S) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_carryhandle_m203s ];
            Wallet = (Wallet - rhs_weap_m4a1_carryhandle_m203s);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle_m203s", 1];
            hint "Mail Call: Your M4A1 (Carryhandle/M203S) has arrived in the deliveries box";
        };
    };
    case 81: {
        if (Wallet < rhs_m4a1_m320) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_m4a1_m320 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 (M320) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_m4a1_m320 ];
            Wallet = (Wallet - rhs_m4a1_m320);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_m4a1_m320", 1];
            hint "Mail Call: Your M4A1 (M320) has arrived in the deliveries box";
        };
    };
    case 82: {
        if (Wallet < rhs_weap_m4a1_blockII) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_blockII ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 Block II for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_blockII ];
            Wallet = (Wallet - rhs_weap_m4a1_blockII);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_blockII", 1];
            hint "Mail Call: Your M4A1 Block II has arrived in the deliveries box";
        };
    };
    case 83: {
        if (Wallet < rhs_weap_m4a1_blockII_grip2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_blockII_grip2 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 Block II (AFG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_blockII_grip2 ];
            Wallet = (Wallet - rhs_weap_m4a1_blockII_grip2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_blockII_grip2", 1];
            hint "Mail Call: Your M4A1 Block II (AFG) has arrived in the deliveries box";
        };
    };
    case 84: {
        if (Wallet < rhs_weap_m4a1_blockII_KAC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_blockII_KAC ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 Block II (KAC) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_blockII_KAC ];
            Wallet = (Wallet - rhs_weap_m4a1_blockII_KAC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_blockII_KAC", 1];
            hint "Mail Call: Your M4A1 Block II (KAC) has arrived in the deliveries box";
        };
    };
    case 85: {
        if (Wallet < rhs_weap_m4a1_blockII_grip2_KAC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_blockII_grip2_KAC ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 Block II (AFG/KAC) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_blockII_grip2_KAC ];
            Wallet = (Wallet - rhs_weap_m4a1_blockII_grip2_KAC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_blockII_grip2_KAC", 1];
            hint "Mail Call: Your M4A1 Block II (AFG/KAC) has arrived in the deliveries box";
        };
    };
    case 86: {
        if (Wallet < rhs_weap_m4a1_blockII_M203) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_m4a1_blockII_M203 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M4A1 Block II (M203) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_m4a1_blockII_M203 ];
            Wallet = (Wallet - rhs_weap_m4a1_blockII_M203);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_m4a1_blockII_M203", 1];
            hint "Mail Call: Your M4A1 Block II (M203) has arrived in the deliveries box";
        };
    };
    case 87: {
        if (Wallet < rhs_weap_M590_5RD) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M590_5RD ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M590A1 Shortfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M590_5RD ];
            Wallet = (Wallet - rhs_weap_M590_5RD);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M590_5RD", 1];
            hint "Mail Call: Your M590A1 Short has arrived in the deliveries box";
        };
    };
    case 88: {
        if (Wallet < rhs_weap_M590_8RD) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_M590_8RD ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M590A1 Longfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_M590_8RD ];
            Wallet = (Wallet - rhs_weap_M590_8RD);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_M590_8RD", 1];
            hint "Mail Call: Your M590A1 Long has arrived in the deliveries box";
        };
    };
    case 89: {
        if (Wallet < rhs_weap_mk18) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_mk18];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MK18 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_mk18];
            Wallet = (Wallet - rhs_weap_mk18);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_mk18", 1];
            hint "Mail Call: Your MK18 has arrived in the deliveries box";
        };
    };
    case 90: {
        if (Wallet < rhs_weap_mk18_grip2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_mk18_grip2];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MK18 (AFG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_mk18_grip2];
            Wallet = (Wallet - rhs_weap_mk18_grip2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_mk18_grip2", 1];
            hint "Mail Call: Your MK18 (AFG) has arrived in the deliveries box";
        };
    };
    case 91: {
        if (Wallet < rhs_weap_mk18_KAC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_mk18_KAC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MK18 (KAC) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_mk18_KAC];
            Wallet = (Wallet - rhs_weap_mk18_KAC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_mk18_KAC", 1];
            hint "Mail Call: Your MK18 (KAC) has arrived in the deliveries box";
        };
    };
    case 92: {
        if (Wallet < rhs_weap_mk18_grip2_KAC) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_mk18_grip2_KAC];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MK18 (AFG/KAC) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_mk18_grip2_KAC];
            Wallet = (Wallet - rhs_weap_mk18_grip2_KAC);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_mk18_grip2_KAC", 1];
            hint "Mail Call: Your MK18 (AFG/KAC) has arrived in the deliveries box";
        };
    };
    case 93: {
        if (Wallet < rhs_weap_sr25) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_sr25];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SR-25for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_sr25];
            Wallet = (Wallet - rhs_weap_sr25);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_sr25", 1];
            hint "Mail Call: Your SR-25 has arrived in the deliveries box";
        };
    };
    case 94: {
        if (Wallet < rhs_weap_sr25_ec) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_sr25_ec];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SR-25 EC for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_sr25_ec];
            Wallet = (Wallet - rhs_weap_sr25_ec);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["rhs_weap_sr25_ec", 1];
            hint "Mail Call: Your SR-25 EC has arrived in the deliveries box";
        };
    };
};
