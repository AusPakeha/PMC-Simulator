switch (TheSelection) do {
    case 0: {
        if (Wallet < B_AssaultPack_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Black)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_blk ];
            Wallet = (Wallet - B_AssaultPack_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_blk", 1];
            hint "Mail Call: Your Assault Pack (Black) has arrived in the deliveries box";
        };
    };
    case 1: {
        if (Wallet < B_AssaultPack_blk_DiverTL) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_blk_DiverTL ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Black) - Diver Team Leaderfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_blk_DiverTL ];
            Wallet = (Wallet - B_AssaultPack_blk_DiverTL);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_blk_DiverTL", 1];
            hint "Mail Call: Your Assault Pack (Black) - Diver Team Leader has arrived in the deliveries box";
        };
    };
    case 2: {
        if (Wallet < B_AssaultPack_blk_DiverExp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_blk_DiverExp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Black) - Diver Explosives for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_blk_DiverExp ];
            Wallet = (Wallet - B_AssaultPack_blk_DiverExp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_blk_DiverExp", 1];
            hint "Mail Call: Your Assault Pack (Black) - Diver Explosives has arrived in the deliveries box";
        };
    };
    case 3: {
        if (Wallet < B_AssaultPack_cbr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_cbr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_cbr ];
            Wallet = (Wallet - B_AssaultPack_cbr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_cbr", 1];
            hint "Mail Call: Your Assault Pack (Coyote)has arrived in the deliveries box";
        };
    };
    case 4: {
        if (Wallet < B_AssaultPack_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_dgtl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Digi) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_dgtl ];
            Wallet = (Wallet - B_AssaultPack_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_dgtl", 1];
            hint "Mail Call: Your Assault Pack (Digi) has arrived in the deliveries box";
        };
    };
    case 5: {
        if (Wallet < B_AssaultPack_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Green)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_rgr ];
            Wallet = (Wallet - B_AssaultPack_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_rgr", 1];
            hint "Mail Call: Your Assault Pack (Green) has arrived in the deliveries box";
        };
    };
    case 6: {
        if (Wallet < B_AssaultPack_rgr_Repair) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_rgr_Repair];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Green) - Engineer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_rgr_Repair];
            Wallet = (Wallet - B_AssaultPack_rgr_Repair);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_rgr_Repair", 1];
            hint "Mail Call: Your Assault Pack (Green) - Engineer has arrived in the deliveries box";
        };
    };
    case 7: {
        if (Wallet < B_AssaultPack_rgr_Medic) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_rgr_Medic ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Green) - Medicfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_rgr_Medic ];
            Wallet = (Wallet - B_AssaultPack_rgr_Medic);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_rgr_Medic", 1];
            hint "Mail Call: Your Assault Pack (Green) - Medic has arrived in the deliveries box";
        };
    };
    case 8: {
        if (Wallet < B_AssaultPack_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_ocamo ];
            Wallet = (Wallet - B_AssaultPack_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_ocamo", 1];
            hint "Mail Call: Your Assault Pack (Hex) has arrived in the deliveries box";
        };
    };
    case 9: {
        if (Wallet < B_AssaultPack_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Khaki)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_khk ];
            Wallet = (Wallet - B_AssaultPack_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_khk", 1];
            hint "Mail Call: Your Assault Pack (Khaki) has arrived in the deliveries box";
        };
    };
    case 10: {
        if (Wallet < B_AssaultPack_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_mcamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_mcamo ];
            Wallet = (Wallet - B_AssaultPack_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_mcamo", 1];
            hint "Mail Call: Your Assault Pack (MTP) has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet < B_AssaultPack_sgg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_sgg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assault Pack (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_sgg ];
            Wallet = (Wallet - B_AssaultPack_sgg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_AssaultPack_sgg", 1];
            hint "Mail Call: Your Assault Pack (Sage) has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet < B_Bergen_sgg_Exp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Bergen_sgg_Exp];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bergen (Sage) - Explosives for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Bergen_sgg_Exp];
            Wallet = (Wallet - B_Bergen_sgg_Exp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Bergen_sgg_Exp", 1];
            hint "Mail Call: Your Bergen (Sage) - Explosives has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < B_Bergen_sgg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Bergen_sgg];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bergen (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Bergen_sgg];
            Wallet = (Wallet - B_Bergen_sgg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Bergen_sgg", 1];
            hint "Mail Call: Your Bergen (Sage)has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < B_Carryall_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Carryall_ocamo];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carryall (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Carryall_ocamo];
            Wallet = (Wallet - B_Carryall_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Carryall_ocamo", 1];
            hint "Mail Call: Your Carryall (Hex) has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < B_Carryall_oucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Carryall_oucamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carryall (Urban)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Carryall_oucamo ];
            Wallet = (Wallet - B_Carryall_oucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Carryall_oucamo", 1];
            hint "Mail Call: Your Carryall (Urban) has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < B_Carryall_oucamo_Exp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Carryall_oucamo_Exp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Carryall (Urban) - Explosives for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Carryall_oucamo_Exp ];
            Wallet = (Wallet - B_Carryall_oucamo_Exp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Carryall_oucamo_Exp", 1];
            hint "Mail Call: Your Carryall (Urban) - Explosiveshas arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < B_FieldPack_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_blk ];
            Wallet = (Wallet - B_FieldPack_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_blk", 1];
            hint "Mail Call: Your Field Pack (Black) has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet < B_FieldPack_blk_DiverTL) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_blk_DiverTL ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Black) - Diver Team Leader for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_blk_DiverTL ];
            Wallet = (Wallet - B_FieldPack_blk_DiverTL);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_blk_DiverTL", 1];
            hint "Mail Call: Your Field Pack (Black) - Diver Team Leader has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < B_FieldPack_blk_DiverExp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_blk_DiverExp];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Black) - Diver Explosives for $%1.00. Your order will be delivered soon!
            Check the deliveries box often!", B_FieldPack_blk_DiverExp];
            Wallet = (Wallet - B_FieldPack_blk_DiverExp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_blk_DiverExp", 1];
            hint "Mail Call: Your Field Pack (Black) - Diver Explosiveshas arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < B_FieldPack_cbr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_cbr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_cbr ];
            Wallet = (Wallet - B_FieldPack_cbr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_cbr", 1];
            hint "Mail Call: Your Field Pack (Coyote) has arrived in the deliveries box";
        };
    };
    case 21: {
        if (Wallet < B_FieldPack_cbr_AT) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_cbr_AT ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Coyote) - Anti-Tank for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_cbr_AT ];
            Wallet = (Wallet - B_FieldPack_cbr_AT);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_cbr_AT", 1];
            hint "Mail Call: Your Field Pack (Coyote) - Anti-Tank has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < B_FieldPack_cbr_Repair) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_cbr_Repair ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Coyote) - Engineer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_cbr_Repair ];
            Wallet = (Wallet - B_FieldPack_cbr_Repair);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_cbr_Repair", 1];
            hint "Mail Call: Your Field Pack (Coyote) - Engineer has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < B_FieldPack_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Hex)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_ocamo ];
            Wallet = (Wallet - B_FieldPack_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_ocamo", 1];
            hint "Mail Call: Your Field Pack (Hex) has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < B_FieldPack_ocamo_Medic) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_ocamo_Medic ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Hex) - Medicfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_ocamo_Medic ];
            Wallet = (Wallet - B_FieldPack_ocamo_Medic);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_ocamo_Medic", 1];
            hint "Mail Call: Your Field Pack (Hex) - Medic has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < B_FieldPack_oucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_FieldPack_oucamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Field Pack (Urban) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_FieldPack_oucamo ];
            Wallet = (Wallet - B_FieldPack_oucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_FieldPack_oucamo", 1];
            hint "Mail Call: Your Field Pack (Urban) has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < B_Kitbag_cbr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Kitbag_cbr];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Kitbag (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Kitbag_cbr];
            Wallet = (Wallet - B_Kitbag_cbr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Kitbag_cbr", 1];
            hint "Mail Call: Your Kitbag (Coyote) has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < B_Kitbag_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Kitbag_mcamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Kitbag (MTP)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Kitbag_mcamo ];
            Wallet = (Wallet - B_Kitbag_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Kitbag_mcamo", 1];
            hint "Mail Call: Your Kitbag (MTP) has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < B_Kitbag_sgg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Kitbag_sgg];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Kitbag (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Kitbag_sgg];
            Wallet = (Wallet - B_Kitbag_sgg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Kitbag_sgg", 1];
            hint "Mail Call: Your Kitbag (Sage)has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < B_Mk6Mortar_Wpn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Mk6Mortar_Wpn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Mk6 Mortar for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Mk6Mortar_Wpn ];
            Wallet = (Wallet - B_Mk6Mortar_Wpn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["B_Mk6Mortar_Wpn", 1];
            hint "Mail Call: Your Mk6 Mortar has arrived in the deliveries box";
        };
    };
};
