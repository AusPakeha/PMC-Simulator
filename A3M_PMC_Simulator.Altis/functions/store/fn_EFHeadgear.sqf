switch (TheSelection) do {
case 111: {
		if (Wallet < EF_H_Booniehat_Des) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_Booniehat_Des ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Booniehat (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_Booniehat_Des ];
			Wallet= (wallet - EF_H_Booniehat_Des);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_Booniehat_Des", 1];
			hint "Mail Call: Your Booniehat (Desert) has arrived in the deliveries box";
		};
	};
	case 112: {
		if (Wallet < EF_H_Booniehat_Wdl) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_Booniehat_Wdl ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Booniehat (Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_Booniehat_Wdl ];
			Wallet= (wallet - EF_H_Booniehat_Wdl);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_Booniehat_Wdl", 1];
			hint "Mail Call: Your Booniehat (Woodland) has arrived in the deliveries box";
		};
	};
	case 113: {
		if (Wallet < EF_H_Cap_Navy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_Cap_Navy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Cap (Navy) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_Cap_Navy ];
			Wallet= (wallet - EF_H_Cap_Navy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_Cap_Navy", 1];
			hint "Mail Call: Your Cap (Navy) has arrived in the deliveries box";
		};
	};
	case 114: {
		if (Wallet < EF_H_Cap_Takmyr) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_Cap_Takmyr ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Cap (USS Takmyr) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_Cap_Takmyr ];
			Wallet= (wallet - EF_H_Cap_Takmyr);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_Cap_Takmyr", 1];
			hint "Mail Call: Your Cap (USS Takmyr) has arrived in the deliveries box";
		};
	};
	case 115: {
		if (Wallet < EF_H_HelmetB_light_black_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_black_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Black, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_black_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_black_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_black_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Black, Slick) has arrived in the deliveries box";
		};
	};
	case 116: {
		if (Wallet < EF_H_HelmetB_light_desert_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_desert_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Desert, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_desert_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_desert_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_desert_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Desert, Slick) has arrived in the deliveries box";
		};
	};
	case 117: {
		if (Wallet < EF_H_HelmetB_light_grass_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_grass_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Grass, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_grass_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_grass_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_grass_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Grass, Slick) has arrived in the deliveries box";
		};
	};
	case 118: {
		if (Wallet < EF_H_HelmetB_light_sand_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_sand_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Sand, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_sand_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_sand_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_sand_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Sand, Slick) has arrived in the deliveries box";
		};
	};
	case 119: {
		if (Wallet < EF_H_HelmetB_light_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Slick) has arrived in the deliveries box";
		};
	};
	case 120: {
		if (Wallet < EF_H_HelmetB_light_tna_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_tna_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Tropic, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_tna_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_tna_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_tna_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Tropic, Slick) has arrived in the deliveries box";
		};
	};
	case 121: {
		if (Wallet < EF_H_HelmetB_light_wdl_slick) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_HelmetB_light_wdl_slick ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Light Combat Helmet (Woodland, Slick) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_HelmetB_light_wdl_slick ];
			Wallet= (wallet - EF_H_HelmetB_light_wdl_slick);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_HelmetB_light_wdl_slick", 1];
			hint "Mail Call: Your Light Combat Helmet (Woodland, Slick) has arrived in the deliveries box";
		};
	};
	case 122: {
		if (Wallet < EF_H_MCH) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH ];
			Wallet= (wallet - EF_H_MCH);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH", 1];
			hint "Mail Call: Your Marine Combat Helmet has arrived in the deliveries box";
		};
	};
	case 123: {
		if (Wallet < EF_H_MCH_Basic) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_Basic ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_Basic ];
			Wallet= (wallet - EF_H_MCH_Basic);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_Basic", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic) has arrived in the deliveries box";
		};
	};
	case 124: {
		if (Wallet < EF_H_MCH_BasicNet_Black) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_BasicNet_Black ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_BasicNet_Black ];
			Wallet= (wallet - EF_H_MCH_BasicNet_Black);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_BasicNet_Black", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic, Black) has arrived in the deliveries box";
		};
	};
	case 125: {
		if (Wallet < EF_H_MCH_BasicNet_Coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_BasicNet_Coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic, Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_BasicNet_Coy ];
			Wallet= (wallet - EF_H_MCH_BasicNet_Coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_BasicNet_Coy", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic, Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 126: {
		if (Wallet < EF_H_MCH_BasicNet_Des) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_BasicNet_Des ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic, Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_BasicNet_Des ];
			Wallet= (wallet - EF_H_MCH_BasicNet_Des);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_BasicNet_Des", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic, Desert) has arrived in the deliveries box";
		};
	};
	case 127: {
		if (Wallet < EF_H_MCH_BasicNet_Olive) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_BasicNet_Olive ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic, Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_BasicNet_Olive ];
			Wallet= (wallet - EF_H_MCH_BasicNet_Olive);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_BasicNet_Olive", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic, Olive) has arrived in the deliveries box";
		};
	};
	case 128: {
		if (Wallet < EF_H_MCH_BasicNet_Wdl) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_BasicNet_Wdl ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Basic, Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_BasicNet_Wdl ];
			Wallet= (wallet - EF_H_MCH_BasicNet_Wdl);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_BasicNet_Wdl", 1];
			hint "Mail Call: Your Marine Combat Helmet (Basic, Woodland) has arrived in the deliveries box";
		};
	};
	case 129: {
		if (Wallet < EF_H_MCH_Full) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_Full ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_Full ];
			Wallet= (wallet - EF_H_MCH_Full);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_Full", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full) has arrived in the deliveries box";
		};
	};
	case 130: {
		if (Wallet < EF_H_MCH_FullCamo_Black) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_FullCamo_Black ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_FullCamo_Black ];
			Wallet= (wallet - EF_H_MCH_FullCamo_Black);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_FullCamo_Black", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full, Black) has arrived in the deliveries box";
		};
	};
	case 131: {
		if (Wallet < EF_H_MCH_FullCamo_Coy) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_FullCamo_Coy ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full, Coyote Brown) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_FullCamo_Coy ];
			Wallet= (wallet - EF_H_MCH_FullCamo_Coy);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_FullCamo_Coy", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full, Coyote Brown) has arrived in the deliveries box";
		};
	};
	case 132: {
		if (Wallet < EF_H_MCH_FullCamo_Des) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_FullCamo_Des ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full, Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_FullCamo_Des ];
			Wallet= (wallet - EF_H_MCH_FullCamo_Des);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_FullCamo_Des", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full, Desert) has arrived in the deliveries box";
		};
	};
	case 133: {
		if (Wallet < EF_H_MCH_FullCamo_Olive) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_FullCamo_Olive ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full, Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_FullCamo_Olive ];
			Wallet= (wallet - EF_H_MCH_FullCamo_Olive);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_FullCamo_Olive", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full, Olive) has arrived in the deliveries box";
		};
	};
	case 134: {
		if (Wallet < EF_H_MCH_FullCamo_Wdl) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_MCH_FullCamo_Wdl ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Combat Helmet (Full, Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_MCH_FullCamo_Wdl ];
			Wallet= (wallet - EF_H_MCH_FullCamo_Wdl);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_MCH_FullCamo_Wdl", 1];
			hint "Mail Call: Your Marine Combat Helmet (Full, Woodland) has arrived in the deliveries box";
		};
	};
	case 135: {
		if (Wallet < EF_H_Protecta) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_Protecta ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Protecta Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_Protecta ];
			Wallet= (wallet - EF_H_Protecta);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_Protecta", 1];
			hint "Mail Call: Your Protecta Headset has arrived in the deliveries box";
		};
	};
	case 136: {
		if (Wallet < EF_H_UtilityCap_Des) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_UtilityCap_Des ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Utility Cap (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_UtilityCap_Des ];
			Wallet= (wallet - EF_H_UtilityCap_Des);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_UtilityCap_Des", 1];
			hint "Mail Call: Your Marine Utility Cap (Desert) has arrived in the deliveries box";
		};
	};
	case 137: {
		if (Wallet < EF_H_UtilityCap_Wdl) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", EF_H_UtilityCap_Wdl ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marine Utility Cap (Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", EF_H_UtilityCap_Wdl ];
			Wallet= (wallet - EF_H_UtilityCap_Wdl);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["EF_H_UtilityCap_Wdl", 1];
			hint "Mail Call: Your Marine Utility Cap (Woodland) has arrived in the deliveries box";
		};
	};
};
