switch (TheSelection) do {
    case 0: {
        if (Wallet < H_Bandanna_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_camo ];
            Wallet= (wallet - H_Bandanna_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_camo", 1];
            hint "Mail Call: Your Bandanna (Camo) has arrived in the deliveries box";
        };
    };
    case 1: {
        if (Wallet < H_Bandanna_cbr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_cbr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_cbr ];
            Wallet= (wallet - H_Bandanna_cbr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_cbr", 1];
            hint "Mail Call: Your Bandanna (Coyote)has arrived in the deliveries box";
        };
    };
    case 2: {
        if (Wallet < H_Bandanna_gry) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_gry ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Gray) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_gry ];
            Wallet= (wallet - H_Bandanna_gry);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_gry", 1];
            hint "Mail Call: Your Bandanna (Gray) has arrived in the deliveries box";
        };
    };
    case 3: {
        if (Wallet < H_Bandanna_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Khaki)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_khk ];
            Wallet= (wallet - H_Bandanna_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_khk", 1];
            hint "Mail Call: Your Bandanna (Khaki) has arrived in the deliveries box";
        };
    };
    case 4: {
        if (Wallet < H_Bandanna_khk_hs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_khk_hs ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Headset) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_khk_hs ];
            Wallet= (wallet - H_Bandanna_khk_hs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_khk_hs", 1];
            hint "Mail Call: Your Bandanna (Headset) has arrived in the deliveries box";
        };
    };
    case 5: {
        if (Wallet < H_Bandanna_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_mcamo];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_mcamo];
            Wallet= (wallet - H_Bandanna_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_mcamo", 1];
            hint "Mail Call: Your Bandanna (MTP) has arrived in the deliveries box";
        };
    };
    case 6: {
        if (Wallet < H_Bandanna_sgg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_sgg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_sgg ];
            Wallet= (wallet - H_Bandanna_sgg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_sgg", 1];
            hint "Mail Call: Your Bandanna (Sage) has arrived in the deliveries box";
        };
    };
    case 7: {
        if (Wallet < H_Bandanna_surfer) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Bandanna_surfer ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna (Surfer) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Bandanna_surfer ];
            Wallet= (wallet - H_Bandanna_surfer);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Bandanna_surfer", 1];
            hint "Mail Call: Your Bandanna (Surfer)has arrived in the deliveries box";
        };
    };
    case 8: {
        if (Wallet < H_BandMask_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_BandMask_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna Mask (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_BandMask_blk ];
            Wallet= (wallet - H_BandMask_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_BandMask_blk", 1];
            hint "Mail Call: Your Bandanna Mask (Black)has arrived in the deliveries box";
        };
    };
    case 9: {
        if (Wallet < H_BandMask_demon) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_BandMask_demon];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna Mask (Demon) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_BandMask_demon];
            Wallet= (wallet - H_BandMask_demon);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_BandMask_demon", 1];
            hint "Mail Call: Your Bandanna Mask (Demon)has arrived in the deliveries box";
        };
    };
    case 10: {
        if (Wallet < H_BandMask_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_BandMask_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna Mask (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_BandMask_khk ];
            Wallet= (wallet - H_BandMask_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_BandMask_khk", 1];
            hint "Mail Call: Your Bandanna Mask (Khaki)has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet < H_BandMask_reaper) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_BandMask_reaper ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bandanna Mask (Reaper) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_BandMask_reaper ];
            Wallet= (wallet - H_BandMask_reaper);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_BandMask_reaper", 1];
            hint "Mail Call: Your Bandanna Mask (Reaper) has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet < H_Beret_02) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_02 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret [NATO]for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_02 ];
            Wallet= (wallet - H_Beret_02);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_02", 1];
            hint "Mail Call: Your Beret [NATO] has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < H_Beret_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_blk ];
            Wallet= (wallet - H_Beret_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_blk", 1];
            hint "Mail Call: Your Beret (Black)has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < H_Beret_blk_POLICE) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_blk_POLICE ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (Police) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_blk_POLICE ];
            Wallet= (wallet - H_Beret_blk_POLICE);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_blk_POLICE", 1];
            hint "Mail Call: Your Beret (Police) has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < H_Beret_brn_SF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_brn_SF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (SAS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_brn_SF ];
            Wallet= (wallet - H_Beret_brn_SF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_brn_SF", 1];
            hint "Mail Call: Your Beret (SAS) has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < H_Beret_grn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_grn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_grn ];
            Wallet= (wallet - H_Beret_grn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_grn", 1];
            hint "Mail Call: Your Beret (Green)has arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < H_Beret_grn_SF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_grn_SF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (SF) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_grn_SF ];
            Wallet= (wallet - H_Beret_grn_SF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_grn_SF", 1];
            hint "Mail Call: Your Beret (SF) has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet < H_Beret_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret [CSAT]for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_ocamo ];
            Wallet= (wallet - H_Beret_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_ocamo", 1];
            hint "Mail Call: Your Beret [CSAT] has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < H_Beret_red) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_red ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beret (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_red ];
            Wallet= (wallet - H_Beret_red);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Beret_red", 1];
            hint "Mail Call: Your Beret (Red) has arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < H_Booniehat_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_dgtl];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_dgtl];
            Wallet= (wallet - H_Booniehat_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_dgtl", 1];
            hint "Mail Call: Your Booniehat [AAF] has arrived in the deliveries box";
        };
    };
    case 21: {
        if (Wallet < H_Booniehat_dirty) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_dirty ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Dirty) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_dirty ];
            Wallet= (wallet - H_Booniehat_dirty);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_dirty", 1];
            hint "Mail Call: Your Booniehat (Dirty)has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < H_Booniehat_grn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_grn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_grn ];
            Wallet= (wallet - H_Booniehat_grn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_grn", 1];
            hint "Mail Call: Your Booniehat (Green)has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < H_Booniehat_indp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_indp];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_indp];
            Wallet= (wallet - H_Booniehat_indp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_indp", 1];
            hint "Mail Call: Your Booniehat (Khaki)has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < H_Booniehat_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_khk ];
            Wallet= (wallet - H_Booniehat_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_khk", 1];
            hint "Mail Call: Your Booniehat (Hex) has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < H_Booniehat_khk_hs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_khk_hs ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Headset) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_khk_hs ];
            Wallet= (wallet - H_Booniehat_khk_hs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_khk_hs", 1];
            hint "Mail Call: Your Booniehat (Headset) has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < H_Booniehat_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_mcamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_mcamo ];
            Wallet= (wallet - H_Booniehat_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Booniehat_mcamo", 1];
            hint "Mail Call: Your Booniehat (MTP) has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < H_Booniehat_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Booniehat_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Booniehat (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Booniehat_tan ];
            Wallet= (wallet - H_Booniehat_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries
            AddItemCargoGlobal ["H_Booniehat_tan", 1];
            hint "Mail Call: Your Booniehat (Tan) has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < H_Cap_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_blk ];
            Wallet= (wallet - H_Cap_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_blk", 1];
            hint "Mail Call: Your Cap (Black) has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < H_Cap_blk_CMMG) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_blk_CMMG ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (CMMG) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_blk_CMMG ];
            Wallet= (wallet - H_Cap_blk_CMMG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_blk_CMMG", 1];
            hint "Mail Call: Your Cap (CMMG) has arrived in the deliveries box";
        };
    };
    case 30: {
        if (Wallet < H_Cap_blk_ION) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_blk_ION ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (ION) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_blk_ION ];
            Wallet= (wallet - H_Cap_blk_ION);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_blk_ION", 1];
            hint "Mail Call: Your Cap (ION)has arrived in the deliveries box";
        };
    };
    case 31: {
        if (Wallet < H_Cap_blk_Raven) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_blk_Raven ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Raven Security)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_blk_Raven ];
            Wallet= (wallet - H_Cap_blk_Raven);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_blk_Raven", 1];
            hint "Mail Call: Your Cap (Raven Security) has arrived in the deliveries box";
        };
    };
    case 32: {
        if (Wallet < H_Cap_blu) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_blu ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Blue) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_blu ];
            Wallet= (wallet - H_Cap_blu);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_blu", 1];
            hint "Mail Call: Your Cap (Blue) has arrived in the deliveries box";
        };
    };
    case 33: {
        if (Wallet < H_Cap_brn_SPECOPS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_brn_SPECOPS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (SPECOPS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_brn_SPECOPS ];
            Wallet= (wallet - H_Cap_brn_SPECOPS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_brn_SPECOPS", 1];
            hint "Mail Call: Your Cap (SPECOPS)has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < H_Cap_grn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_grn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_grn ];
            Wallet= (wallet - H_Cap_grn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_grn", 1];
            hint "Mail Call: Your Cap (Green) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < H_Cap_grn_BI) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_grn_BI];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (BI)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_grn_BI];
            Wallet= (wallet - H_Cap_grn_BI);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_grn_BI", 1];
            hint "Mail Call: Your Cap (BI) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < H_Cap_headphones) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_headphones];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Rangemaster Cap for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_headphones];
            Wallet= (wallet - H_Cap_headphones);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_headphones", 1];
            hint "Mail Call: Your Rangemaster Cap has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < H_Cap_khaki_specops_UK) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_khaki_specops_UK ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (SAS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_khaki_specops_UK ];
            Wallet= (wallet - H_Cap_khaki_specops_UK);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_khaki_specops_UK", 1];
            hint "Mail Call: Your Cap (SAS)has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < H_Cap_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_oli ];
            Wallet= (wallet - H_Cap_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_oli", 1];
            hint "Mail Call: Your Cap (Green) has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < H_Cap_oli_hs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_oli_hs];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Olive, Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_oli_hs];
            Wallet= (wallet - H_Cap_oli_hs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_oli_hs", 1];
            hint "Mail Call: Your Cap (Olive, Headset) has arrived in the deliveries box";
        };
    };
    case 40: {
        if (Wallet < H_Cap_red) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_red ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_red ];
            Wallet= (wallet - H_Cap_red);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_red", 1];
            hint "Mail Call: Your Cap (Red)has arrived in the deliveries box";
        };
    };
    case 41: {
        if (Wallet < H_Cap_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_tan ];
            Wallet= (wallet - H_Cap_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_tan", 1];
            hint "Mail Call: Your Cap (Tan)has arrived in the deliveries box";
        };
    };
    case 42: {
        if (Wallet < H_Cap_tan_specops_US) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_tan_specops_US];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cap (SF)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_tan_specops_US];
            Wallet= (wallet - H_Cap_tan_specops_US);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Cap_tan_specops_US", 1];
            hint "Mail Call: Your Cap (SF) has arrived in the deliveries box";
        };
    };
    case 43: {
        if (Wallet < H_CrewHelmetHeli_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_CrewHelmetHeli_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Crew Helmet [NATO] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_CrewHelmetHeli_B ];
            Wallet= (wallet - H_CrewHelmetHeli_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_CrewHelmetHeli_B", 1];
            hint "Mail Call: Your Heli Crew Helmet [NATO] has arrived in the deliveries box";
        };
    };
    case 44: {
        if (Wallet < H_CrewHelmetHeli_I) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_CrewHelmetHeli_I ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Crew Helmet [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_CrewHelmetHeli_I ];
            Wallet= (wallet - H_CrewHelmetHeli_I);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_CrewHelmetHeli_I", 1];
            hint "Mail Call: Your Heli Crew Helmet [AAF] has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < H_CrewHelmetHeli_O) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_CrewHelmetHeli_O ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Crew Helmet [CSAT] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_CrewHelmetHeli_O ];
            Wallet= (wallet - H_CrewHelmetHeli_O);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_CrewHelmetHeli_O", 1];
            hint "Mail Call: Your Heli Crew Helmet [CSAT] has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < H_Hat_blue) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_blue ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Blue) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_blue ];
            Wallet= (wallet - H_Hat_blue);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_blue", 1];
            hint "Mail Call: Your Hat (Blue) has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < H_Hat_brown) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_brown ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_brown ];
            Wallet= (wallet - H_Hat_brown);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_brown", 1];
            hint "Mail Call: Your Hat (Brown) has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < H_Hat_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_camo ];
            Wallet= (wallet - H_Hat_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_camo", 1];
            hint "Mail Call: Your Hat (Camo) has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < H_Hat_checker) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_checker ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Checker) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_checker ];
            Wallet= (wallet - H_Hat_checker);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_checker", 1];
            hint "Mail Call: Your Hat (Checker)has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < H_Hat_grey) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_grey ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Gray) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_grey ];
            Wallet= (wallet - H_Hat_grey);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_grey", 1];
            hint "Mail Call: Your Hat (Gray) has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < H_Hat_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Hat_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Hat (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Hat_tan ];
            Wallet= (wallet - H_Hat_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Hat_tan", 1];
            hint "Mail Call: Your Hat (Tan)has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < H_Helmet_Kerry) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Helmet_Kerry ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Combat Helmet (Camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Helmet_Kerry ];
            Wallet= (wallet - H_Helmet_Kerry);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Helmet_Kerry", 1];
            hint "Mail Call: Your Combat Helmet (Camo) has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < H_HelmetB) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB ];
            Wallet= (wallet - H_HelmetB);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB", 1];
            hint "Mail Call: Your ECH has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < H_HelmetB_black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_black ];
            Wallet= (wallet - H_HelmetB_black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_black", 1];
            hint "Mail Call: Your ECH (Black) has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < H_HelmetB_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_camo ];
            Wallet= (wallet - H_HelmetB_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_camo", 1];
            hint "Mail Call: Your ECH has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < H_HelmetB_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_desert];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Desert)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_desert];
            Wallet= (wallet - H_HelmetB_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_desert", 1];
            hint "Mail Call: Your ECH (Desert) has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < H_HelmetB_grass) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_grass ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Grass) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_grass ];
            Wallet= (wallet - H_HelmetB_grass);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_grass", 1];
            hint "Mail Call: Your ECH (Grass) has arrived in the deliveries box";
        };
    };
    case 58: {
        if (Wallet < H_HelmetB_light) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light ];
            Wallet= (wallet - H_HelmetB_light);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light", 1];
            hint "Mail Call: Your ECH (Light) has arrived in the deliveries box";
        };
    };
    case 59: {
        if (Wallet < H_HelmetB_light_black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light_black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light_black ];
            Wallet= (wallet - H_HelmetB_light_black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light_black", 1];
            hint "Mail Call: Your ECH (Light, Black) has arrived in the deliveries box";
        };
    };
    case 60: {
        if (Wallet < H_HelmetB_light_desert) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light_desert ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light, Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light_desert ];
            Wallet= (wallet - H_HelmetB_light_desert);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light_desert", 1];
            hint "Mail Call: Your ECH (Light, Desert) has arrived in the deliveries box";
        };
    };
    case 61: {
        if (Wallet < H_HelmetB_light_grass) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light_grass ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light, Grass) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light_grass ];
            Wallet= (wallet - H_HelmetB_light_grass);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light_grass", 1];
            hint "Mail Call: Your ECH (Light, Grass) has arrived in the deliveries box";
        };
    };
    case 62: {
        if (Wallet < H_HelmetB_light_sand) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light_sand];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light_sand];
            Wallet= (wallet - H_HelmetB_light_sand);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light_sand", 1];
            hint "Mail Call: Your ECH (Light, Sand)has arrived in the deliveries box";
        };
    };
    case 63: {
        if (Wallet < H_HelmetB_light_snakeskin) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_light_snakeskin ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Light, Snakeskin) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_light_snakeskin ];
            Wallet= (wallet - H_HelmetB_light_snakeskin);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_light_snakeskin", 1];
            hint "Mail Call: Your ECH (Light, Snakeskin) has arrived in the deliveries box";
        };
    };
    case 64: {
        if (Wallet < H_HelmetB_paint) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_paint ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Spraypaint)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_paint ];
            Wallet= (wallet - H_HelmetB_paint);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_paint", 1];
            hint "Mail Call: Your ECH (Spraypaint) has arrived in the deliveries box";
        };
    };
    case 65: {
        if (Wallet < H_HelmetB_plain_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_plain_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Combat Helmet (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_plain_blk ];
            Wallet= (wallet - H_HelmetB_plain_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_plain_blk", 1];
            hint "Mail Call: Your Combat Helmet (Black)has arrived in the deliveries box";
        };
    };
    case 66: {
        if (Wallet < H_HelmetB_plain_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_plain_mcamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Combat Helmet (Camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_plain_mcamo ];
            Wallet= (wallet - H_HelmetB_plain_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_plain_mcamo", 1];
            hint "Mail Call: Your Combat Helmet (Camo) has arrived in the deliveries box";
        };
    };
    case 67: {
        if (Wallet < H_HelmetB_sand) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_sand ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_sand ];
            Wallet= (wallet - H_HelmetB_sand);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_sand", 1];
            hint "Mail Call: Your ECH (Sand) has arrived in the deliveries box";
        };
    };
    case 68: {
        if (Wallet < H_HelmetB_snakeskin) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetB_snakeskin ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ECH (Snakeskin) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetB_snakeskin ];
            Wallet= (wallet - H_HelmetB_snakeskin);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetB_snakeskin", 1];
            hint "Mail Call: Your ECH (Snakeskin) has arrived in the deliveries box";
        };
    };
    case 69: {
        if (Wallet < H_HelmetCrew_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetCrew_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Crew Helmet for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetCrew_B ];
            Wallet= (wallet - H_HelmetCrew_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetCrew_B", 1];
            hint "Mail Call: Your Crew Helmet has arrived in the deliveries box";
        };
    };
    case 70: {
        if (Wallet < H_HelmetCrew_I) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetCrew_I ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Crew Helmet [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetCrew_I ];
            Wallet= (wallet - H_HelmetCrew_I);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetCrew_I", 1];
            hint "Mail Call: Your Crew Helmet [AAF]has arrived in the deliveries box";
        };
    };
    case 71: {
        if (Wallet < H_HelmetCrew_O) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetCrew_O ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Crew Helmet [CSAT] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetCrew_O ];
            Wallet= (wallet - H_HelmetCrew_O);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetCrew_O", 1];
            hint "Mail Call: Your Crew Helmet [CSAT] has arrived in the deliveries box";
        };
    };
    case 72: {
        if (Wallet < H_HelmetIA) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetIA ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICHfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetIA ];
            Wallet= (wallet - H_HelmetIA);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetIA", 1];
            hint "Mail Call: Your MICH has arrived in the deliveries box";
        };
    };
    case 73: {
        if (Wallet < H_HelmetIA_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetIA_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH2 (Camo)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetIA_camo ];
            Wallet= (wallet - H_HelmetIA_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetIA_camo", 1];
            hint "Mail Call: Your MICH2 (Camo) has arrived in the deliveries box";
        };
    };
    case 74: {
        if (Wallet < H_HelmetIA_net) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetIA_net ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH (Camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetIA_net ];
            Wallet= (wallet - H_HelmetIA_net);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetIA_net", 1];
            hint "Mail Call: Your MICH (Camo) has arrived in the deliveries box";
        };
    };
    case 75: {
        if (Wallet < H_HelmetLeaderO_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetLeaderO_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Defender Helmet (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetLeaderO_ocamo ];
            Wallet= (wallet - H_HelmetLeaderO_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetLeaderO_ocamo", 1];
            hint "Mail Call: Your Defender Helmet (Hex)has arrived in the deliveries box";
        };
    };
    case 76: {
        if (Wallet < H_HelmetLeaderO_oucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetLeaderO_oucamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Defender Helmet (Urban) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetLeaderO_oucamo ];
            Wallet= (wallet - H_HelmetLeaderO_oucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetLeaderO_oucamo", 1];
            hint "Mail Call: Your Defender Helmet (Urban) has arrived in the deliveries box";
        };
    };
    case 77: {
        if (Wallet < H_HelmetO_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetO_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Protector Helmet (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetO_ocamo ];
            Wallet= (wallet - H_HelmetO_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetO_ocamo", 1];
            hint "Mail Call: Your Protector Helmet (Hex) has arrived in the deliveries box";
        };
    };
    case 78: {
        if (Wallet < H_HelmetO_oucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetO_oucamo];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Protector Helmet (Urban)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetO_oucamo];
            Wallet= (wallet - H_HelmetO_oucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetO_oucamo", 1];
            hint "Mail Call: Your Protector Helmet (Urban) has arrived in the deliveries box";
        };
    };
    case 79: {
        if (Wallet < H_HelmetSpecB) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecB ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SF Helmet for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecB ];
            Wallet= (wallet - H_HelmetSpecB);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecB", 1];
            hint "Mail Call: Your SF Helmethas arrived in the deliveries box";
        };
    };
    case 80: {
        if (Wallet < H_HelmetSpecB_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecB_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SF Helmet (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecB_blk ];
            Wallet= (wallet - H_HelmetSpecB_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecB_blk", 1];
            hint "Mail Call: Your SF Helmet (Black)has arrived in the deliveries box";
        };
    };
    case 81: {
        if (Wallet < H_HelmetSpecB_paint1) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecB_paint1];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SF Helmet (LightÂ paint)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecB_paint1];
            Wallet= (wallet - H_HelmetSpecB_paint1);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecB_paint1", 1];
            hint "Mail Call: Your SF Helmet (LightÂ paint) has arrived in the deliveries box";
        };
    };
    case 82: {
        if (Wallet < H_HelmetSpecB_paint2) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecB_paint2];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SF Helmet (DarkÂ paint) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecB_paint2];
            Wallet= (wallet - H_HelmetSpecB_paint2);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecB_paint2", 1];
            hint "Mail Call: Your SF Helmet (DarkÂ paint) has arrived in the deliveries box";
        };
    };
    case 83: {
        if (Wallet < H_HelmetSpecO_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecO_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assassin Helmet (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecO_blk ];
            Wallet= (wallet - H_HelmetSpecO_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecO_blk", 1];
            hint "Mail Call: Your Assassin Helmet (Black) has arrived in the deliveries box";
        };
    };
    case 84: {
        if (Wallet < H_HelmetSpecO_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetSpecO_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Assassin Helmet (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetSpecO_ocamo ];
            Wallet= (wallet - H_HelmetSpecO_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_HelmetSpecO_ocamo", 1];
            hint "Mail Call: Your Assassin Helmet (Hex)has arrived in the deliveries box";
        };
    };
    case 85: {
        if (Wallet < H_MilCap_blue) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_blue ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Blue Capfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_blue ];
            Wallet= (wallet - H_MilCap_blue);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_blue", 1];
            hint "Mail Call: Your Blue Cap has arrived in the deliveries box";
        };
    };
    case 86: {
        if (Wallet < H_MilCap_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_dgtl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_dgtl ];
            Wallet= (wallet - H_MilCap_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_dgtl", 1];
            hint "Mail Call: Your Military Cap [AAF] has arrived in the deliveries box";
        };
    };
    case 87: {
        if (Wallet < H_MilCap_gry) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_gry];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap (Gray) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_gry];
            Wallet= (wallet - H_MilCap_gry);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_gry", 1];
            hint "Mail Call: Your Military Cap (Gray) has arrived in the deliveries box";
        };
    };
    case 88: {
        if (Wallet < H_MilCap_mcamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_mcamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap (MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_mcamo ];
            Wallet= (wallet - H_MilCap_mcamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_mcamo", 1];
            hint "Mail Call: Your Military Cap (MTP) has arrived in the deliveries box";
        };
    };
    case 89: {
        if (Wallet < H_MilCap_ocamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_ocamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_ocamo ];
            Wallet= (wallet - H_MilCap_ocamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_ocamo", 1];
            hint "Mail Call: Your Military Cap (Hex) has arrived in the deliveries box";
        };
    };
    case 90: {
        if (Wallet < H_MilCap_oucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_oucamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap (Urban)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_oucamo ];
            Wallet= (wallet - H_MilCap_oucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_oucamo", 1];
            hint "Mail Call: Your Military Cap (Urban) has arrived in the deliveries box";
        };
    };
    case 91: {
        if (Wallet < H_MilCap_rucamo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_MilCap_rucamo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Military Cap (Russia) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_MilCap_rucamo ];
            Wallet= (wallet - H_MilCap_rucamo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_MilCap_rucamo", 1];
            hint "Mail Call: Your Military Cap (Russia)has arrived in the deliveries box";
        };
    };
    case 92: {
        if (Wallet < H_PilotHelmetFighter_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetFighter_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot Helmet [NATO] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetFighter_B ];
            Wallet= (wallet - H_PilotHelmetFighter_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetFighter_B", 1];
            hint "Mail Call: Your Pilot Helmet [NATO] has arrived in the deliveries box";
        };
    };
    case 93: {
        if (Wallet < H_PilotHelmetFighter_I) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetFighter_I ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot Helmet [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetFighter_I ];
            Wallet= (wallet - H_PilotHelmetFighter_I);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetFighter_I", 1];
            hint "Mail Call: Your Pilot Helmet [AAF] has arrived in the deliveries box";
        };
    };
    case 94: {
        if (Wallet < H_PilotHelmetFighter_O) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetFighter_O ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot Helmet [CSAT] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetFighter_O ];
            Wallet= (wallet - H_PilotHelmetFighter_O);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetFighter_O", 1];
            hint "Mail Call: Your Pilot Helmet [CSAT] has arrived in the deliveries box";
        };
    };
    case 95: {
        if (Wallet < H_PilotHelmetHeli_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetHeli_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Pilot Helmet [NATO]for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetHeli_B ];
            Wallet= (wallet - H_PilotHelmetHeli_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetHeli_B", 1];
            hint "Mail Call: Your Heli Pilot Helmet [NATO] has arrived in the deliveries box";
        };
    };
    case 96: {
        if (Wallet < H_PilotHelmetHeli_I) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetHeli_I ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Pilot Helmet [AAF] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetHeli_I ];
            Wallet= (wallet - H_PilotHelmetHeli_I);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetHeli_I", 1];
            hint "Mail Call: Your Heli Pilot Helmet [AAF] has arrived in the deliveries box";
        };
    };
    case 97: {
        if (Wallet < H_PilotHelmetHeli_O) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_PilotHelmetHeli_O ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Heli Pilot Helmet [CSAT]for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_PilotHelmetHeli_O ];
            Wallet= (wallet - H_PilotHelmetHeli_O);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_PilotHelmetHeli_O", 1];
            hint "Mail Call: Your Heli Pilot Helmet [CSAT] has arrived in the deliveries box";
        };
    };
    case 98: {
        if (Wallet < H_Shemag_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Shemag_khk];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag mask (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Shemag_khk];
            Wallet= (wallet - H_Shemag_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Shemag_khk", 1];
            hint "Mail Call: Your Shemag mask (Khaki) has arrived in the deliveries box";
        };
    };
    case 99: {
        if (Wallet < H_Shemag_olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Shemag_olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Shemag_olive ];
            Wallet= (wallet - H_Shemag_olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Shemag_olive", 1];
            hint "Mail Call: Your Shemag (Olive) has arrived in the deliveries box";
        };
    };
    case 100: {
        if (Wallet < H_Shemag_olive_hs) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Shemag_olive_hs ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag (Olive, Headset) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Shemag_olive_hs ];
            Wallet= (wallet - H_Shemag_olive_hs);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Shemag_olive_hs", 1];
            hint "Mail Call: Your Shemag (Olive, Headset) has arrived in the deliveries box";
        };
    };
    case 101: {
        if (Wallet < H_Shemag_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Shemag_tan];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag mask (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Shemag_tan];
            Wallet= (wallet - H_Shemag_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Shemag_tan", 1];
            hint "Mail Call: Your Shemag mask (Tan)has arrived in the deliveries box";
        };
    };
    case 102: {
        if (Wallet < H_ShemagOpen_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_ShemagOpen_khk];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_ShemagOpen_khk];
            Wallet= (wallet - H_ShemagOpen_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_ShemagOpen_khk", 1];
            hint "Mail Call: Your Shemag (Khaki) has arrived in the deliveries box";
        };
    };
    case 103: {
        if (Wallet < H_ShemagOpen_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_ShemagOpen_tan];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Shemag (Tan)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_ShemagOpen_tan];
            Wallet= (wallet - H_ShemagOpen_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_ShemagOpen_tan", 1];
            hint "Mail Call: Your Shemag (Tan) has arrived in the deliveries box";
        };
    };
    case 104: {
        if (Wallet < H_StrawHat) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_StrawHat ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Straw Hat for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_StrawHat ];
            Wallet= (wallet - H_StrawHat);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_StrawHat", 1];
            hint "Mail Call: Your Straw Hathas arrived in the deliveries box";
        };
    };
    case 105: {
        if (Wallet < H_StrawHat_dark) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_StrawHat_dark ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Straw hat (Dark)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_StrawHat_dark ];
            Wallet= (wallet - H_StrawHat_dark);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_StrawHat_dark", 1];
            hint "Mail Call: Your Straw hat (Dark) has arrived in the deliveries box";
        };
    };
    case 106: {
        if (Wallet < H_TurbanO_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_TurbanO_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Black Turbanfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_TurbanO_blk ];
            Wallet= (wallet - H_TurbanO_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_TurbanO_blk", 1];
            hint "Mail Call: Your Black Turban has arrived in the deliveries box";
        };
    };
    case 107: {
        if (Wallet < H_Watchcap_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Watchcap_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beanie for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Watchcap_blk ];
            Wallet= (wallet - H_Watchcap_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Watchcap_blk", 1];
            hint "Mail Call: Your Beanie has arrived in the deliveries box";
        };
    };
    case 108: {
        if (Wallet < H_Watchcap_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Watchcap_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beanie (Camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Watchcap_camo ];
            Wallet= (wallet - H_Watchcap_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Watchcap_camo", 1];
            hint "Mail Call: Your Beanie (Camo)has arrived in the deliveries box";
        };
    };
    case 109: {
        if (Wallet < H_Watchcap_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Watchcap_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beanie (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Watchcap_khk ];
            Wallet= (wallet - H_Watchcap_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Watchcap_khk", 1];
            hint "Mail Call: Your Beanie (Khaki) has arrived in the deliveries box";
        };
    };
    case 110: {
        if (Wallet < H_Watchcap_sgg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Watchcap_sgg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beanie (Sage) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Watchcap_sgg ];
            Wallet= (wallet - H_Watchcap_sgg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["H_Watchcap_sgg", 1];
            hint "Mail Call: Your Beanie (Sage)has arrived in the deliveries box";
        };
    };
};
