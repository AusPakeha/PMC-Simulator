switch (TheSelection) do {
	case 30: {
		if (Wallet < B_DuffleBag_Black_NoLogo_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Black_NoLogo_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Duffle Bag (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Black_NoLogo_RF ];
			Wallet= (wallet - B_DuffleBag_Black_NoLogo_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Black_NoLogo_RF", 1];
			hint "Mail Call: Your Duffle Bag (Black) has arrived in the deliveries box";
		};
	};
	case 31: {
		if (Wallet < B_DuffleBag_Sand_NoLogo_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Sand_NoLogo_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Duffle Bag (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Sand_NoLogo_RF ];
			Wallet= (wallet - B_DuffleBag_Sand_NoLogo_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Sand_NoLogo_RF", 1];
			hint "Mail Call: Your Duffle Bag (Coyote) has arrived in the deliveries box";
		};
	};
	case 32: {
		if (Wallet < B_DuffleBag_MTP_NoLogo_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_MTP_NoLogo_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Duffle Bag (MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_MTP_NoLogo_RF ];
			Wallet= (wallet - B_DuffleBag_MTP_NoLogo_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_MTP_NoLogo_RF", 1];
			hint "Mail Call: Your Duffle Bag (MTP) has arrived in the deliveries box";
		};
	};
	case 33: {
		if (Wallet < B_DuffleBag_Olive_NoLogo_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Olive_NoLogo_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Duffle Bag (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Olive_NoLogo_RF ];
			Wallet= (wallet - B_DuffleBag_Olive_NoLogo_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Olive_NoLogo_RF", 1];
			hint "Mail Call: Your Duffle Bag (Olive) has arrived in the deliveries box";
		};
	};
	case 34: {
		if (Wallet < B_DuffleBag_Black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Black_RF ];
			Wallet= (wallet - B_DuffleBag_Black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Black_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Black) has arrived in the deliveries box";
		};
	};
	case 35: {
		if (Wallet < B_DuffleBag_Blue_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Blue_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Blue) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Blue_RF ];
			Wallet= (wallet - B_DuffleBag_Blue_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Blue_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Blue) has arrived in the deliveries box";
		};
	};
	case 36: {
		if (Wallet < B_DuffleBag_Sand_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Sand_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Coyote) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Sand_RF ];
			Wallet= (wallet - B_DuffleBag_Sand_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Sand_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Coyote) has arrived in the deliveries box";
		};
	};
	case 37: {
		if (Wallet < B_DuffleBag_Olive_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Olive_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Olive_RF ];
			Wallet= (wallet - B_DuffleBag_Olive_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Olive_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Olive) has arrived in the deliveries box";
		};
	};
	case 38: {
		if (Wallet < B_DuffleBag_Red_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_Red_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_Red_RF ];
			Wallet= (wallet - B_DuffleBag_Red_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_Red_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Red) has arrived in the deliveries box";
		};
	};
	case 39: {
		if (Wallet < B_DuffleBag_VRANA_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", B_DuffleBag_VRANA_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Sports Duffle Bag (Vrana) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", B_DuffleBag_VRANA_RF ];
			Wallet= (wallet - B_DuffleBag_VRANA_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["B_DuffleBag_VRANA_RF", 1];
			hint "Mail Call: Your Sports Duffle Bag (Vrana) has arrived in the deliveries box";
		};
	};
};
