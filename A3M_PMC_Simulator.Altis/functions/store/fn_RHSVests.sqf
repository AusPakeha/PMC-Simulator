switch (TheSelection) do {
    case 33: {
        if (Wallet < rhsusf_iotv_ucp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp ];
            Wallet = (Wallet - rhsusf_iotv_ucp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp", 1];
            hint "Mail Call: Your IOTV UCP has arrived in the deliveries box";
        };
    };
    case 34: {
        if (Wallet < rhsusf_iotv_ucp_grenadier) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_grenadier ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Grenadier) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_grenadier ];
            Wallet = (Wallet - rhsusf_iotv_ucp_grenadier);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_grenadier", 1];
            hint "Mail Call: Your IOTV UCP (Grenadier) has arrived in the deliveries box";
        };
    };
    case 35: {
        if (Wallet < rhsusf_iotv_ucp_medic) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_medic ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Medic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_medic ];
            Wallet = (Wallet - rhsusf_iotv_ucp_medic);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_medic", 1];
            hint "Mail Call: Your IOTV UCP (Medic) has arrived in the deliveries box";
        };
    };
    case 36: {
        if (Wallet < rhsusf_iotv_ucp_repair) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_repair ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Repair) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_repair ];
            Wallet = (Wallet - rhsusf_iotv_ucp_repair);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_repair", 1];
            hint "Mail Call: Your IOTV UCP (Repair) has arrived in the deliveries box";
        };
    };
    case 37: {
        if (Wallet < rhsusf_iotv_ucp_rifleman) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_rifleman ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_rifleman ];
            Wallet = (Wallet - rhsusf_iotv_ucp_rifleman);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_rifleman", 1];
            hint "Mail Call: Your IOTV UCP (Rifleman) has arrived in the deliveries box";
        };
    };
    case 38: {
        if (Wallet < rhsusf_iotv_ucp_SAW) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_SAW ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (SAW) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_SAW ];
            Wallet = (Wallet - rhsusf_iotv_ucp_SAW);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_SAW", 1];
            hint "Mail Call: Your IOTV UCP (SAW) has arrived in the deliveries box";
        };
    };
    case 39: {
        if (Wallet < rhsusf_iotv_ucp_squadleader) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_squadleader ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Squad Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_squadleader ];
            Wallet = (Wallet - rhsusf_iotv_ucp_squadleader);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_squadleader", 1];
            hint "Mail Call: Your IOTV UCP (Squad Leader) has arrived in the deliveries box";
        };
    };
    case 40: {
        if (Wallet < rhsusf_iotv_ucp_teamleader) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ucp_teamleader ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV UCP (Team leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ucp_teamleader ];
            Wallet = (Wallet - rhsusf_iotv_ucp_teamleader);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ucp_teamleader", 1];
            hint "Mail Call: Your IOTV UCP (Team leader) has arrived in the deliveries box";
        };
    };
    case 41: {
        if (Wallet < rhsusf_iotv_ocp) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp ];
            Wallet = (Wallet - rhsusf_iotv_ocp);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp", 1];
            hint "Mail Call: Your IOTV OCP has arrived in the deliveries box";
        };
    };
    case 42: {
        if (Wallet < rhsusf_iotv_ocp_grenadier) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_grenadier ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Grenadier) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_grenadier ];
            Wallet = (Wallet - rhsusf_iotv_ocp_grenadier);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_grenadier", 1];
            hint "Mail Call: Your IOTV OCP (Grenadier) has arrived in the deliveries box";
        };
    };
    case 43: {
        if (Wallet < rhsusf_iotv_ocp_medic) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_medic ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Medic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_medic ];
            Wallet = (Wallet - rhsusf_iotv_ocp_medic);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_medic", 1];
            hint "Mail Call: Your IOTV OCP (Medic) has arrived in the deliveries box";
        };
    };
    case 44: {
        if (Wallet < rhsusf_iotv_ocp_repair) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_repair ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Repair) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_repair ];
            Wallet = (Wallet - rhsusf_iotv_ocp_repair);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_repair", 1];
            hint "Mail Call: Your IOTV OCP (Repair) has arrived in the deliveries box";
        };
    };
    case 45: {
        if (Wallet < rhsusf_iotv_ocp_rifleman) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_rifleman ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Rifleman) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_rifleman ];
            Wallet = (Wallet - rhsusf_iotv_ocp_rifleman);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_rifleman", 1];
            hint "Mail Call: Your IOTV OCP (Rifleman) has arrived in the deliveries box";
        };
    };
    case 46: {
        if (Wallet < rhsusf_iotv_ocp_SAW) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_SAW];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (SAW) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_SAW];
            Wallet = (Wallet - rhsusf_iotv_ocp_SAW);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_SAW", 1];
            hint "Mail Call: Your IOTV OCP (SAW) has arrived in the deliveries box";
        };
    };
    case 47: {
        if (Wallet < rhsusf_iotv_ocp_squadleader) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_squadleader ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Squad Leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_squadleader ];
            Wallet = (Wallet - rhsusf_iotv_ocp_squadleader);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_squadleader", 1];
            hint "Mail Call: Your IOTV OCP (Squad Leader) has arrived in the deliveries box";
        };
    };
    case 48: {
        if (Wallet < rhsusf_iotv_ocp_teamleader) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_iotv_ocp_teamleader ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IOTV OCP (Team leader) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_iotv_ocp_teamleader ];
            Wallet = (Wallet - rhsusf_iotv_ocp_teamleader);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_iotv_ocp_teamleader", 1];
            hint "Mail Call: Your IOTV OCP (Team leader) has arrived in the deliveries box";
        };
    };
    case 49: {
        if (Wallet < rhsusf_spc) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_spc ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SPC (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_spc ];
            Wallet = (Wallet - rhsusf_spc);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhsusf_spc", 1];
            hint "Mail Call: Your SPC (Coyote) has arrived in the deliveries box";
        };
    };
    case 50: {
        if (Wallet < rhs_6sh92) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92 ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 Florafor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92 ];
            Wallet = (Wallet - rhs_6sh92);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92", 1];
            hint "Mail Call: Your 6sh92 Flora has arrived in the deliveries box";
        };
    };
    case 51: {
        if (Wallet < rhs_6sh92_radio) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_radio ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 Flora (Radio)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_radio ];
            Wallet = (Wallet - rhs_6sh92_radio);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_radio", 1];
            hint "Mail Call: Your 6sh92 Flora (Radio) has arrived in the deliveries box";
        };
    };
    case 52: {
        if (Wallet < rhs_6sh92_vog) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_vog ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 Flora (VOG)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_vog ];
            Wallet = (Wallet - rhs_6sh92_vog);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_vog", 1];
            hint "Mail Call: Your 6sh92 Flora (VOG) has arrived in the deliveries box";
        };
    };
    case 53: {
        if (Wallet < rhs_6sh92_vog_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_vog_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 Flora (VOG+Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_vog_headset ];
            Wallet = (Wallet - rhs_6sh92_vog_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_vog_headset", 1];
            hint "Mail Call: Your 6sh92 Flora (VOG+Headset) has arrived in the deliveries box";
        };
    };
    case 54: {
        if (Wallet < rhs_6sh92_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 Flora (Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_headset ];
            Wallet = (Wallet - rhs_6sh92_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_headset", 1];
            hint "Mail Call: Your 6sh92 Flora (Headset) has arrived in the deliveries box";
        };
    };
    case 55: {
        if (Wallet < rhs_6sh92_digi) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_digi ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 EMR Summerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_digi ];
            Wallet = (Wallet - rhs_6sh92_digi);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_digi", 1];
            hint "Mail Call: Your 6sh92 EMR Summer has arrived in the deliveries box";
        };
    };
    case 56: {
        if (Wallet < rhs_6sh92_digi_radio) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_digi_radio ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 EMR Summer (Radio)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_digi_radio ];
            Wallet = (Wallet - rhs_6sh92_digi_radio);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_digi_radio", 1];
            hint "Mail Call: Your 6sh92 EMR Summer (Radio) has arrived in the deliveries box";
        };
    };
    case 57: {
        if (Wallet < rhs_6sh92_digi_vog) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_digi_vog ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 EMR Summer (VOG)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_digi_vog ];
            Wallet = (Wallet - rhs_6sh92_digi_vog);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_digi_vog", 1];
            hint "Mail Call: Your 6sh92 EMR Summer (VOG) has arrived in the deliveries box";
        };
    };
    case 58: {
        if (Wallet < rhs_6sh92_digi_vog_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_digi_vog_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 EMR Summer (VOG+Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_digi_vog_headset ];
            Wallet = (Wallet - rhs_6sh92_digi_vog_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            liveries addItemCargoGlobal[" rhs_6sh92_digi_vog_headset", 1];
            hint "Mail Call: Your 6sh92 EMR Summer (VOG+Headset) has arrived in the deliveries box";
        };
    };
    case 59: {
        if (Wallet < rhs_6sh92_digi_headset) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_6sh92_digi_headset ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 6sh92 EMR Summer (Headset)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_6sh92_digi_headset ];
            Wallet = (Wallet - rhs_6sh92_digi_headset);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["rhs_6sh92_digi_headset", 1];
            hint "Mail Call: Your 6sh92 EMR Summer (Headset) has arrived in the deliveries box";
        };
    };
};
