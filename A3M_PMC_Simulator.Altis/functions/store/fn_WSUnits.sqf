switch (TheSelection) do {
	case 44: {
		if (Wallet < U_lxWS_B_CombatUniform_desert) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_B_CombatUniform_desert ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Combat Fatigues (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_B_CombatUniform_desert ];
			Wallet= (wallet - U_lxWS_B_CombatUniform_desert);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_B_CombatUniform_desert", 1];
			hint "Mail Call: Your Combat Fatigues (Desert) has arrived in the deliveries box";
		};
	};
	case 45: {
		if (Wallet < U_lxWS_B_CombatUniform_desert_tshirt) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_B_CombatUniform_desert_tshirt ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Combat Fatigues (Desert, Tshirt) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_B_CombatUniform_desert_tshirt ];
			Wallet= (wallet - U_lxWS_B_CombatUniform_desert_tshirt);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_B_CombatUniform_desert_tshirt", 1];
			hint "Mail Call: Your Combat Fatigues (Desert, Tshirt) has arrived in the deliveries box";
		};
	};
	case 46: {
		if (Wallet < U_lxWS_B_SFIA_soldier_2_O) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_B_SFIA_soldier_2_O ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Combat Fatigues [SFIA] for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_B_SFIA_soldier_2_O ];
			Wallet= (wallet - U_lxWS_B_SFIA_soldier_2_O);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_B_SFIA_soldier_2_O", 1];
			hint "Mail Call: Your Combat Fatigues [SFIA] has arrived in the deliveries box";
		};
	};
	case 47: {
		if (Wallet < U_lxWS_B_SFIA_soldier_1_O) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_B_SFIA_soldier_1_O ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Combat Fatigues [SFIA] (Rolled Up) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_B_SFIA_soldier_1_O ];
			Wallet= (wallet - U_lxWS_B_SFIA_soldier_1_O);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_B_SFIA_soldier_1_O", 1];
			hint "Mail Call: Your Combat Fatigues [SFIA] (Rolled Up) has arrived in the deliveries box";
		};
	};
	case 48: {
		if (Wallet < U_lxWS_ION_Casual3) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_ION_Casual3 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Contractor Outfit (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_ION_Casual3 ];
			Wallet= (wallet - U_lxWS_ION_Casual3);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_ION_Casual3", 1];
			hint "Mail Call: Your Contractor Outfit (Black) has arrived in the deliveries box";
		};
	};
	case 49: {
		if (Wallet < U_lxWS_ION_Casual6) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_ION_Casual6 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Contractor Outfit (Camo) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_ION_Casual6 ];
			Wallet= (wallet - U_lxWS_ION_Casual6);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_ION_Casual6", 1];
			hint "Mail Call: Your Contractor Outfit (Camo) has arrived in the deliveries box";
		};
	};
	case 50: {
		if (Wallet < U_lxWS_ION_Casual5) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_ION_Casual5 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Contractor Outfit (Peace) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_ION_Casual5 ];
			Wallet= (wallet - U_lxWS_ION_Casual5);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_ION_Casual5", 1];
			hint "Mail Call: Your Contractor Outfit (Peace) has arrived in the deliveries box";
		};
	};
	case 51: {
		if (Wallet < U_lxWS_ION_Casual2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_ION_Casual2 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Contractor Outfit (Red for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_ION_Casual2 ];
			Wallet= (wallet - U_lxWS_ION_Casual2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_ION_Casual2", 1];
			hint "Mail Call: Your Contractor Outfit (Red has arrived in the deliveries box";
		};
	};
	case 52: {
		if (Wallet < U_lxWS_ION_Casual4) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_ION_Casual4 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Contractor Outfit (White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_ION_Casual4 ];
			Wallet= (wallet - U_lxWS_ION_Casual4);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_ION_Casual4", 1];
			hint "Mail Call: Your Contractor Outfit (White) has arrived in the deliveries box";
		};
	};
	case 53: {
		if (Wallet < U_B_CTRG_3_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CTRG_3_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered CTRG Combat Uniform (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CTRG_3_lxWS ];
			Wallet= (wallet - U_B_CTRG_3_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CTRG_3_lxWS", 1];
			hint "Mail Call: Your CTRG Combat Uniform (Desert) has arrived in the deliveries box";
		};
	};
	case 54: {
		if (Wallet < U_B_CTRG_4_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CTRG_4_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered CTRG Stealth Uniform (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CTRG_4_lxWS ];
			Wallet= (wallet - U_B_CTRG_4_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CTRG_4_lxWS", 1];
			hint "Mail Call: Your CTRG Stealth Uniform (Desert) has arrived in the deliveries box";
		};
	};
	case 55: {
		if (Wallet < U_lxWS_B_CombatUniform_desert_vest) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_lxWS_B_CombatUniform_desert_vest ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Recon Fatigues (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_lxWS_B_CombatUniform_desert_vest ];
			Wallet= (wallet - U_lxWS_B_CombatUniform_desert_vest);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_lxWS_B_CombatUniform_desert_vest", 1];
			hint "Mail Call: Your Recon Fatigues (Desert) has arrived in the deliveries box";
		};
	};
};
