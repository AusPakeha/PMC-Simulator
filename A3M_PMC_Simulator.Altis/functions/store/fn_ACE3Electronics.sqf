switch (TheSelection) do {
    case 21: {
        if (Wallet < ACE_Kestrel) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_Kestrel];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Kestrel 4500NVfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_Kestrel];
            Wallet= (wallet - ACE_Kestrel);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_Kestrel", 1];
            hint "Mail Call: Your Kestrel 4500NV has arrived in the deliveries box";
        };
    };

    case 22: {
        if (Wallet < ACE_microDAGR) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_microDAGR];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered ACE MicroDAGRfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_microDAGR];
            Wallet= (wallet - ACE_microDAGR);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_microDAGR", 1];
            hint "Mail Call: Your ACE MicroDAGR has arrived in the deliveries box";
        };
    };

    case 23: {
        if (Wallet < ACE_IR_Strobe_Item) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_IR_Strobe_Item];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered IR Strobefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_IR_Strobe_Item];
            Wallet= (wallet - ACE_IR_Strobe_Item);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_IR_Strobe_Item", 1];
            hint "Mail Call: Your IR Strobe has arrived in the deliveries box";
        };
    };

    case 24: {
        if (Wallet < ACE_Clacker) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_Clacker];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M57 Clackerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_Clacker];
            Wallet= (wallet - ACE_Clacker);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_Clacker", 1];
            hint "Mail Call: Your M57 Clacker has arrived in the deliveries box";
        };
    };

    case 25: {
        if (Wallet < ACE_M26_Clacker) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_M26_Clacker];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered M26 Clackerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_M26_Clacker];
            Wallet= (wallet - ACE_M26_Clacker);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_M26_Clacker", 1];
            hint "Mail Call: Your M26 Clacker has arrived in the deliveries box";
        };
    };

    case 26: {
        if (Wallet < ACE_UAVBattery) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_UAVBattery];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered UAV Batteryfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_UAVBattery];
            Wallet= (wallet - ACE_UAVBattery);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_UAVBattery", 1];
            hint "Mail Call: Your UAV Battery has arrived in the deliveries box";
        };
    };

    case 27: {
        if (Wallet < ACE_DeadManSwitch) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_DeadManSwitch];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Dead Man's Switchfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_DeadManSwitch];
            Wallet= (wallet - ACE_DeadManSwitch);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_DeadManSwitch", 1];
            hint "Mail Call: Your Dead Man's Switch has arrived in the deliveries box";
        };
    };

    case 28: {
        if (Wallet < ACE_Cellphone) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_Cellphone];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Callular Device (ACE) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_Cellphone];
            Wallet= (wallet - ACE_Cellphone);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_Cellphone", 1];
            hint "Mail Call: Your Callular Device (ACE) has arrived in the deliveries box";
        };
    };

    case 29: {
        if (Wallet < tf_microdagr) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", tf_microdagr];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Personal Radio Programmerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", tf_microdagr];
            Wallet= (wallet - tf_microdagr);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["tf_microdagr", 1];
            hint "Mail Call: Your Personal Radio Programmer has arrived in the deliveries box";
        };
    };

    case 30: {
        if (Wallet < ItemALiVEPhoneOld) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemALiVEPhoneOld];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered nothing for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemALiVEPhoneOld];
            Wallet= (wallet - ItemALiVEPhoneOld);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ItemALiVEPhoneOld", 1];
            hint "Mail Call: Your Old Cell Phone (ALiVE Mod) has arrived in the deliveries box";
        };
    };

    case 31: {
        if (Wallet < ItemAndroid) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemAndroid];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered GD300 Android Devicefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemAndroid];
            Wallet= (wallet - ItemAndroid);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ItemAndroid", 1];
            hint "Mail Call: Your GD300 Android Device has arrived in the deliveries box";
        };
    };

    case 32: {
        if (Wallet < ACE_Altimeter) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_Altimeter];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Altimeterfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_Altimeter];
            Wallet= (wallet - ACE_Altimeter);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddItemCargoGlobal ["ACE_Altimeter", 1];
            hint "Mail Call: Your Altimeter has arrived in the deliveries box";
        };
    };
};
