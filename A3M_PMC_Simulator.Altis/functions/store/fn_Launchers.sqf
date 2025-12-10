switch (TheSelection) do {
	case 0 : {
		if (Wallet < launch_I_Titan_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", launch_I_Titan_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Titan Launcher (Full Size) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", launch_I_Titan_F];
			Wallet= (wallet - launch_I_Titan_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["launch_I_Titan_F", 1];
			hint "Mail Call: Your Titan Launcher (Full Size) has arrived in the deliveries box";
		};
	};
	case 1 : {
		if (Wallet < launch_I_Titan_short_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", launch_I_Titan_short_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Titan Launcher Compact for $%1.00. Your order will be delivered soon! Check the deliveries box often!", launch_I_Titan_short_F ];
			Wallet= (wallet - launch_I_Titan_short_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["launch_I_Titan_short_F", 1];
			hint "Mail Call: Your Titan Launcher Compact has arrived in the deliveries box";
		};
	};
	case 2 : {
		if (Wallet < launch_NLAW_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", launch_NLAW_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered NLAWfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", launch_NLAW_F ];
			Wallet= (wallet - launch_NLAW_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["launch_NLAW_F", 1];
			hint "Mail Call: Your NLAW has arrived in the deliveries box";
		};
	};
	case 3 : {
		if (Wallet < launch_RPG32_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", launch_RPG32_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RPG-32 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", launch_RPG32_F ];
			Wallet= (wallet - launch_RPG32_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["launch_RPG32_F", 1];
			hint "Mail Call: Your RPG-32 has arrived in the deliveries box";
		};
	};
	case 4 : {
		if (Wallet < NLAW_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", NLAW_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered PCMLfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", NLAW_F ];
			Wallet= (wallet - NLAW_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["NLAW_F", 1];
			hint "Mail Call: Your PCML has arrived in the deliveries box";
		};
	};
	case 5 : {
		if (Wallet < Titan_AP) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Titan_AP];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Titan AP Rocket for $%1.00. Your order will be delivered soon! Check the deliveries box often!", Titan_AP];
			Wallet= (wallet - Titan_AP);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["Titan_AP", 1];
			hint "Mail Call: Your Titan AP Rocket has arrived in the deliveries box";
		};
	};
	case 6 : {
		if (Wallet < Titan_AT) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Titan_AT];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have orderedTitan AT Rocket for $%1.00. Your order will be delivered soon! Check the deliveries box often!", Titan_AT];
			Wallet= (wallet - Titan_AT);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["Titan_AT", 1];
			hint "Mail Call: Your Titan AT Rocket has arrived in the deliveries box";
		};
	};
	case 7 : {
		if (Wallet < Titan_AA) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", Titan_AA];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have orderedTitan AA Rocket for $%1.00. Your order will be delivered soon! Check the deliveries box often!", Titan_AA];
			Wallet= (wallet - Titan_AA);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["Titan_AA", 1];
			hint "Mail Call: Your Titan AA Rocket has arrived in the deliveries box";
		};
	};
	case 8 : {
		if (Wallet < RPG32_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", RPG32_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have orderedRPG 32 Rocket for $%1.00. Your order will be delivered soon! Check the deliveries box often!", RPG32_F ];
			Wallet= (wallet - RPG32_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["RPG32_F", 1];
			hint "Mail Call: Your RPG 32 Rockethas arrived in the deliveries box";
		};
	};
	case 9 : {
		if (Wallet < RPG32_HE_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", RPG32_HE_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have orderedRPG 32 High Explosive Rocketfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", RPG32_HE_F ];
			Wallet= (wallet - RPG32_HE_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlob al ["RPG32_HE_F", 1];
			hint "Mail Call: Your RPG 32 High Explosive Rocket has arrived in the deliveries box";
		};
	};
};
