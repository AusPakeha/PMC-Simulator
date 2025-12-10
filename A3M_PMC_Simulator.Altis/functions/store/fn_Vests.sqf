switch (TheSelection) do {
    case 0: {
        if (Wallet < V_BandollierB_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_BandollierB_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bianchi Light Duty Belt - blk for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_BandollierB_blk ];
            Wallet = (Wallet - V_BandollierB_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_BandollierB_blk", 1];
            hint "Mail Call: Your Bianchi Light Duty Belt - blkhas arrived in the deliveries box";
        };
    };
    case 1: {
        if (Wallet < V_BandollierB_cbr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_BandollierB_cbr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedBianchi Light Duty Belt - cbr for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_BandollierB_cbr ];
            Wallet = (Wallet - V_BandollierB_cbr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_BandollierB_cbr", 1];
            hint "Mail Call: Your Bianchi Light Duty Belt - cbrhas arrived in the deliveries box";
        };
    };
    case 2: {
        if (Wallet < V_BandollierB_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_BandollierB_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bianchi Light Duty Belt - khk for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_BandollierB_khk ];
            Wallet = (Wallet - V_BandollierB_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_BandollierB_khk", 1];
            hint "Mail Call: Your Bianchi Light Duty Belt - khkhas arrived in the deliveries box";
        };
    };
    case 3: {
        if (Wallet < V_BandollierB_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_BandollierB_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bianchi Light Duty Belt - oli for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_BandollierB_oli ];
            Wallet = (Wallet - V_BandollierB_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_BandollierB_oli", 1];
            hint "Mail Call: Your Bianchi Light Duty Belt - olihas arrived in the deliveries box";
        };
    };
    case 4: {
        if (Wallet < V_BandollierB_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_BandollierB_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bianchi Light Duty Belt - rgr for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_BandollierB_rgr ];
            Wallet = (Wallet - V_BandollierB_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_BandollierB_rgr", 1];
            hint "Mail Call: Your Bianchi Light Duty Belt - rgrhas arrived in the deliveries box";
        };
    };
    case 5: {
        if (Wallet < V_Chestrig_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_Chestrig_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Uncle Mike's Light Tactical - blk for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_Chestrig_blk ];
            Wallet = (Wallet - V_Chestrig_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_Chestrig_blk", 1];
            hint "Mail Call: Your Uncle Mike's Light Tactical - blkhas arrived in the deliveries box";
        };
    };
    case 6: {
        if (Wallet < V_Chestrig_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_Chestrig_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Uncle Mike's Light Tactical - khk for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_Chestrig_khk ];
            Wallet = (Wallet - V_Chestrig_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_Chestrig_khk", 1];
            hint "Mail Call: Your Uncle Mike's Light Tactical - khkhas arrived in the deliveries box";
        };
    };
    case 7: {
        if (Wallet < V_Chestrig_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_Chestrig_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Uncle Mike's Light Tactical - oli for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_Chestrig_oli ];
            Wallet = (Wallet - V_Chestrig_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_Chestrig_oli", 1];
            hint "Mail Call: Your Uncle Mike's Light Tactical - olihas arrived in the deliveries box";
        };
    };
    case 8: {
        if (Wallet < V_Chestrig_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_Chestrig_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Uncle Mike's Light Tactical - rgr for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_Chestrig_rgr ];
            Wallet = (Wallet - V_Chestrig_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_Chestrig_rgr", 1];
            hint "Mail Call: Your Uncle Mike's Light Tactical - rgrhas arrived in the deliveries box";
        };
    };
    case 9: {
        if (Wallet < V_HarnessO_gry) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_HarnessO_gry ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TacticalOne Eagle Light Tactical - Brn for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_HarnessO_gry ];
            Wallet = (Wallet - V_HarnessO_gry);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_HarnessO_gry", 1];
            hint "Mail Call: Your TacticalOne Eagle Light Tactical - Brn has arrived in the deliveries box";
        };
    };
    case 10: {
        if (Wallet <  V_HarnessOGL_brn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_HarnessOGL_brn];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TacticalOne Talon Light Tactical - Brn for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_HarnessOGL_brn];
            Wallet = (Wallet - V_HarnessOGL_brn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_HarnessOGL_brn", 1];
            hint "Mail Call: Your TacticalOne Talon Light Tactical - Brn has arrived in the deliveries box";
        };
    };
    case 11: {
        if (Wallet <  V_HarnessOSpec_brn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_HarnessOSpec_brn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered TacticalOne Eagle Two Light Tactical - Brn for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_HarnessOSpec_brn ];
            Wallet = (Wallet - V_HarnessOSpec_brn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_HarnessOSpec_brn", 1];
            hint "Mail Call: Your TacticalOne Eagle Two Light Tactical - Brn has arrived in the deliveries box";
        };
    };
    case 12: {
        if (Wallet <  V_I_G_resistanceLeader_F) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_I_G_resistanceLeader_F];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered GenII Assault Vest for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_I_G_resistanceLeader_F];
            Wallet = (Wallet - V_I_G_resistanceLeader_F);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_I_G_resistanceLeader_F", 1];
            hint "Mail Call: Your GenII Assault Vest has arrived in the deliveries box";
        };
    };
    case 13: {
        if (Wallet <  V_PlateCarrier1_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrier1_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Tactical Armor - BLK for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrier1_blk ];
            Wallet = (Wallet - V_PlateCarrier1_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrier1_blk", 1];
            hint "Mail Call: Your SecondChance Tactical Armor - BLKhas arrived in the deliveries box";
        };
    };
    case 14: {
        if (Wallet <  V_PlateCarrier1_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrier1_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Tactical Armor - RGR for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrier1_rgr ];
            Wallet = (Wallet - V_PlateCarrier1_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrier1_rgr", 1];
            hint "Mail Call: Your SecondChance Tactical Armor - RGRhas arrived in the deliveries box";
        };
    };
    case 15: {
        if (Wallet <  V_PlateCarrier2_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrier2_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Defender Armor - RGR for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrier2_rgr ];
            Wallet = (Wallet - V_PlateCarrier2_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrier2_rgr", 1];
            hint "Mail Call: Your SecondChance Defender Armor - RGRhas arrived in the deliveries box";
        };
    };
    case 16: {
        if (Wallet <  V_PlateCarrier3_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrier3_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Interceptor Armor - RGR for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrier3_rgr ];
            Wallet = (Wallet - V_PlateCarrier3_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrier3_rgr", 1];
            hint "Mail Call: Your SecondChance Interceptor Armor - RGRhas arrived in the deliveries box";
        };
    };
    case 17: {
        if (Wallet <  V_PlateCarrierGL_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierGL_rgr];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance MXL Armor - RGRfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierGL_rgr];
            Wallet = (Wallet - V_PlateCarrierGL_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierGL_rgr", 1];
            hint "Mail Call: Your SecondChance MXL Armor - RGR has arrived in the deliveries box";
        };
    };
    case 18: {
        if (Wallet <  V_PlateCarrierH_CTRG) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierH_CTRG];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Tactical Armor - CTRG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierH_CTRG];
            Wallet = (Wallet - V_PlateCarrierH_CTRG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierH_CTRG", 1];
            hint "Mail Call: Your SecondChance Tactical Armor - CTRG has arrived in the deliveries box";
        };
    };
    case 19: {
        if (Wallet < V_PlateCarrierIA1_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierIA1_dgtl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Tactical II Armor - DGTL for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierIA1_dgtl ];
            Wallet = (Wallet - V_PlateCarrierIA1_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierIA1_dgtl", 1];
            hint "Mail Call: Your SecondChance Tactical II Armor - DGTLhas arrived in the deliveries box";
        };
    };
    case 20: {
        if (Wallet < V_PlateCarrierIA2_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierIA2_dgtl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Defender II Armor - DGTL for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierIA2_dgtl ];
            Wallet = (Wallet - V_PlateCarrierIA2_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierIA2_dgtl", 1];
            hint "Mail Call: Your SecondChance Defender II Armor - DGTLhas arrived in the deliveries box";
        };
    };
    case 21: {
        if (Wallet < V_PlateCarrierIAGL_dgtl) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierIAGL_dgtl ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance MXL II Armor - DGTLfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierIAGL_dgtl ];
            Wallet = (Wallet - V_PlateCarrierIAGL_dgtl);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierIAGL_dgtl", 1];
            hint "Mail Call: Your SecondChance MXL II Armor - DGTL has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < V_PlateCarrierL_CTRG) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierL_CTRG];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance Tactical Armor - CTRG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierL_CTRG];
            Wallet = (Wallet - V_PlateCarrierL_CTRG);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierL_CTRG", 1];
            hint "Mail Call: Your SecondChance Tactical Armor - CTRG has arrived in the deliveries box";
        };
    };
    case 23: {
        if (Wallet < V_PlateCarrierSpec_rgr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PlateCarrierSpec_rgr ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have orderedSecondChance MAXIMUS Armor - RGRfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PlateCarrierSpec_rgr ];
            Wallet = (Wallet - V_PlateCarrierSpec_rgr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_PlateCarrierSpec_rgr", 1];
            hint "Mail Call: Your SecondChance MAXIMUS Armor - RGR has arrived in the deliveries box";
        };
    };
    case 24: {
        if (Wallet < V_RebreatherIA) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_RebreatherIA ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SCUBAChoice Rebreather Kit for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_RebreatherIA ];
            Wallet = (Wallet - V_RebreatherIA);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_RebreatherIA", 1];
            hint "Mail Call: Your SCUBAChoice Rebreather Kit has arrived in the deliveries box";
        };
    };
    case 25: {
        if (Wallet < V_TacVest_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Intelitec Load Bearing Vest IIA - BLK for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_blk ];
            Wallet = (Wallet - V_TacVest_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_blk", 1];
            hint "Mail Call: Your Intelitec Load Bearing Vest IIA - BLK has arrived in the deliveries box";
        };
    };
    case 26: {
        if (Wallet < V_TacVest_blk_POLICE) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_blk_POLICE];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SecondChance BreachTech Armor - BLK for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_blk_POLICE];
            Wallet = (Wallet - V_TacVest_blk_POLICE);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_blk_POLICE", 1];
            hint "Mail Call: Your SecondChance BreachTech Armor - BLK has arrived in the deliveries box";
        };
    };
    case 27: {
        if (Wallet < V_TacVest_brn) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_brn ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Intelitec Load Bearing Vest IIA - BRN for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_brn ];
            Wallet = (Wallet - V_TacVest_brn);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_brn", 1];
            hint "Mail Call: Your Intelitec Load Bearing Vest IIA - BRN has arrived in the deliveries box";
        };
    };
    case 28: {
        if (Wallet < V_TacVest_camo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_camo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Intelitec Load Bearing Vest IIA - CAMO for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_camo ];
            Wallet = (Wallet - V_TacVest_camo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_camo", 1];
            hint "Mail Call: Your Intelitec Load Bearing Vest IIA - CAMO has arrived in the deliveries box";
        };
    };
    case 29: {
        if (Wallet < V_TacVest_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Intelitec Load Bearing Vest IIA - KHK for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_khk ];
            Wallet = (Wallet - V_TacVest_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_khk", 1];
            hint "Mail Call: Your Intelitec Load Bearing Vest IIA - KHKhas arrived in the deliveries box";
        };
    };
    case 30: {
        if (Wallet < V_TacVest_oli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_oli ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Intelitec Load Bearing Vest IIA - OLI for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_oli ];
            Wallet = (Wallet - V_TacVest_oli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVest_oli", 1];
            hint "Mail Call: Your Intelitec Load Bearing Vest IIA - OLIhas arrived in the deliveries box";
        };
    };
    case 31: {
        if (Wallet < V_TacVestCamo_khk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVestCamo_khk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered General Protection IIIA Armor - CAMOfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVestCamo_khk ];
            Wallet = (Wallet - V_TacVestCamo_khk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVestCamo_khk", 1];
            hint "Mail Call: Your General Protection IIIA Armor - CAMO has arrived in the deliveries box";
        };
    };
    case 32: {
        if (Wallet < V_TacVestIR_blk) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVestIR_blk ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Raven Tactical Supply Stealth Armor - BLK for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVestIR_blk ];
            Wallet = (Wallet - V_TacVestIR_blk);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["V_TacVestIR_blk", 1];
            hint "Mail Call: Your Raven Tactical Supply Stealth Armor - BLKhas arrived in the deliveries box";
        };
    };
};
