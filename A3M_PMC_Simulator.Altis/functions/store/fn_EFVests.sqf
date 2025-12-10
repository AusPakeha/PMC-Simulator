switch (TheSelection) do {
    case 33: {
        if (Wallet < EF_V_CCR_Rifleman_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Rifleman_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Black, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Rifleman_Black ];
            Wallet = (Wallet - EF_V_CCR_Rifleman_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Rifleman_Black", 1];
            hint "Mail Call: Your Commando Chest Rig (Black, Rifleman) has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < EF_V_CCR_Scout_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Scout_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Black, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Scout_Black ];
            Wallet = (Wallet - EF_V_CCR_Scout_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Scout_Black", 1];
            hint "Mail Call: Your Commando Chest Rig (Black, Scout) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < EF_V_CCR_Support_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Support_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Black, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Support_Black ];
            Wallet = (Wallet - EF_V_CCR_Support_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Support_Black", 1];
            hint "Mail Call: Your Commando Chest Rig (Black, Support) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < EF_V_CCR_TL_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_TL_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Black, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_TL_Black ];
            Wallet = (Wallet - EF_V_CCR_TL_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_TL_Black", 1];
            hint "Mail Call: Your Commando Chest Rig (Black, Team Leader) has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < EF_V_CCR_Rifleman_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Rifleman_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Rifleman_Coy ];
            Wallet = (Wallet - EF_V_CCR_Rifleman_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Rifleman_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Rifleman) has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < EF_V_CCR_Scout_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Scout_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Scout_Coy ];
            Wallet = (Wallet - EF_V_CCR_Scout_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Scout_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Scout) has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < EF_V_CCR_Rifleman_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Rifleman_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Rifleman_Coy ];
            Wallet = (Wallet - EF_V_CCR_Rifleman_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Rifleman_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Rifleman) has arrived in the deliveries box";
        };
    };
    case 40: {
        if (Wallet < EF_V_CCR_Scout_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Scout_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Scout_Coy ];
            Wallet = (Wallet - EF_V_CCR_Scout_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Scout_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Scout) has arrived in the deliveries box";
        };
    };
    case 41: {
        if (Wallet < EF_V_CCR_Support_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Support_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Support_Coy ];
            Wallet = (Wallet - EF_V_CCR_Support_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Support_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Support) has arrived in the deliveries box";
        };
    };
    case 42: {
        if (Wallet < EF_V_CCR_TL_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_TL_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Coyote Brown, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_TL_Coy ];
            Wallet = (Wallet - EF_V_CCR_TL_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_TL_Coy", 1];
            hint "Mail Call: Your Commando Chest Rig (Coyote Brown, Team Leader) has arrived in the deliveries box";
        };
    };
    case 43: {
        if (Wallet < EF_V_CCR_Rifleman_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Rifleman_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Olive, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Rifleman_Olive ];
            Wallet = (Wallet - EF_V_CCR_Rifleman_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Rifleman_Olive", 1];
            hint "Mail Call: Your Commando Chest Rig (Olive, Rifleman) has arrived in the deliveries box";
        };
    };
    case 44: {
        if (Wallet < EF_V_CCR_Scout_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Scout_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Olive, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Scout_Olive ];
            Wallet = (Wallet - EF_V_CCR_Scout_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Scout_Olive", 1];
            hint "Mail Call: Your Commando Chest Rig (Olive, Scout) has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < EF_V_CCR_Support_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_Support_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Olive, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_Support_Olive ];
            Wallet = (Wallet - EF_V_CCR_Support_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_Support_Olive", 1];
            hint "Mail Call: Your Commando Chest Rig (Olive, Support) has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < EF_V_CCR_TL_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_TL_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Commando Chest Rig (Olive, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_TL_Olive ];
            Wallet = (Wallet - EF_V_CCR_TL_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_TL_Olive", 1];
            hint "Mail Call: Your Commando Chest Rig (Olive, Team) has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < EF_V_AAV_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black) has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < EF_V_AAV_Diver_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Diver) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Diver) has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < EF_V_AAV_Diver_NoReb_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_NoReb_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Diver, No Rebreather) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_NoReb_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_NoReb_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_NoReb_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Diver, No Rebreather) has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < EF_V_AAV_Rifleman_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Rifleman_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Rifleman_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Rifleman_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Rifleman_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Rifleman) has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < EF_V_AAV_Sailor_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Sailor_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Sailor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Sailor_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Sailor_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Sailor_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Sailor) has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < EF_V_AAV_Scout_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Scout_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Scout_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Scout_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Scout_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Scout) has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < EF_V_AAV_Support_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Support_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Support_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_Support_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Support_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Support) has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < EF_V_AAV_TL_Black) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_TL_Black ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Black, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_TL_Black ];
            Wallet = (Wallet - EF_V_CCR_AAV_TL_Black);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_TL_Black", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Black, Team Leader) has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < EF_V_AAV_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown) has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < EF_V_AAV_Diver_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Diver) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Black, Diver) has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < EF_V_AAV_Diver_NoReb_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_NoReb_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Diver, No Rebreather) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_NoReb_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_NoReb_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_NoReb_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Diver, No Rebreather) has arrived in the deliveries box";
        };
    };
    case 58: {
        if (Wallet < EF_V_AAV_Rifleman_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Rifleman_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Rifleman_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Rifleman_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Rifleman_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Rifleman) has arrived in the deliveries box";
        };
    };
    case 59: {
        if (Wallet < EF_V_AAV_Sailor_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Sailor_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Sailor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Sailor_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Sailor_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Sailor_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Sailor) has arrived in the deliveries box";
        };
    };
    case 60: {
        if (Wallet < EF_V_AAV_Scout_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Scout_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Scout_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Scout_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Scout_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Scout) has arrived in the deliveries box";
        };
    };
    case 61: {
        if (Wallet < EF_V_AAV_Support_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Support_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Support_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_Support_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Support_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Support) has arrived in the deliveries box";
        };
    };
    case 62: {
        if (Wallet < EF_V_AAV_TL_Coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_TL_Coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Coyote Brown, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_TL_Coy ];
            Wallet = (Wallet - EF_V_CCR_AAV_TL_Coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_TL_Coy", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Coyote Brown, Team Leader) has arrived in the deliveries box";
        };
    };
    case 63: {
        if (Wallet < EF_V_AAV_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive) has arrived in the deliveries box";
        };
    };
    case 64: {
        if (Wallet < EF_V_AAV_Diver_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Diver) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Diver) has arrived in the deliveries box";
        };
    };
    case 65: {
        if (Wallet < EF_V_AAV_Diver_NoReb_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Diver_NoReb_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Diver, No Rebreather) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Diver_NoReb_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Diver_NoReb_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Diver_NoReb_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Diver, No Rebreather) has arrived in the deliveries box";
        };
    };
    case 66: {
        if (Wallet < EF_V_AAV_Rifleman_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Rifleman_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Rifleman_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Rifleman_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Rifleman_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Rifleman) has arrived in the deliveries box";
        };
    };
    case 67: {
        if (Wallet < EF_V_AAV_Sailor_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Sailor_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Sailor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Sailor_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Sailor_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Sailor_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Sailor) has arrived in the deliveries box";
        };
    };
    case 68: {
        if (Wallet < EF_V_AAV_Scout_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Scout_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Scout) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Scout_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Scout_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Scout_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Scout) has arrived in the deliveries box";
        };
    };
    case 69: {
        if (Wallet < EF_V_AAV_Support_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_Support_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Support) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_Support_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_Support_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_Support_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Support) has arrived in the deliveries box";
        };
    };
    case 70: {
        if (Wallet < EF_V_AAV_TL_Olive) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_V_CCR_AAV_TL_Olive ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Amphibious Assault Vest (Olive, Team Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_V_CCR_AAV_TL_Olive ];
            Wallet = (Wallet - EF_V_CCR_AAV_TL_Olive);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["EF_V_CCR_AAV_TL_Olive", 1];
            hint "Mail Call: Your Amphibious Assault Vest (Olive, Team Leader) has arrived in the deliveries box";
        };
    };
};
