switch (TheSelection) do {
	case 111: {
		if (Wallet < H_HelmetAggressor_sb_taiga_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_taiga_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Taiga) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_taiga_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_taiga_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_taiga_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Taiga) has arrived in the deliveries box";
		};
	};
	case 112: {
		if (Wallet < H_HelmetAggressor_sb_geo_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_geo_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Geometric) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_geo_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_geo_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_geo_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Geometric) has arrived in the deliveries box";
		};
	};
	case 113: {
		if (Wallet < H_HelmetAggressor_sb_hex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_hex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_hex_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_hex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_hex_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Hex) has arrived in the deliveries box";
		};
	};
	case 114: {
		if (Wallet < H_HelmetAggressor_sb_khaki_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_khaki_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_khaki_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_khaki_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_khaki_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Khaki) has arrived in the deliveries box";
		};
	};
	case 115: {
		if (Wallet < H_HelmetAggressor_sb_mtp_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_mtp_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, MTP) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_mtp_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_mtp_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_mtp_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, MTP) has arrived in the deliveries box";
		};
	};
	case 116: {
		if (Wallet < H_HelmetAggressor_sb_tna_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_tna_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Tropic) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_tna_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_tna_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_tna_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Tropic) has arrived in the deliveries box";
		};
	};
	case 117: {
		if (Wallet < H_HelmetAggressor_sb_wdl_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetAggressor_sb_wdl_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Avenger Helmet (Shape Breaker, Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetAggressor_sb_wdl_RF ];
			Wallet= (wallet - H_HelmetAggressor_sb_wdl_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetAggressor_sb_wdl_RF", 1];
			hint "Mail Call: Your Avenger Helmet (Shape Breaker, Woodland) has arrived in the deliveries box";
		};
	};
	case 118: {
		if (Wallet < H_HelmetHeavy_Black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Black_RF ];
			Wallet= (wallet - H_HelmetHeavy_Black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Black_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Black) has arrived in the deliveries box";
		};
	};
	case 119: {
		if (Wallet < H_HelmetHeavy_Simple_Black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_Black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Black, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_Black_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_Black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_Black_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Black, No Visor) has arrived in the deliveries box";
		};
	};
	case 120: {
		if (Wallet < H_HelmetHeavy_VisorUp_Black_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_Black_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Black, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_Black_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_Black_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_Black_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Black, Visor Up) has arrived in the deliveries box";
		};
	};
	case 121: {
		if (Wallet < H_HelmetHeavy_GHex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_GHex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Green Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_GHex_RF ];
			Wallet= (wallet - H_HelmetHeavy_GHex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_GHex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Green Hex) has arrived in the deliveries box";
		};
	};
	case 122: {
		if (Wallet < H_HelmetHeavy_Simple_GHex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_GHex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Green Hex, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_GHex_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_GHex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_GHex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Green Hex, No Visor) has arrived in the deliveries box";
		};
	};
	case 123: {
		if (Wallet < H_HelmetHeavy_VisorUp_GHex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_GHex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Green Hex, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_GHex_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_GHex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_GHex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Green Hex, Visor Up) has arrived in the deliveries box";
		};
	};
	case 124: {
		if (Wallet < H_HelmetHeavy_Hex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Hex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Hex_RF ];
			Wallet= (wallet - H_HelmetHeavy_Hex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Hex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Hex) has arrived in the deliveries box";
		};
	};
	case 125: {
		if (Wallet < H_HelmetHeavy_Simple_Hex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_Hex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Hex, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_Hex_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_Hex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_Hex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Hex, No Visor) has arrived in the deliveries box";
		};
	};
	case 126: {
		if (Wallet < H_HelmetHeavy_VisorUp_Hex_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_Hex_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Hex, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_Hex_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_Hex_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_Hex_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Hex, Visor Up) has arrived in the deliveries box";
		};
	};
	case 127: {
		if (Wallet < H_HelmetHeavy_Olive_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Olive_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Olive_RF ];
			Wallet= (wallet - H_HelmetHeavy_Olive_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Olive_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Olive) has arrived in the deliveries box";
		};
	};
	case 128: {
		if (Wallet < H_HelmetHeavy_Simple_Olive_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_Olive_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Olive, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_Olive_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_Olive_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_Olive_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Olive, No Visor) has arrived in the deliveries box";
		};
	};
	case 129: {
		if (Wallet < H_HelmetHeavy_VisorUp_Olive_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_Olive_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Olive, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_Olive_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_Olive_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_Olive_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Olive, Visor Up) has arrived in the deliveries box";
		};
	};
	case 130: {
		if (Wallet < H_HelmetHeavy_Sand_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Sand_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Sand) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Sand_RF ];
			Wallet= (wallet - H_HelmetHeavy_Sand_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Sand_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Sand) has arrived in the deliveries box";
		};
	};
	case 131: {
		if (Wallet < H_HelmetHeavy_Simple_Sand_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_Sand_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Sand, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_Sand_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_Sand_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_Sand_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Sand, No Visor) has arrived in the deliveries box";
		};
	};
	case 132: {
		if (Wallet < H_HelmetHeavy_VisorUp_Sand_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_Sand_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (Sand, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_Sand_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_Sand_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_Sand_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (Sand, Visor Up) has arrived in the deliveries box";
		};
	};
	case 133: {
		if (Wallet < H_HelmetHeavy_White_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_White_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_White_RF ];
			Wallet= (wallet - H_HelmetHeavy_White_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_White_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (White) has arrived in the deliveries box";
		};
	};
	case 134: {
		if (Wallet < H_HelmetHeavy_Simple_White_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_Simple_White_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (White, No Visor) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_Simple_White_RF ];
			Wallet= (wallet - H_HelmetHeavy_Simple_White_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_Simple_White_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (White, No Visor) has arrived in the deliveries box";
		};
	};
	case 135: {
		if (Wallet < H_HelmetHeavy_VisorUp_White_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_HelmetHeavy_VisorUp_White_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Heavy Combat Helmet (White, Visor Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_HelmetHeavy_VisorUp_White_RF ];
			Wallet= (wallet - H_HelmetHeavy_VisorUp_White_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_HelmetHeavy_VisorUp_White_RF", 1];
			hint "Mail Call: Your Heavy Combat Helmet (White, Visor Up) has arrived in the deliveries box";
		};
	};
};
