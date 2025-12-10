switch (TheSelection) do {
	case 0: {
		if (Wallet < TiGoggles_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", TiGoggles_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TNVG-B (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", TiGoggles_RF ];
			Wallet= (wallet - TiGoggles_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["TiGoggles_RF", 1];
			hint "Mail Call: Your TNVG-B (Black) has arrived in the deliveries box";
		};
	};
	case 1: {
		if (Wallet < TiGoggles_grn_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", TiGoggles_grn_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TNVG-B (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", TiGoggles_grn_RF ];
			Wallet= (wallet - TiGoggles_grn_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["TiGoggles_grn_RF", 1];
			hint "Mail Call: Your TNVG-B (Green) has arrived in the deliveries box";
		};
	};
	case 2: {
		if (Wallet < TiGoggles_tan_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", TiGoggles_tan_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TNVG-B (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", TiGoggles_tan_RF ];
			Wallet= (wallet - TiGoggles_tan_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["TiGoggles_tan_RF", 1];
			hint "Mail Call: Your TNVG-B (Tan) has arrived in the deliveries box";
		};
	};
};
