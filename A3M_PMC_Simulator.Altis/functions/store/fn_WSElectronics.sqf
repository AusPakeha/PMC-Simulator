switch (TheSelection) do {
    case 21: {
        if (Wallet < Camera_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Camera_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Digital Camera for $%1.00. Your order will be delivered soon! Check the deliveries box often!", Camera_lxWS ];
            Wallet = (Wallet - Camera_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["Camera_lxWS", 1];
            hint "Mail Call: Your Digital Camera has arrived in the deliveries box";
        };
    };
    case 22: {
        if (Wallet < ItemMotionSensor_lxWS) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ItemMotionSensor_lxWS ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Motion Sensor for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ItemMotionSensor_lxWS ];
            Wallet = (Wallet - ItemMotionSensor_lxWS);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["ItemMotionSensor_lxWS", 1];
            hint "Mail Call: Your Motion Sensor has arrived in the deliveries box";
        };
    };
};
