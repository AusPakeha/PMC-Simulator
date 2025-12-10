switch (TheSelection) do {
	case 0: {
		if (Wallet < FirstAidKit) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", FirstAidKit ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered First Aid Kitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", FirstAidKit ];
			Wallet = (Wallet - FirstAidKit);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["FirstAidKit", 1];
			hint "Mail Call: Your First Aid Kit has arrived in the deliveries box";
		};
	};
	case 1: {
		if (Wallet < Medikit) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Medikit ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Medikitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", Medikit ];
			Wallet = (Wallet - Medikit);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["Medikit", 1];
			hint "Mail Call: Your Medikit has arrived in the deliveries box";
		};
	};
};
