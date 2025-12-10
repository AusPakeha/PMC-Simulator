switch (TheSelection) do {
	case 0 : {
		if (Wallet < arifle_Katiba_C_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Katiba_C_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Katiba C 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Katiba_C_F ];
			Wallet= (wallet - arifle_Katiba_C_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Katiba_C_F", 1];
			hint "Mail Call: Your Katiba C 6.5mm has arrived in the deliveries box";
		};
	};
	case 1 : {
		if (Wallet < arifle_Katiba_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Katiba_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Katiba F 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Katiba_F ];
			Wallet= (wallet - arifle_Katiba_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Katiba_F", 1];
			hint "Mail Call: Your Katiba F 6.5mm has arrived in the deliveries box";
		};
	};
	case 2 : {
		if (Wallet < arifle_Katiba_GL_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Katiba_GL_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Katiba F + GL 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Katiba_GL_F ];
			Wallet= (wallet - arifle_Katiba_GL_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Katiba_GL_F", 1];
			hint "Mail Call: Your Katiba F + GL 6.5mm has arrived in the deliveries box";
		};
	};
	case 3 : {
		if (Wallet < arifle_Mk20_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Mk20_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Mk20 F 5.56mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Mk20_F ];
			Wallet= (wallet - arifle_Mk20_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Mk20_F", 1];
			hint "Mail Call: Your Mk20 F 5.56mmhas arrived in the deliveries box";
		};
	};
	case 4 : {
		if (Wallet < arifle_Mk20_GL_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Mk20_GL_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Mk20F + GL5.56mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Mk20_GL_F];
			Wallet= (wallet - arifle_Mk20_GL_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Mk20_GL_F", 1];
			hint "Mail Call: Your Mk20F + GL5.56mm has arrived in the deliveries box";
		};
	};
	case 5 : {
		if (Wallet < arifle_Mk20C_plain_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_Mk20C_plain_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Mk20C 5.56mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_Mk20C_plain_F];
			Wallet= (wallet - arifle_Mk20C_plain_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_Mk20C_plain_F", 1];
			hint "Mail Call: Your Mk20C 5.56mm has arrived in the deliveries box";
		};
	};
	case 6 : {
		if (Wallet < arifle_MX_Black_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MX_Black_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX (Black) 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MX_Black_F ];
			Wallet= (wallet - arifle_MX_Black_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MX_Black_F", 1];
			hint "Mail Call: Your MX (Black) 6.5mmhas arrived in the deliveries box";
		};
	};
	case 7 : {
		if (Wallet < arifle_MX_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MX_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-F 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MX_F ];
			Wallet= (wallet - arifle_MX_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MX_F", 1];
			hint "Mail Call: Your MX-F 6.5mm has arrived in the deliveries box";
		};
	};
	case 8 : {
		if (Wallet < arifle_MX_GL_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MX_GL_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-F + GL 6.5mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MX_GL_F ];
			Wallet= (wallet - arifle_MX_GL_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MX_GL_F", 1];
			hint "Mail Call: Your MX-F + GL 6.5mm has arrived in the deliveries box";
		};
	};
	case 9 : {
		if (Wallet < arifle_MX_SW_Black_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MX_SW_Black_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-SW (Black) 6.5mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MX_SW_Black_F];
			Wallet= (wallet - arifle_MX_SW_Black_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MX_SW_Black_F", 1];
			hint "Mail Call: Your MX-SW (Black) 6.5mm has arrived in the deliveries box";
		};
	};
	case 10 : {
		if (Wallet < arifle_MX_SW_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MX_SW_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-SW-F 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MX_SW_F ];
			Wallet= (wallet - arifle_MX_SW_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MX_SW_F", 1];
			hint "Mail Call: Your MX-SW-F 6.5mmhas arrived in the deliveries box";
		};
	};
	case 11 : {
		if (Wallet < arifle_MXC_Black_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MXC_Black_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-C (Black) 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MXC_Black_F ];
			Wallet= (wallet - arifle_MXC_Black_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			hint "Mail Call: Your MX-C (Black) 6.5mm has arrived in the deliveries box";
		};
	};
	case 12 : {
		if (Wallet < arifle_MXC_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MXC_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-C-F 6.5mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MXC_F];
			Wallet= (wallet - arifle_MXC_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MXC_F", 1];
			hint "Mail Call: Your MX-C-F 6.5mm has arrived in the deliveries box";
		};
	};
	case 13 : {
		if (Wallet < arifle_MXM_Black_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MXM_Black_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-M (Black) 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MXM_Black_F ];
			Wallet= (wallet - arifle_MXM_Black_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MXM_Black_F", 1];
			hint "Mail Call: Your MX-M (Black) 6.5mm has arrived in the deliveries box";
		};
	};
	case 14 : {
		if (Wallet < arifle_MXM_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_MXM_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered MX-M -F 6.5mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_MXM_F];
			Wallet= (wallet - arifle_MXM_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_MXM_F", 1];
			hint "Mail Call: Your MX-M -F 6.5mmhas arrived in the deliveries box";
		};
	};
	case 15 : {
		if (Wallet < arifle_SDAR_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_SDAR_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered SDAR 5.56mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_SDAR_F ];
			Wallet= (wallet - arifle_SDAR_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_SDAR_F", 1];
			hint "Mail Call: Your SDAR 5.56mm has arrived in the deliveries box";
		};
	};
	case 16 : {
		if (Wallet < arifle_TRG20_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_TRG20_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TRG-20 5.56mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_TRG20_F ];
			Wallet= (wallet - arifle_TRG20_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_TRG20_F", 1];
			hint "Mail Call: Your TRG-20 5.56mm has arrived in the deliveries box";
		};
	};
	case 17 : {
		if (Wallet < arifle_TRG21_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_TRG21_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TRG-21 5.56mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_TRG21_F ];
			Wallet= (wallet - arifle_TRG21_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_TRG21_F", 1];
			hint "Mail Call: Your TRG-21 5.56mm has arrived in the deliveries box";
		};
	};
	case 18 : {
		if (Wallet < arifle_TRG21_GL_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", arifle_TRG21_GL_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered TRG-21 + GL 5.56mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", arifle_TRG21_GL_F ];
			Wallet= (wallet - arifle_TRG21_GL_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["arifle_TRG21_GL_F", 1];
			hint "Mail Call: Your TRG-21 + GL 5.56mm has arrived in the deliveries box";
		};
	};
	case 19 : {
		if (Wallet < LMG_Mk200_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", LMG_Mk200_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Mk200 6.5mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", LMG_Mk200_F ];
			Wallet= (wallet - LMG_Mk200_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["LMG_Mk200_F", 1];
			hint "Mail Call: Your Mk200 6.5mm has arrived in the deliveries box";
		};
	};
	case 20 : {
		if (Wallet < LMG_Zafir_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", LMG_Zafir_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Zafir 7.62mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", LMG_Zafir_F ];
			Wallet= (wallet - LMG_Zafir_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["LMG_Zafir_F", 1];
			hint "Mail Call: Your Zafir 7.62mm has arrived in the deliveries box";
		};
	};
	case 21 : {
		if (Wallet < srifle_DMR_01_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", srifle_DMR_01_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Rahim 7.62mmfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", srifle_DMR_01_F ];
			Wallet= (wallet - srifle_DMR_01_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			hint "Mail Call: Your Rahim 7.62mm has arrived in the deliveries box";
		};
	};
	case 22 : {
		if (Wallet < srifle_EBR_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", srifle_EBR_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M-14 EBR 7.62mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", srifle_EBR_F];
			Wallet= (wallet - srifle_EBR_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["srifle_EBR_F", 1];
			hint "Mail Call: Your M-14 EBR 7.62mm has arrived in the deliveries box";
		};
	};
	case 23 : {
		if (Wallet < srifle_GM6_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", srifle_GM6_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered GM6 Lynx 12.7mm for $%1.00. Your order will be delivered soon! Check the deliveries box often!", srifle_GM6_F];
			Wallet= (wallet - srifle_GM6_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["srifle_GM6_F", 1];
			hint "Mail Call: Your GM6 Lynx 12.7mm has arrived in the deliveries box";
		};
	};
	case 24 : {
		if (Wallet < srifle_LRR_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", srifle_LRR_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M320 LRR .408 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", srifle_LRR_F];
			Wallet= (wallet - srifle_LRR_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddWeaponCargoGlobal ["srifle_LRR_F", 1];
			hint "Mail Call: Your M320 LRR .408has arrived in the deliveries box";
		};
	};
};
