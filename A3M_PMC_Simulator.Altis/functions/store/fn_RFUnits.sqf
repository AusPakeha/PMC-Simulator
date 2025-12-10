switch (TheSelection) do {
	case 44: {
		if (Wallet < U_C_PilotJacket_black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_black_RF ];
			Wallet= (wallet - U_C_PilotJacket_black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_black_RF", 1];
			hint "Mail Call: Your Leather Jacket (Black) has arrived in the deliveries box";
		};
	};
	case 45: {
		if (Wallet < U_C_PilotJacket_open_black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_open_black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Black, Open) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_open_black_RF ];
			Wallet= (wallet - U_C_PilotJacket_open_black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_open_black_RF", 1];
			hint "Mail Call: Your Leather Jacket (Black, Open) has arrived in the deliveries box";
		};
	};
	case 46: {
		if (Wallet < U_C_PilotJacket_brown_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_brown_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_brown_RF ];
			Wallet= (wallet - U_C_PilotJacket_brown_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_brown_RF", 1];
			hint "Mail Call: Your Leather Jacket (Brown) has arrived in the deliveries box";
		};
	};
	case 47: {
		if (Wallet < U_C_PilotJacket_open_brown_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_open_brown_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Brown, Open) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_open_brown_RF ];
			Wallet= (wallet - U_C_PilotJacket_open_brown_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_open_brown_RF", 1];
			hint "Mail Call: Your Leather Jacket (Brown, Open) has arrived in the deliveries box";
		};
	};
	case 48: {
		if (Wallet < U_C_PilotJacket_lbrown_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_lbrown_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Light Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_lbrown_RF ];
			Wallet= (wallet - U_C_PilotJacket_lbrown_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_lbrown_RF", 1];
			hint "Mail Call: Your Leather Jacket (Light Brown) has arrived in the deliveries box";
		};
	};
	case 49: {
		if (Wallet < U_C_PilotJacket_open_lbrown_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_PilotJacket_open_lbrown_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Leather Jacket (Light Brown, Open) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_PilotJacket_open_lbrown_RF ];
			Wallet= (wallet - U_C_PilotJacket_open_lbrown_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_PilotJacket_open_lbrown_RF", 1];
			hint "Mail Call: Your Leather Jacket (Light Brown, Open) has arrived in the deliveries box";
		};
	};
};
