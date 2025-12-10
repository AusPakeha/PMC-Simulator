switch (TheSelection) do {
    case 0: {
        if (Wallet < Binoculars) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Binoculars];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tasco 12x Binocularsfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Binoculars];
            Wallet = (Wallet - Binoculars);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["Binocular", 1];
            hint "Mail Call: Your Tasco 12x Binoculars has arrived in the deliveries box";
        };
    };
    case 1: {
        if (Wallet < ItemCompass) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemCompass];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Outdoorsman Compassfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemCompass];
            Wallet = (Wallet - ItemCompass);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ItemCompass", 1];
            hint "Mail Call: Your Outdoorsman Compass has arrived in the deliveries box";
        };
    };
    case 2: {
        if (Wallet < ItemMap) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemMap];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Geosat Wilderness Mapfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemMap];
            Wallet = (Wallet - ItemMap);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ItemMap", 1];
            hint "Mail Call: Your Geosat Wilderness Map has arrived in the deliveries box";
        };
    };
    case 3: {
        if (Wallet < ToolKit) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ToolKit];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Craftsman Tool Kitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ToolKit];
            Wallet = (Wallet - ToolKit);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["ToolKit", 1];
            hint "Mail Call: Your Craftsman Tool Kit has arrived in the deliveries box";
        };
    };
    case 4: {
        if (Wallet < Chemlight_blue) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Chemlight_blue];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PoliceSupply Blue ChemLightfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Chemlight_blue];
            Wallet = (Wallet - Chemlight_blue);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["Chemlight_blue", 1];
            hint "Mail Call: Your PoliceSupply Blue ChemLight has arrived in the deliveries box";
        };
    };
    case 5: {
        if (Wallet < Chemlight_green) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Chemlight_green];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PoliceSupply Green ChemLightfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Chemlight_green];
            Wallet = (Wallet - Chemlight_green);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["Chemlight_green", 1];
            hint "Mail Call: Your PoliceSupply Green ChemLight has arrived in the deliveries box";
        };
    };
    case 6: {
        if (Wallet < Chemlight_red) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Chemlight_red ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PoliceSupply Red Chemlightfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Chemlight_red ];
            Wallet = (Wallet - Chemlight_red);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["Chemlight_red", 1];
            hint "Mail Call: Your PoliceSupply Red Chemlight has arrived in the deliveries box";
        };
    };
    case 7: {
        if (Wallet < Chemlight_yellow) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Chemlight_yellow];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered PoliceSupply Yellow Chemlightfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Chemlight_yellow];
            Wallet = (Wallet - Chemlight_yellow);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries addItemCargoGlobal ["Chemlight_yellow", 1];
            hint "Mail Call: Your PoliceSupply Yellow Chemlight has arrived in the deliveries box";
        };
    };
};
