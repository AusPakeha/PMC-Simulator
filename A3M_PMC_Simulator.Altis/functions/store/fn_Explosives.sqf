switch (TheSelection) do {
    case 0 : {
        if (Wallet < M_3Rnd_HE_Grenade_shell) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_3Rnd_HE_Grenade_shell ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 3GL 40mm HE Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_3Rnd_HE_Grenade_shell ];
            Wallet = (Wallet - M_3Rnd_HE_Grenade_shell);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 1];
            hint "Mail Call: Your 3GL 40mm HE Grenade has arrived in the deliveries box";
        };
    };
    case 1 : {
        if (Wallet < M_1Rnd_HE_Grenade_shell) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_HE_Grenade_shell ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 40mm HE Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_HE_Grenade_shell ];
            Wallet = (Wallet - M_1Rnd_HE_Grenade_shell);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 1];
            hint "Mail Call: Your 40mm HE Grenade has arrived in the deliveries box";
        };
    };
    case 2 : {
        if (Wallet < APERSBoundingMine_Range_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", APERSBoundingMine_Range_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered APERS Bounding Mine for $%1.00. Your order will be delivered soon! Check the deliveries box often!", APERSBoundingMine_Range_Mag ];
            Wallet = (Wallet - APERSBoundingMine_Range_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 1];
            hint "Mail Call: Your APERS Bounding Mine has arrived in the deliveries box";
        };
    };
    case 3 : {
        if (Wallet < APERSMine_Range_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", APERSMine_Range_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered APERS Mine for $%1.00. Your order will be delivered soon! Check the deliveries box often!", APERSMine_Range_Mag ];
            Wallet = (Wallet - APERSMine_Range_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["APERSMine_Range_Mag", 1];
            hint "Mail Call: Your APERS Mine has arrived in the deliveries box";
        };
    };
    case 4 : {
        if (Wallet < APERSTripMine_Wire_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", APERSTripMine_Wire_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered APERS Tripwire Mine for $%1.00. Your order will be delivered soon! Check the deliveries box often!", APERSTripMine_Wire_Mag ];
            Wallet = (Wallet - APERSTripMine_Wire_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 1];
            hint "Mail Call: Your APERS Tripwire Mine has arrived in the deliveries box";
        };
    };
    case 5 : {
        if (Wallet < ATMine_Range_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ATMine_Range_Mag];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered AT Mine for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ATMine_Range_Mag];
            Wallet = (Wallet - ATMine_Range_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["ATMine_Range_Mag", 1];
            hint "Mail Call: Your AT Mine has arrived in the deliveries box";
        };
    };
    case 6 : {
        if (Wallet < DemoCharge_Remote_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", DemoCharge_Remote_Mag ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered C4 Demolition Chargefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", DemoCharge_Remote_Mag ];
            Wallet = (Wallet - DemoCharge_Remote_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["DemoCharge_Remote_Mag", 1];
            hint "Mail Call: Your C4 Demolition Charge has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < SatchelCharge_Remote_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SatchelCharge_Remote_Mag];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered C4 Satchel Charge for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SatchelCharge_Remote_Mag];
            Wallet = (Wallet - SatchelCharge_Remote_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 1];
            hint "Mail Call: Your C4 Satchel Chargehas arrived in the deliveries box";
        };
    };
    case 8 : {
        if (Wallet < SLAMDirectionalMine_Wire_Mag) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SLAMDirectionalMine_Wire_Mag];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered SLAM Directional Mine for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SLAMDirectionalMine_Wire_Mag];
            Wallet = (Wallet - SLAMDirectionalMine_Wire_Mag);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 1];
            hint "Mail Call: Your SLAM Directional Minehas arrived in the deliveries box";
        };
    };
    case 9 : {
        if (Wallet < MiniGrenade) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", MiniGrenade ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 10 oz. Hand Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", MiniGrenade ];
            Wallet = (Wallet - MiniGrenade);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["MiniGrenade", 1];
            hint "Mail Call: Your Stone Hand Grenade has arrived in the deliveries box";
        };
    };
    case 10 : {
        if (Wallet < HandGrenade) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", HandGrenade ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 16 oz. Hand Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", HandGrenade ];
            Wallet = (Wallet - HandGrenade);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["HandGrenade", 1];
            hint "Mail Call: Your M67 Hand Grenade has arrived in the deliveries box";
        };
    };
    case 11 : {
        if (Wallet < HandGrenade_Stone) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", HandGrenade_Stone ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered 20 oz. Hand Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", HandGrenade_Stone ];
            Wallet = (Wallet - HandGrenade_Stone);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddMagazineCargoGlobal ["HandGrenade_Stone", 1];
            hint "Mail Call: Your RGN Hand Grenade has arrived in the deliveries box";
        };
    };
};
