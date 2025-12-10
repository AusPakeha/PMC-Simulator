switch (TheSelection) do {
case 111: {
        if (Wallet < rhsusf_ach_bare) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Bare for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare ];
            Wallet = (Wallet - rhsusf_ach_bare);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 112: {
        if (Wallet < rhsusf_ach_bare_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Bare W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 113: {
        if (Wallet < rhsusf_ach_bare_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Bare W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_headset ];
            Wallet = (Wallet - rhsusf_ach_bare_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 114: {
        if (Wallet < rhsusf_ach_bare_headset_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_headset_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Bare W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_headset_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_headset_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_headset_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 115: {
        if (Wallet < rhsusf_ach_bare_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Tan for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_tan ];
            Wallet = (Wallet - rhsusf_ach_bare_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 116: {
        if (Wallet < rhsusf_ach_bare_tan_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_tan_ess];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Tan W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_tan_ess];
            Wallet = (Wallet - rhsusf_ach_bare_tan_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_tan_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 117: {
        if (Wallet < rhsusf_ach_bare_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Tan W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_tan_headset ];
            Wallet = (Wallet - rhsusf_ach_bare_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 118: {
        if (Wallet < rhsusf_ach_bare_tan_headset_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_tan_headset_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Tan W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_tan_headset_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_tan_headset_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_tan_headset_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 119: {
        if (Wallet < rhsusf_ach_bare_wood) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_wood ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Wood for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_wood ];
            Wallet = (Wallet - rhsusf_ach_bare_wood);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_wood", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 120: {
        if (Wallet < rhsusf_ach_bare_wood_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_wood_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Wood W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_wood_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_wood_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_wood_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 121: {
        if (Wallet < rhsusf_ach_bare_wood_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_wood_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Wood W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_wood_headset ];
            Wallet = (Wallet - rhsusf_ach_bare_wood_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_wood_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 122: {
        if (Wallet < rhsusf_ach_bare_wood_headset_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_wood_headset_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Wood W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_wood_headset_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_wood_headset_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_wood_headset_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 123: {
        if (Wallet < rhsusf_ach_bare_des) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_des];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Desert for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_des];
            Wallet = (Wallet - rhsusf_ach_bare_des);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_des", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 124: {
        if (Wallet < rhsusf_ach_bare_des_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_des_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Desert W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_des_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_des_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_des_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 125: {
        if (Wallet < rhsusf_ach_bare_des_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_des_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Desert W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_des_headset ];
            Wallet = (Wallet - rhsusf_ach_bare_des_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_des_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 126: {
        if (Wallet < rhsusf_ach_bare_des_headset_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_des_headset_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Desert W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_des_headset_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_des_headset_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_des_headset_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 127: {
        if (Wallet < rhsusf_ach_bare_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Semi-Arid for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_semi ];
            Wallet = (Wallet - rhsusf_ach_bare_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 128: {
        if (Wallet < rhsusf_ach_bare_semi_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_semi_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Semi-Arid W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_semi_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_semi_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_semi_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 129: {
        if (Wallet < rhsusf_ach_bare_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Semi-Arid W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_semi_headset ];
            Wallet = (Wallet - rhsusf_ach_bare_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 130: {
        if (Wallet < rhsusf_ach_bare_semi_headset_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_bare_semi_headset_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH Semi-Arid W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_bare_semi_headset_ess ];
            Wallet = (Wallet - rhsusf_ach_bare_semi_headset_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_bare_semi_headset_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 131: {
        if (Wallet < rhsusf_ach_helmet_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH UCP for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_ucp ];
            Wallet = (Wallet - rhsusf_ach_helmet_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 132: {
        if (Wallet < rhsusf_ach_helmet_ess_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_ess_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH UCP W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_ess_ucp ];
            Wallet = (Wallet - rhsusf_ach_helmet_ess_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_ess_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 133: {
        if (Wallet < rhsusf_ach_helmet_headset_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_headset_ucp];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH UCP W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_headset_ucp];
            Wallet = (Wallet - rhsusf_ach_helmet_headset_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_headset_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 134: {
        if (Wallet < rhsusf_ach_helmet_headset_ess_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_headset_ess_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH UCP W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_headset_ess_ucp ];
            Wallet = (Wallet - rhsusf_ach_helmet_headset_ess_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_headset_ess_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 135: {
        if (Wallet < rhsusf_ach_helmet_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH OCP for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_ocp ];
            Wallet = (Wallet - rhsusf_ach_helmet_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 136: {
        if (Wallet < rhsusf_ach_helmet_camo_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_camo_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH OCP Camofor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_camo_ocp ];
            Wallet = (Wallet - rhsusf_ach_helmet_camo_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_camo_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 137: {
        if (Wallet < rhsusf_ach_helmet_ess_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_ess_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH OCP W/ ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_ess_ocp ];
            Wallet = (Wallet - rhsusf_ach_helmet_ess_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_ess_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 138: {
        if (Wallet < rhsusf_ach_helmet_headset_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_headset_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH OCP W/ Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_headset_ocp ];
            Wallet = (Wallet - rhsusf_ach_helmet_headset_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_headset_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 139: {
        if (Wallet < rhsusf_ach_helmet_headset_ess_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_headset_ess_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACH OCP W/ Headset+ESSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_headset_ess_ocp ];
            Wallet = (Wallet - rhsusf_ach_helmet_headset_ess_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_headset_ess_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 140: {
        if (Wallet < rhsusf_ach_helmet_m81) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_ach_helmet_m81 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M81for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_ach_helmet_m81 ];
            Wallet = (Wallet - rhsusf_ach_helmet_m81);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_ach_helmet_m81", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 141: {
        if (Wallet < rhsusf_mich_bare) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Clean for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare ];
            Wallet = (Wallet - rhsusf_mich_bare);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 142: {
        if (Wallet < rhsusf_mich_bare_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 143: {
        if (Wallet < rhsusf_mich_bare_alt) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_alt ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Alternative for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_alt ];
            Wallet = (Wallet - rhsusf_mich_bare_alt);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_alt", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 144: {
        if (Wallet < rhsusf_mich_bare_norotos) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 145: {
        if (Wallet < rhsusf_mich_bare_norotos_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 146: {
        if (Wallet < rhsusf_mich_bare_norotos_alt) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 147: {
        if (Wallet < rhsusf_mich_bare_norotos_alt_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 148: {
        if (Wallet < rhsusf_mich_bare_norotos_arc) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Arc for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 149: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Arc / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 150: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Arc / Alt for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 151: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Olive) Norotos / Arc / Alt / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 152: {
        if (Wallet < rhsusf_mich_bare_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Clean for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 153: {
        if (Wallet < rhsusf_mich_bare_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_tan_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 154: {
        if (Wallet < rhsusf_mich_bare_alt_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_alt_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Alternative for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_alt_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_alt_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_alt_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 155: {
        if (Wallet < rhsusf_mich_bare_norotos_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 156: {
        if (Wallet < rhsusf_mich_bare_norotos_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_tan_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 157: {
        if (Wallet < rhsusf_mich_bare_norotos_alt_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 158: {
        if (Wallet < rhsusf_mich_bare_norotos_alt_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt_tan_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 159: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Arc for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 160: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Arc / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_tan_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 161: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Arc / Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt_tan ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 162: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt_tan_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt_tan_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Tan) Norotos / Arc / Alt / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt_tan_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt_tan_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_tan_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 163: {
        if (Wallet < rhsusf_mich_bare_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Clean for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 164: {
        if (Wallet < rhsusf_mich_bare_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_semi_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 165: {
        if (Wallet < rhsusf_mich_bare_alt_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_alt_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Alternative for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_alt_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_alt_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_alt_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 166: {
        if (Wallet < rhsusf_mich_bare_norotos_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 167: {
        if (Wallet < rhsusf_mich_bare_norotos_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_semi_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 168: {
        if (Wallet < rhsusf_mich_bare_norotos_alt_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Alternative for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 169: {
        if (Wallet < rhsusf_mich_bare_norotos_alt_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_alt_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Alternative for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_alt_semi_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_alt_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_alt_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 170: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Arc for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 171: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Arc / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_semi_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 172: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt_semi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt_semi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Arc / Alt for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt_semi ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt_semi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_semi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 173: {
        if (Wallet < rhsusf_mich_bare_norotos_arc_alt_semi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_bare_norotos_arc_alt_semi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (Semi-Arid) Norotos / Arc / Alt / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_bare_norotos_arc_alt_semi_headset ];
            Wallet = (Wallet - rhsusf_mich_bare_norotos_arc_alt_semi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_semi_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 174: {
        if (Wallet < rhsusf_mich_helmet_marpatwd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Clean for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 175: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 176: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_alt) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_alt ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_alt ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_alt);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_alt", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 177: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_alt_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_alt_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Alt / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_alt_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_alt_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_alt_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 178: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_norotos) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_norotos ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Norotosfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_norotos ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_norotos);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_norotos", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 179: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_norotos_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_norotos_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Norotos / Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_norotos_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_norotos_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_norotos_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 180: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_norotos_arc) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_norotos_arc ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Norotos / Arc for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_norotos_arc ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_norotos_arc);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_norotos_arc", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 181: {
        if (Wallet < rhsusf_mich_helmet_marpatwd_norotos_arc_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatwd_norotos_arc_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Woodland) Norotos / Arc / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatwd_norotos_arc_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatwd_norotos_arc_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatwd_norotos_arc_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 182: {
        if (Wallet < rhsusf_mich_helmet_marpatd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Clean for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 183: {
        if (Wallet < rhsusf_mich_helmet_marpatd_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 184: {
        if (Wallet < rhsusf_mich_helmet_marpatd_alt) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_alt ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Altfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_alt ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_alt);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_alt", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 185: {
        if (Wallet < rhsusf_mich_helmet_marpatd_alt_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_alt_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Alt / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_alt_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_alt_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_alt_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 186: {
        if (Wallet < rhsusf_mich_helmet_marpatd_norotos) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_norotos ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Norotosfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_norotos ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_norotos);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_norotos", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 187: {
        if (Wallet < rhsusf_mich_helmet_marpatd_norotos_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_norotos_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Norotos / Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_norotos_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_norotos_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_norotos_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 188: {
        if (Wallet < rhsusf_mich_helmet_marpatd_norotos_arc) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_norotos_arc ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Norotos / Arc for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_norotos_arc ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_norotos_arc);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_norotos_arc", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 189: {
        if (Wallet < rhsusf_mich_helmet_marpatd_norotos_arc_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_mich_helmet_marpatd_norotos_arc_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered MICH 2000 Bare (MARPAT Desert) Norotos / Arc / Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_mich_helmet_marpatd_norotos_arc_headset ];
            Wallet = (Wallet - rhsusf_mich_helmet_marpatd_norotos_arc_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_mich_helmet_marpatd_norotos_arc_headset", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 190: {
        if (Wallet < rhsusf_opscore_02) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_02 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE Bare for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_02 ];
            Wallet = (Wallet - rhsusf_opscore_02);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_02", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 191: {
        if (Wallet < rhsusf_opscore_01) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_01 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE Bare (Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_01 ];
            Wallet = (Wallet - rhsusf_opscore_01);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_01", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 192: {
        if (Wallet < rhsusf_opscore_02_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_02_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE Tanfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_02_tan ];
            Wallet = (Wallet - rhsusf_opscore_02_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_02_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 193: {
        if (Wallet < rhsusf_opscore_01_tan) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_01_tan ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE Tan (Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_01_tan ];
            Wallet = (Wallet - rhsusf_opscore_01_tan);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_01_tan", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 194: {
        if (Wallet < rhsusf_opscore_04_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_04_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE OCPfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_04_ocp ];
            Wallet = (Wallet - rhsusf_opscore_04_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_04_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 195: {
        if (Wallet < rhsusf_opscore_03_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_opscore_03_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered OPS CORE OCP (Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_opscore_03_ocp ];
            Wallet = (Wallet - rhsusf_opscore_03_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_opscore_03_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 196: {
        if (Wallet < rhs_Booniehat_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat UCPfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_ucp ];
            Wallet = (Wallet - rhs_Booniehat_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 197: {
        if (Wallet < rhs_Booniehat_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat OCPfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_ocp ];
            Wallet = (Wallet - rhs_Booniehat_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 198: {
        if (Wallet < rhs_Booniehat_marpatwd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_marpatwd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat MARPAT (Woodland)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_marpatwd ];
            Wallet = (Wallet - rhs_Booniehat_marpatwd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_marpatwd", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 199: {
        if (Wallet < rhs_Booniehat_marpatd) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_marpatd ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat MARPAT (Desert)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_marpatd ];
            Wallet = (Wallet - rhs_Booniehat_marpatd);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_marpatd", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 200: {
        if (Wallet < rhs_Booniehat_m81) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_m81 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M81for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_m81 ];
            Wallet = (Wallet - rhs_Booniehat_m81);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_m81", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 201: {
        if (Wallet < rhsusf_Bowman) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_Bowman ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bowman Headsetfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_Bowman ];
            Wallet = (Wallet - rhsusf_Bowman);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_Bowman", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 202: {
        if (Wallet < rhsusf_bowman_cap) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_bowman_cap ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Bowman Headset w/ Capfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_bowman_cap ];
            Wallet = (Wallet - rhsusf_bowman_cap);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_bowman_cap", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 203: {
        if (Wallet < rhsusf_patrolcap_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_patrolcap_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Patrol Cap (UCP)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_patrolcap_ucp ];
            Wallet = (Wallet - rhsusf_patrolcap_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_patrolcap_ucp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 204: {
        if (Wallet < rhsusf_patrolcap_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_patrolcap_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Patrol Cap (OCP)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_patrolcap_ocp ];
            Wallet = (Wallet - rhsusf_patrolcap_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_patrolcap_ocp", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 205: {
        if (Wallet < rhsusf_cvc_helmet) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_cvc_helmet ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet CVC Tan for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_cvc_helmet ];
            Wallet = (Wallet - rhsusf_cvc_helmet);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_cvc_helmet", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 206: {
        if (Wallet < rhsusf_cvc_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_cvc_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet CVC Tan (ESS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_cvc_ess ];
            Wallet = (Wallet - rhsusf_cvc_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_cvc_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 207: {
        if (Wallet < rhsusf_cvc_green_helmet) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_cvc_green_helmet ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet CVC Green for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_cvc_green_helmet ];
            Wallet = (Wallet - rhsusf_cvc_green_helmet);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_cvc_green_helmet", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 208: {
        if (Wallet < rhsusf_cvc_green_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_cvc_green_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet CVC Green (ESS) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_cvc_green_ess ];
            Wallet = (Wallet - rhsusf_cvc_green_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_cvc_green_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 209: {
        if (Wallet < PilotHelmetHeli) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", PilotHelmetHeli];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot/Crew Helmet HGU-56/Pfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", PilotHelmetHeli];
            Wallet = (Wallet - PilotHelmetHeli);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["PilotHelmetHeli", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 210: {
        if (Wallet < H_CrewHelmetHeli_B) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_CrewHelmetHeli_B ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot/Crew Helmet HGU-56/P (Mask)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_CrewHelmetHeli_B ];
            Wallet = (Wallet - H_CrewHelmetHeli_B);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["H_CrewHelmetHeli_B", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 211: {
        if (Wallet < rhs_balaclava) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_balaclava ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Balaclavafor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_balaclava ];
            Wallet = (Wallet - rhs_balaclava);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_balaclava", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 212: {
        if (Wallet < rhs_scarf) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_scarf ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Scarffor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_scarf ];
            Wallet = (Wallet - rhs_scarf);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_scarf", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 213: {
        if (Wallet < rhs_6b27m_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_green ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Plain for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_green ];
            Wallet = (Wallet - rhs_6b27m_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_green", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 214: {
        if (Wallet < rhs_6b27m_green_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_green_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Plain (Goggles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_green_ess ];
            Wallet = (Wallet - rhs_6b27m_green_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_green_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 215: {
        if (Wallet < rhs_6b27m_green_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_green_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Plain (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_green_bala ];
            Wallet = (Wallet - rhs_6b27m_green_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_green_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 216: {
        if (Wallet < rhs_6b27m_green_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_green_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Plain (Goggles and Balaclava)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_green_ess_bala ];
            Wallet = (Wallet - rhs_6b27m_green_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_green_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 217: {
        if (Wallet < rhs_6b27m) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Flora for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m ];
            Wallet = (Wallet - rhs_6b27m);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 218: {
        if (Wallet < rhs_6b27m_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Flora (Googles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_ess ];
            Wallet = (Wallet - rhs_6b27m_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 219: {
        if (Wallet < rhs_6b27m_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Flora (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_bala ];
            Wallet = (Wallet - rhs_6b27m_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 220: {
        if (Wallet < rhs_6b27m_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Flora (Goggles and Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_ess_bala ];
            Wallet = (Wallet - rhs_6b27m_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 121: {
        if (Wallet < rhs_6b27m_digi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_digi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M EMR-Summer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_digi ];
            Wallet = (Wallet - rhs_6b27m_digi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_digi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 122: {
        if (Wallet < rhs_6b27m_digi_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_digi_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M EMR-Summer (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_digi_bala ];
            Wallet = (Wallet - rhs_6b27m_digi_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_digi_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 123: {
        if (Wallet < rhs_6b27m_ml) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b27m_ml ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B27M Mountain Les for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b27m_ml ];
            Wallet = (Wallet - rhs_6b27m_ml);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b27m_ml", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 124: {
        if (Wallet < rhs_6b28_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_green ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Plain for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_green ];
            Wallet = (Wallet - rhs_6b28_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_green", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 125: {
        if (Wallet < rhs_6b28_green_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_green_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Plain (Goggles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_green_ess ];
            Wallet = (Wallet - rhs_6b28_green_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_green_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 126: {
        if (Wallet < rhs_6b28_green_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_green_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Plain (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_green_bala ];
            Wallet = (Wallet - rhs_6b28_green_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_green_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 127: {
        if (Wallet < rhs_6b28_green_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_green_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Plain (Goggles and Balaclava)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_green_ess_bala ];
            Wallet = (Wallet - rhs_6b28_green_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_green_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 128: {
        if (Wallet < rhs_6b28) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 EMR-Summer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28 ];
            Wallet = (Wallet - rhs_6b28);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 129: {
        if (Wallet < rhs_6b28_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 EMR-Summer (Googles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_ess ];
            Wallet = (Wallet - rhs_6b28_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 130: {
        if (Wallet < rhs_6b28_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_bala];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 EMR-Summer (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_bala];
            Wallet = (Wallet - rhs_6b28_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 131: {
        if (Wallet < rhs_6b28_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 EMR-Summer (Goggles and Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_ess_bala ];
            Wallet = (Wallet - rhs_6b28_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 132: {
        if (Wallet < rhs_6b28_flora) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_flora ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Florafor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_flora ];
            Wallet = (Wallet - rhs_6b28_flora);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_flora", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 133: {
        if (Wallet < rhs_6b28_flora_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_flora_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Flora (Goggles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_flora_ess ];
            Wallet = (Wallet - rhs_6b28_flora_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_flora_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 134: {
        if (Wallet < rhs_6b28_flora_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_flora_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Helmet 6B28 Flora (Balaclava)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_flora_bala ];
            Wallet = (Wallet - rhs_6b28_flora_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_flora_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 135: {
        if (Wallet < rhs_6b28_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6b28_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Flora (Googles and Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6b28_ess_bala ];
            Wallet = (Wallet - rhs_6b28_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6b28_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 136: {
        if (Wallet < rhs_Booniehat_flora) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_flora ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat (Flora) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_flora ];
            Wallet = (Wallet - rhs_Booniehat_flora);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_flora", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 137: {
        if (Wallet < rhs_Booniehat_digi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_Booniehat_digi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Boonie Hat (EMR-Summer) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_Booniehat_digi ];
            Wallet = (Wallet - rhs_Booniehat_digi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_Booniehat_digi", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 138: {
        if (Wallet < rhs_beanie) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_beanie ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beanie Florafor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_beanie ];
            Wallet = (Wallet - rhs_beanie);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_beanie", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 139: {
        if (Wallet < rhs_beanie_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_beanie_green];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Beaniefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_beanie_green];
            Wallet = (Wallet - rhs_beanie_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_beanie_green", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 140: {
        if (Wallet < rhs_tsh4) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_tsh4 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet TSh-4for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_tsh4 ];
            Wallet = (Wallet - rhs_tsh4);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_tsh4", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 141: {
        if (Wallet < rhs_tsh4_ess) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_tsh4_ess ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet TSh-4 (Googles) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_tsh4_ess ];
            Wallet = (Wallet - rhs_tsh4_ess);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_tsh4_ess", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
142case 131: {
        if (Wallet < rhs_tsh4_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_tsh4_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet TSh-4 (Balaclava) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_tsh4_bala ];
            Wallet = (Wallet - rhs_tsh4_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_tsh4_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 143: {
        if (Wallet < rhs_tsh4_ess_bala) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_tsh4_ess_bala ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tank Helmet TSh-4 (Googles and Balaclava)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_tsh4_ess_bala ];
            Wallet = (Wallet - rhs_tsh4_ess_bala);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_tsh4_ess_bala", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 144: {
        if (Wallet < rhs_zsh7a_mike) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_zsh7a_mike ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot Helmet ZSh-7Afor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_zsh7a_mike ];
            Wallet = (Wallet - rhs_zsh7a_mike);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_zsh7a_mike", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
case 145: {
        if (Wallet < rhs_zsh7a) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_zsh7a ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Pilot Helmet ZSh-7A (KM-35)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_zsh7a ];
            Wallet = (Wallet - rhs_zsh7a);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_zsh7a", 1];
            hint "Mail Call: Your Headgear has arrived in the deliveries box";
        };
    };
};
