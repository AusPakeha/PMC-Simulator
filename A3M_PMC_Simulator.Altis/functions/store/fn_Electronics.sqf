switch (TheSelection) do {
    case 0: {
        if (Wallet < Laserdesignator) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Laserdesignator];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Laser Designatorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Laserdesignator];
            Wallet= (wallet - Laserdesignator);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["Laserdesignator", 1];
            hint "Mail Call: Your Laser Designator has arrived in the deliveries box";
        };
    };
    case 1: {
        if (Wallet < NVGoggles) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGoggles];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered NV Goggles (Gen3, Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGoggles];
            Wallet= (wallet - NVGoggles);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGoggles", 1];
            hint "Mail Call: Your NV Goggles (Gen3, Brown) has arrived in the deliveries box";
        };
    };
    case 2: {
        if (Wallet < NVGoggles_OPFOR) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGoggles_OPFOR];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered NV Goggles (Gen3, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGoggles_OPFOR];
            Wallet= (wallet - NVGoggles_OPFOR);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGoggles_OPFOR", 1];
            hint "Mail Call: Your NV Goggles (Gen3, Black) has arrived in the deliveries box";
        };
    };
    case 3: {
        if (Wallet < NVGoggles_INDEP) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGoggles_INDEP];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered NV Goggles (Gen3, Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGoggles_INDEP];
            Wallet= (wallet - NVGoggles_INDEP);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGoggles_INDEP", 1];
            hint "Mail Call: Your NV Goggles (Gen3, Green) has arrived in the deliveries box";
        };
    };
    case 4: {
        if (Wallet < NVGoggles_tna_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGoggles_tna_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered NV Goggles (Gen3, Tropic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGoggles_tna_F];
            Wallet= (wallet - NVGoggles_tna_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGoggles_tna_F", 1];
            hint "Mail Call: Your NV Goggles (Gen3, Tropic) has arrived in the deliveries box";
        };
    };
    case 5: {
        if (Wallet < Rangefinder) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Rangefinder];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered U.S. Military Range Finderfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Rangefinder];
            Wallet= (wallet - Rangefinder);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["Rangefinder", 1];
            hint "Mail Call: Your U.S. Military Range Finder has arrived in the deliveries box";
        };
    };
    case 6: {
        if (Wallet < acc_flashlight) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", acc_flashlight ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Flashlightfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", acc_flashlight ];
            Wallet= (wallet - acc_flashlight);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["acc_flashlight", 1];
            hint "Mail Call: Your Tactical Flashlight has arrived in the deliveries box";
        };
    };
    case 7: {
        if (Wallet < acc_pointer_IR) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", acc_pointer_IR];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Infrared Laser Pointerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", acc_pointer_IR];
            Wallet= (wallet - acc_pointer_IR);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["acc_pointer_IR", 1];
            hint "Mail Call: Your Infrared Laser Pointer has arrived in the deliveries box";
        };
    };
    case 8: {
        if (Wallet < I_UAVTerminal) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", I_UAVTerminal];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered UAV Control Interfacefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", I_UAVTerminal];
            Wallet= (wallet - I_UAVTerminal);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["B_UavTerminal", 1];
            hint "Mail Call: Your UAV Control Interface has arrived in the deliveries box";
        };
    };
    case 9: {
        if (Wallet < ItemGPS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemGPS];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Outdoorsman GPS Devicefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemGPS];
            Wallet= (wallet - ItemGPS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ItemGPS", 1];
            hint "Mail Call: Your Outdoorsman GPS Device has arrived in the deliveries box";
        };
    };
    case 10: {
        if (Wallet < ItemRadio) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemRadio];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Cobra Radio for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemRadio];
            Wallet= (wallet - ItemRadio);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ItemRadio", 1];
            hint "Mail Call: Your Cobra Radio has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet < ItemWatch) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemWatch];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Casio Survival Watchfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemWatch];
            Wallet= (wallet - ItemWatch);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ItemWatch", 1];
            hint "Mail Call: Your Casio Survival Watch has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet < MineDetector) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", MineDetector];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered U.S. Army Mine Detection Devicefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", MineDetector];
            Wallet= (wallet - MineDetector);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["MineDetector", 1];
            hint "Mail Call: Your U.S. Army Mine Detection Device has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet < Laserbatteries) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Laserbatteries];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Duracell Batteriesfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Laserbatteries];
            Wallet= (wallet - Laserbatteries);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["Laserbatteries", 1];
            hint "Mail Call: Your Duracell Batteries has arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet < O_NVGoggles_ghex_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", O_NVGoggles_ghex_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Compact NVG (Green Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", O_NVGoggles_ghex_F];
            Wallet= (wallet - O_NVGoggles_ghex_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["O_NVGoggles_ghex_F", 1];
            hint "Mail Call: Your Compact NVG (Green Hex) has arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet < O_NVGoggles_hex_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", O_NVGoggles_hex_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Compact NVG (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", O_NVGoggles_hex_F];
            Wallet= (wallet - O_NVGoggles_hex_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["O_NVGoggles_hex_F", 1];
            hint "Mail Call: Your Compact NVG (Hex) has arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet < O_NVGoggles_urb_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", O_NVGoggles_urb_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Compact NVG (Urban) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", O_NVGoggles_urb_F];
            Wallet= (wallet - O_NVGoggles_urb_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["O_NVGoggles_urb_F", 1];
            hint "Mail Call: Your Compact NVG (Urban) has arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet < O_NVGoggles_grn_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", O_NVGoggles_grn_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Compact NVG (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", O_NVGoggles_grn_F];
            Wallet= (wallet - O_NVGoggles_grn_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["O_NVGoggles_grn_F", 1];
            hint "Mail Call: Your Compact NVG (Green) has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet < NVGogglesB_blk_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGogglesB_blk_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ENVG-II (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGogglesB_blk_F];
            Wallet= (wallet - NVGogglesB_blk_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGogglesB_blk_F", 1];
            hint "Mail Call: Your ENVG-II (Black) has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < NVGogglesB_grn_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGogglesB_grn_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ENVG-II (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGogglesB_grn_F];
            Wallet= (wallet - NVGogglesB_grn_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGogglesB_grn_F", 1];
            hint "Mail Call: Your ENVG-II (Green) has arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < NVGogglesB_gry_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NVGogglesB_gry_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ENVG-II (Grey) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", NVGogglesB_gry_F];
            Wallet= (wallet - NVGogglesB_gry_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["NVGogglesB_gry_F", 1];
            hint "Mail Call: Your ENVG-II (Grey) has arrived in the deliveries box";
        };
    };
};
