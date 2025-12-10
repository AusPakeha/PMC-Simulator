switch (TheSelection) do {
	case 30: {
		if (Wallet < EF_B_AssaultPack_coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_AssaultPack_coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Assault Pack (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_AssaultPack_coy ];
			Wallet = (Wallet - EF_B_AssaultPack_coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_AssaultPack_coy", 1];
			hint "Mail Call: Your Assault Pack (Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 31: {
		if (Wallet < EF_B_Carryall_coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_Carryall_coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Carryall Backpack (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_Carryall_coy ];
			Wallet = (Wallet - EF_B_Carryall_coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_Carryall_coy", 1];
			hint "Mail Call: Your Carryall Backpack (Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 32: {
		if (Wallet < EF_B_Kitbag_coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_Kitbag_coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Kitbag (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_Kitbag_coy ];
			Wallet = (Wallet - EF_B_Kitbag_coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_Kitbag_coy", 1];
			hint "Mail Call: Your Kitbag (Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 33: {
		if (Wallet < EF_B_TacticalPack_coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_TacticalPack_coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Tactical Backpack (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_TacticalPack_coy ];
			Wallet = (Wallet - EF_B_TacticalPack_coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_TacticalPack_coy", 1];
			hint "Mail Call: Your Tactical Backpack (Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 34: {
		if (Wallet < EF_B_RadierPack_black) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_RadierPack_black ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Raider Pack (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_RadierPack_black ];
			Wallet = (Wallet - EF_B_RadierPack_black);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_RadierPack_black", 1];
			hint "Mail Call: Your Raider Pack (Black) has arrived in the deliveries box";
		};
	};
	case 35: {
		if (Wallet < EF_B_RadierPack_coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_RadierPack_coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Raider Pack (Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_RadierPack_coy ];
			Wallet = (Wallet - EF_B_RadierPack_coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_RadierPack_coy", 1];
			hint "Mail Call: Your Raider Pack (Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 36: {
		if (Wallet < EF_B_RadierPack_olive) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_B_RadierPack_olive ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Raider Pack (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_B_RadierPack_olive ];
			Wallet = (Wallet - EF_B_RadierPack_olive);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_B_RadierPack_olive", 1];
			hint "Mail Call: Your Raider Pack (Olive) has arrived in the deliveries box";
		};
	};
};
