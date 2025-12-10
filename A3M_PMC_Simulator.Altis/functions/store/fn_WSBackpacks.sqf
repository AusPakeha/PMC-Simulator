switch (TheSelection) do {
	case 30: {
		if (Wallet < B_AssaultPack_desert_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_AssaultPack_desert_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Assault Pack (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_AssaultPack_desert_lxWS ];
			Wallet = (Wallet - B_AssaultPack_desert_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_AssaultPack_desert_lxWS", 1];
			hint "Mail Call: Your Assault Pack (Desert) has arrived in the deliveries box";
		};
	};
	case 31: {
		if (Wallet < B_Carryall_desert_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Carryall_desert_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Carryall Backpack (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Carryall_desert_lxWS ];
			Wallet = (Wallet - B_Carryall_desert_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_Carryall_desert_lxWS", 1];
			hint "Mail Call: Your Carryall Backpack (Desert) has arrived in the deliveries box";
		};
	};
	case 32: {
		if (Wallet < B_Kitbag_desert_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_Kitbag_desert_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Kitbag (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_Kitbag_desert_lxWS ];
			Wallet = (Wallet - B_Kitbag_desert_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_Kitbag_desert_lxWS", 1];
			hint "Mail Call: Your Kitbag (Desert) has arrived in the deliveries box";
		};
	};
	case 33: {
		if (Wallet < B_shield_backpack_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_shield_backpack_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Portable Shield Bag (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_shield_backpack_lxWS ];
			Wallet = (Wallet - B_shield_backpack_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_shield_backpack_lxWS", 1];
			hint "Mail Call: Your Portable Shield Bag (Black) has arrived in the deliveries box";
		};
	};
};
