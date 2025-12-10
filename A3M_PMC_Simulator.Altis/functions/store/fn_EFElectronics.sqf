switch (TheSelection) do {
	case 0: {
		if (Wallet < EF_LPNVG) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_LPNVG ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered LPNVG for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_LPNVG ];
			Wallet= (wallet - EF_LPNVG);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["EF_LPNVG", 1];
			hint "Mail Call: Your LPNVG has arrived in the deliveries box";
		};
	};
	case 1: {
		if (Wallet < EF_LPNVG_T) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_LPNVG_T ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered LPNVG-T for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_LPNVG_T ];
			Wallet= (wallet - EF_LPNVG_T);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["EF_LPNVG_T", 1];
			hint "Mail Call: Your LPNVG-T has arrived in the deliveries box";
		};
	};
	case 2: {
		if (Wallet < EF_LPNVG_T_Tan) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_LPNVG_T_Tan ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered LPNVG-T (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_LPNVG_T_Tan ];
			Wallet= (wallet - EF_LPNVG_T_Tan);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["EF_LPNVG_T_Tan", 1];
			hint "Mail Call: Your LPNVG-T (Tan) has arrived in the deliveries box";
		};
	};
	case 3: {
		if (Wallet < EF_LPNVG_Tan) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_LPNVG_Tan ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered LPNVG (Tan) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_LPNVG_Tan ];
			Wallet= (wallet - EF_LPNVG_Tan);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["EF_LPNVG_Tan", 1];
			hint "Mail Call: Your LPNVG (Tan) has arrived in the deliveries box";
		};
	};
};
