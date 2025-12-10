switch (TheSelection) do {
    case 6 : {
        if (Wallet < suppressor_127x55_small_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_small_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Sound Suppressor (12.7 mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_small_RF ];
            Wallet= (wallet - suppressor_127x55_small_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_small_RF", 1];
            hint "Mail Call: Your Sound Suppressor (12.7 mm) has arrived in the deliveries box";
        };
    };
    case 7 : {
        if (Wallet < suppressor_127x55_big_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_big_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Large Sound Suppressor (12.7 mm) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_big_RF ];
            Wallet= (wallet - suppressor_127x55_big_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_big_RF", 1];
            hint "Mail Call: Your Large Sound Suppressor (12.7 mm) has arrived in the deliveries box";
        };
    };
    case 8 : {
        if (Wallet < suppressor_127x55_small_wood_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_small_wood_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Sound Suppressor (12.7 mm, Wood) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_small_wood_RF ];
            Wallet= (wallet - suppressor_127x55_small_wood_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_small_wood_RF", 1];
            hint "Mail Call: Your Sound Suppressor (12.7 mm, Wood) has arrived in the deliveries box";
        };
    };
    case 9 : {
        if (Wallet < suppressor_127x55_big_wood_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_big_wood_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Large Sound Suppressor (12.7 mm, Wood) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_big_wood_RF ];
            Wallet= (wallet - suppressor_127x55_big_wood_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_big_wood_RF", 1];
            hint "Mail Call: Your Large Sound Suppressor (12.7 mm, Wood) has arrived in the deliveries box";
        };
    };
    case 10 : {
        if (Wallet < suppressor_127x55_small_desert_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_small_desert_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Sound Suppressor (12.7 mm, Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_small_desert_RF ];
            Wallet= (wallet - suppressor_127x55_small_desert_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_small_desert_RF", 1];
            hint "Mail Call: Your Sound Suppressor (12.7 mm, Desert) has arrived in the deliveries box";
        };
    };
    case 11 : {
        if (Wallet < suppressor_127x55_big_desert_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_127x55_big_desert_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Large Sound Suppressor (12.7 mm, Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_127x55_big_desert_RF ];
            Wallet= (wallet - suppressor_127x55_big_desert_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_127x55_big_desert_RF", 1];
            hint "Mail Call: Your Large Sound Suppressor (12.7 mm, Desert) has arrived in the deliveries box";
        };
    };
    case 12 : {
        if (Wallet < suppressor_65_black_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_65_black_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Sound Suppressor (6.5 mm, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_65_black_RF ];
            Wallet= (wallet - suppressor_65_black_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_65_black_RF", 1];
            hint "Mail Call: Your Tactical Sound Suppressor (6.5 mm, Black) has arrived in the deliveries box";
        };
    };
    case 13 : {
        if (Wallet < suppressor_65_green_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_65_green_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Sound Suppressor (6.5 mm, Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_65_green_RF ];
            Wallet= (wallet - suppressor_65_green_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_65_green_RF", 1];
            hint "Mail Call: Your Tactical Sound Suppressor (6.5 mm, Green) has arrived in the deliveries box";
        };
    };
    case 14 : {
        if (Wallet < suppressor_65_khaki_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_65_khaki_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Sound Suppressor (6.5 mm, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_65_khaki_RF ];
            Wallet= (wallet - suppressor_65_khaki_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_65_khaki_RF", 1];
            hint "Mail Call: Your Tactical Sound Suppressor (6.5 mm, Khaki) has arrived in the deliveries box";
        };
    };
    case 15 : {
        if (Wallet < suppressor_65_sand_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_65_sand_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Sound Suppressor (6.5 mm, Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_65_sand_RF ];
            Wallet= (wallet - suppressor_65_sand_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_65_sand_RF", 1];
            hint "Mail Call: Your Tactical Sound Suppressor (6.5 mm, Sand) has arrived in the deliveries box";
        };
    };
    case 16 : {
        if (Wallet < suppressor_65_tan_RF) then {
            Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", suppressor_65_tan_RF ];
        } else {
            PlaySound "A3M_buy";
            Hint format ["You have ordered Tactical Sound Suppressor (6.5 mm, Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", suppressor_65_tan_RF ];
            Wallet= (wallet - suppressor_65_tan_RF);
            profileNamespace setVariable ["SavedMoney", Wallet];
            saveProfileNamespace;
            sleep DeliveryTime;
            Deliveries AddWeaponCargoGlobal ["suppressor_65_tan_RF", 1];
            hint "Mail Call: Your Tactical Sound Suppressor (6.5 mm, Tan) has arrived in the deliveries box";
        };
    };
};
