switch (TheSelection) do {
	case 0 : {
		if (Wallet < SmokeShellBlue) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellBlue ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Blue Smoke Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellBlue ];
			Wallet= (wallet - SmokeShellBlue);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellBlue", 1];
			hint "Mail Call: Your Blue Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 1 : {
		if (Wallet < SmokeShellGreen) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellGreen ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Green Smoke Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellGreen ];
			Wallet= (wallet - SmokeShellGreen);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellGreen", 1];
			hint "Mail Call: Your Green Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 2 : {
		if (Wallet < SmokeShellOrange) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellOrange];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Orange Smoke Grenadefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellOrange];
			Wallet= (wallet - SmokeShellOrange);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellOrange", 1];
			hint "Mail Call: Your Orange Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 3 : {
		if (Wallet < SmokeShellPurple) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellPurple];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Purple Smoke Grenadefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellPurple];
			Wallet= (wallet - SmokeShellPurple);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellPurple", 1];
			hint "Mail Call: Your Purple Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 4 : {
		if (Wallet < SmokeShellRed) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellRed ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Red Smoke Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellRed ];
			Wallet= (wallet - SmokeShellRed);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellRed", 1];
			hint "Mail Call: Your Red Smoke Grenadehas arrived in the deliveries box";
		};
	};
	case 5 : {
		if (Wallet < SmokeShell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShell ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered White (Standard) Smoke Grenade for $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShell ];
			Wallet= (wallet - SmokeShell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShell", 1];
			hint "Mail Call: Your White (Standard) Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 6 : {
		if (Wallet < SmokeShellYellow) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", SmokeShellYellow];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Yellow Smoke Grenadefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", SmokeShellYellow];
			Wallet= (wallet - SmokeShellYellow);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["SmokeShellYellow", 1];
			hint "Mail Call: Your Yellow Smoke Grenade has arrived in the deliveries box";
		};
	};
	case 7 : {
		if (Wallet < M_1Rnd_SmokeBlue_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokeBlue_Grenade_shell ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Blue) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokeBlue_Grenade_shell ];
			Wallet= (wallet - M_1Rnd_SmokeBlue_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Blue)has arrived in the deliveries box";
		};
	};
	case 8 : {
		if (Wallet < M_1Rnd_SmokeGreen_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokeGreen_Grenade_shell ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokeGreen_Grenade_shell ];
			Wallet= (wallet - M_1Rnd_SmokeGreen_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Green) has arrived in the deliveries box";
		};
	};
	case 9 : {
		if (Wallet < M_1Rnd_SmokeOrange_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokeOrange_Grenade_shell];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Orange) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokeOrange_Grenade_shell];
			Wallet= (wallet - M_1Rnd_SmokeOrange_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Orange) has arrived in the deliveries box";
		};
	};
	case 10 : {
		if (Wallet < M_1Rnd_SmokePurple_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokePurple_Grenade_shell];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Purple) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokePurple_Grenade_shell];
			Wallet= (wallet - M_1Rnd_SmokePurple_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Purple) has arrived in the deliveries box";
		};
	};
	case 11 : {
		if (Wallet < M_1Rnd_SmokeRed_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokeRed_Grenade_shell ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Red)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokeRed_Grenade_shell ];
			Wallet= (wallet - M_1Rnd_SmokeRed_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Red) has arrived in the deliveries box";
		};
	};
	case 12 : {
		if (Wallet < M_1Rnd_Smoke_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_Smoke_Grenade_shell ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_Smoke_Grenade_shell ];
			Wallet= (wallet - M_1Rnd_Smoke_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (White) has arrived in the deliveries box";
		};
	};
	case 13 : {
		if (Wallet < M_1Rnd_SmokeYellow_Grenade_shell) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_1Rnd_SmokeYellow_Grenade_shell];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 40mm Smoke Grenade (Yellow) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_1Rnd_SmokeYellow_Grenade_shell];
			Wallet= (wallet - M_1Rnd_SmokeYellow_Grenade_shell);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 1];
			hint "Mail Call: Your 40mm Smoke Grenade (Yellow) has arrived in the deliveries box";
		};
	};
};
