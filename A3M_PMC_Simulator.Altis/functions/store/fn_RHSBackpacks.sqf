switch (TheSelection) do {
    case 30: {
        if (Wallet < rhsusf_falconii) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_falconii ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Falcon II (Olive)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_falconii ];
            Wallet = (Wallet - rhsusf_falconii);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_falconii", 1];
            hint "Mail Call: Your Falcon II (Olive) has arrived in the deliveries box";
        };
    };
    case 31: {
        if (Wallet < rhsusf_assault_eagleaiii_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (UCP)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_ucp ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ucp", 1];
            hint "Mail Call: Your Eagle A-III (UCP) has arrived in the deliveries box";
        };
    };
    case 32: {
        if (Wallet < rhsusf_assault_eagleaiii_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (OCP)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_ocp ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp", 1];
            hint "Mail Call: Your Eagle A-III (OCP) has arrived in the deliveries box";
        };
    };
    case 33: {
        if (Wallet < rhsusf_assault_eagleaiii_coy) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_coy ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (Coyote)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_coy ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_coy);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_coy", 1];
            hint "Mail Call: Your Eagle A-III (Coyote) has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < rhsusf_assault_eagleaiii_ocp_engineer) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_ocp_engineer ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (Engineer)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_ocp_engineer ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_ocp_engineer);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp_engineer", 1];
            hint "Mail Call: Your Eagle A-III (Engineer) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < rhsusf_assault_eagleaiii_ocp_medic) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_ocp_medic ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A- III (Medic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_ocp_medic ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_ocp_medic);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp_medic", 1];
            hint "Mail Call: Your Eagle A- III (Medic) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < rhsusf_assault_eagleaiii_ocp_demo) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_assault_eagleaiii_ocp_demo ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Eagle A-III (Demo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_assault_eagleaiii_ocp_demo ];
            Wallet = (Wallet - rhsusf_assault_eagleaiii_ocp_demo);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp_demo", 1];
            hint "Mail Call: Your Eagle A-III (Demo) has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < rhs_assault_umbts) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_assault_umbts ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered UMBTSfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_assault_umbts ];
            Wallet = (Wallet - rhs_assault_umbts);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhs_assault_umbts", 1];
            hint "Mail Call: Your UMBTS has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < rhs_sidor) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_sidor ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Sidorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_sidor ];
            Wallet = (Wallet - rhs_sidor);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhs_sidor", 1];
            hint "Mail Call: Your Sidor has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < rhs_rpg) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_rpg ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered RPG Carrierfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_rpg ];
            Wallet = (Wallet - rhs_rpg);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddBackpackCargoGlobal ["rhs_rpg", 1];
            hint "Mail Call: Your RPG Carrier has arrived in the deliveries box";
        };
    };
};
