switch (TheSelection) do {
	case 6: {
		if (Wallet < rhsusf_acc_M2010S) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_M2010S ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Suppressor M2010Sfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_M2010S ];
			Wallet = (Wallet - rhsusf_acc_M2010S);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries addItemCargoGlobal ["rhsusf_acc_M2010S", 1];
			hint "Mail Call: Your Suppressor M2010S has arrived in the deliveries box";
		};
	};
	case 7: {
		if (Wallet < rhsusf_acc_rotex5_grey) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_rotex5_grey ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Suppressor rotex 5 (grey) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_rotex5_grey ];
			Wallet = (Wallet - rhsusf_acc_rotex5_grey);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries addItemCargoGlobal ["rhsusf_acc_rotex5_grey", 1];
			hint "Mail Call: Your Suppressor rotex 5 (grey) has arrived in the deliveries box";
		};
	};
	case 8: {
		if (Wallet < rhsusf_acc_rotex5_tan) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_rotex5_tan ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Suppressor rotex 5 (tan)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_rotex5_tan ];
			Wallet = (Wallet - rhsusf_acc_rotex5_tan);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries addItemCargoGlobal ["rhsusf_acc_rotex5_tan", 1];
			hint "Mail Call: Your Suppressor rotex 5 (tan) has arrived in the deliveries box";
		};
	};
	case 9: {
		if (Wallet < rhsusf_acc_SFMB556) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_SFMB556 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Surfire SFMBfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_SFMB556 ];
			Wallet = (Wallet - rhsusf_acc_SFMB556);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries addItemCargoGlobal ["rhsusf_acc_SFMB556", 1];
			hint "Mail Call: Your Surfire SFMB has arrived in the deliveries box";
		};
	};
	case 10: {
		if (Wallet < rhsusf_acc_SF3P556) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhsusf_acc_SF3P556 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Surfire SF3P rotex 5for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhsusf_acc_SF3P556 ];
			Wallet = (Wallet - rhsusf_acc_SF3P556);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries addItemCargoGlobal ["rhsusf_acc_SF3P556", 1];
			hint "Mail Call: Your Surfire SF3P rotex 5 has arrived in the deliveries box";
		};
	};
};
