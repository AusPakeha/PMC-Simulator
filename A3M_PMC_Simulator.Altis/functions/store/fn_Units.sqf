switch (TheSelection) do {
	case 0: {
		if (Wallet < U_B_CombatUniform_mcam) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_mcam];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 1for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_mcam];
			Wallet = (Wallet - U_B_CombatUniform_mcam);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_mcam", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 1 has arrived in the deliveries box";
		};
	};
	case 1: {
		if (Wallet < U_B_CombatUniform_mcam_tshirt) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_mcam_tshirt];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 2 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_mcam_tshirt];
			Wallet = (Wallet - U_B_CombatUniform_mcam_tshirt);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_mcam_tshirt", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 2 has arrived in the deliveries box";
		};
	};
	case 2: {
		if (Wallet < U_B_CombatUniform_mcam_vest) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_mcam_vest];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 3for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_mcam_vest];
			Wallet = (Wallet - U_B_CombatUniform_mcam_vest);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_mcam_vest", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 3 has arrived in the deliveries box";
		};
	};
	case 3: {
		if (Wallet < U_B_CombatUniform_mcam_worn) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_mcam_worn];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 4for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_mcam_worn];
			Wallet = (Wallet - U_B_CombatUniform_mcam_worn);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_mcam_worn", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 4 has arrived in the deliveries box";
		};
	};
	case 4: {
		if (Wallet < U_B_CombatUniform_sgg) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_sgg];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 5for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_sgg];
			Wallet = (Wallet - U_B_CombatUniform_sgg);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_sgg", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 5 has arrived in the deliveries box";
		};
	};
	case 5: {
		if (Wallet < U_B_CombatUniform_sgg_tshirt) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_sgg_tshirt];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 6for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_sgg_tshirt];
			Wallet = (Wallet - U_B_CombatUniform_sgg_tshirt);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_sgg_tshirt", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 6 has arrived in the deliveries box";
		};
	};
	case 6: {
		if (Wallet < U_B_CombatUniform_sgg_vest) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_sgg_vest];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 7 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_sgg_vest];
			Wallet = (Wallet - U_B_CombatUniform_sgg_vest);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_sgg_vest", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 7 has arrived in the deliveries box";
		};
	};
	case 7: {
		if (Wallet < U_B_CombatUniform_wdl) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_wdl];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 8 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_wdl];
			Wallet = (Wallet - U_B_CombatUniform_wdl);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_wdl", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 8 has arrived in the deliveries box";
		};
	};
	case 8: {
		if (Wallet < U_B_CombatUniform_wdl_tshirt) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_wdl_tshirt];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 9 for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_wdl_tshirt];
			Wallet = (Wallet - U_B_CombatUniform_wdl_tshirt);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_wdl_tshirt", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 9has arrived in the deliveries box";
		};
	};
	case 9: {
		if (Wallet < U_B_CombatUniform_wdl_vest) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CombatUniform_wdl_vest];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. MultiCam Uni 10for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CombatUniform_wdl_vest];
			Wallet = (Wallet - U_B_CombatUniform_wdl_vest);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CombatUniform_wdl_vest", 1];
			hint "Mail Call: Your U.S. MultiCam Uni 10 has arrived in the deliveries box";
		};
	};
	case 10: {
		if (Wallet < U_B_CTRG_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CTRG_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.K. Multicam Uni 1for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CTRG_1];
			Wallet = (Wallet - U_B_CTRG_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CTRG_1", 1];
			hint "Mail Call: Your U.K. Multicam Uni 1 has arrived in the deliveries box";
		};
	};
	case 11: {
		if (Wallet < U_B_CTRG_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CTRG_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.K. Multicam Uni 2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CTRG_2];
			Wallet = (Wallet - U_B_CTRG_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CTRG_2", 1];
			hint "Mail Call: Your U.K. Multicam Uni 2 has arrived in the deliveries box";
		};
	};
	case 12: {
		if (Wallet < U_B_CTRG_3) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_CTRG_3];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.K. Multicam Uni 3for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_CTRG_3];
			Wallet = (Wallet - U_B_CTRG_3);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_CTRG_3", 1];
			hint "Mail Call: Your U.K. Multicam Uni 3 has arrived in the deliveries box";
		};
	};
	case 13: {
		if (Wallet < U_B_GhillieSuit) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_GhillieSuit];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Marksman Partial Ghillie Suitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_GhillieSuit];
			Wallet = (Wallet - U_B_GhillieSuit);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_GhillieSuit", 1];
			hint "Mail Call: Your Marksman Partial Ghillie Suit has arrived in the deliveries box";
		};
	};
	case 14: {
		if (Wallet < U_B_HeliPilotCoveralls) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_HeliPilotCoveralls];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Pilot Coveralls (Heli)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_HeliPilotCoveralls];
			Wallet = (Wallet - U_B_HeliPilotCoveralls);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_HeliPilotCoveralls", 1];
			hint "Mail Call: Your Pilot Coveralls (Heli) has arrived in the deliveries box";
		};
	};
	case 15: {
		if (Wallet < U_B_PilotCoveralls) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_PilotCoveralls];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Flight Suitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_PilotCoveralls];
			Wallet = (Wallet - U_B_PilotCoveralls);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_PilotCoveralls", 1];
			hint "Mail Call: Your Flight Suit has arrived in the deliveries box";
		};
	};
	case 16: {
		if (Wallet < U_B_SpecopsUniform_sgg) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_B_SpecopsUniform_sgg];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered U.S. Specops Uni 1for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_B_SpecopsUniform_sgg];
			Wallet = (Wallet - U_B_SpecopsUniform_sgg);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_B_SpecopsUniform_sgg", 1];
			hint "Mail Call: Your U.S. Specops Uni 1 has arrived in the deliveries box";
		};
	};
	case 17: {
		if (Wallet < U_BG_Guerilla1_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla1_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 1for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla1_1];
			Wallet = (Wallet - U_BG_Guerilla1_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla1_1", 1];
			hint "Mail Call: Your Casual Combat 1 has arrived in the deliveries box";
		};
	};
	case 18: {
		if (Wallet < U_BG_Guerilla2_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla2_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 2for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla2_1];
			Wallet = (Wallet - U_BG_Guerilla2_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla2_1", 1];
			hint "Mail Call: Your Casual Combat 2 has arrived in the deliveries box";
		};
	};
	case 19: {
		if (Wallet < U_BG_Guerilla2_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla2_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 3for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla2_2];
			Wallet = (Wallet - U_BG_Guerilla2_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla2_2", 1];
			hint "Mail Call: Your Casual Combat 3 has arrived in the deliveries box";
		};
	};
	case 20: {
		if (Wallet < U_BG_Guerilla2_3) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla2_3];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 4for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla2_3];
			Wallet = (Wallet - U_BG_Guerilla2_3);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla2_3", 1];
			hint "Mail Call: Your Casual Combat 4 has arrived in the deliveries box";
		};
	};
	case 21: {
		if (Wallet < U_BG_Guerilla3_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla3_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 5for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla3_1];
			Wallet = (Wallet - U_BG_Guerilla3_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla3_1", 1];
			hint "Mail Call: Your Casual Combat 5 has arrived in the deliveries box";
		};
	};
	case 22: {
		if (Wallet < U_BG_Guerilla3_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_Guerilla3_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 6for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_Guerilla3_2];
			Wallet = (Wallet - U_BG_Guerilla3_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_Guerilla3_2", 1];
			hint "Mail Call: Your Casual Combat 6 has arrived in the deliveries box";
		};
	};
	case 23: {
		if (Wallet < U_BG_leader) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_BG_leader];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 7for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_BG_leader];
			Wallet = (Wallet - U_BG_leader);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_BG_leader", 1];
			hint "Mail Call: Your Casual Combat 7 has arrived in the deliveries box";
		};
	};
	case 24: {
		if (Wallet < U_C_HunterBody_brn) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_HunterBody_brn];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 8for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_HunterBody_brn];
			Wallet = (Wallet - U_C_HunterBody_brn);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_HunterBody_brn", 1];
			hint "Mail Call: Your Casual Combat 8 has arrived in the deliveries box";
		};
	};
	case 25: {
		if (Wallet < U_C_HunterBody_grn) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_C_HunterBody_grn];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 9for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_C_HunterBody_grn];
			Wallet = (Wallet - U_C_HunterBody_grn);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_C_HunterBody_grn", 1];
			hint "Mail Call: Your Casual Combat 9 has arrived in the deliveries box";
		};
	};
	case 26: {
		if (Wallet < U_I_CombatUniform) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_I_CombatUniform];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 10for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_I_CombatUniform];
			Wallet = (Wallet - U_I_CombatUniform);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_I_CombatUniform", 1];
			hint "Mail Call: Your Casual Combat 10 has arrived in the deliveries box";
		};
	};
	case 27: {
		if (Wallet < U_I_CombatUniform_shortsleeve) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_I_CombatUniform_shortsleeve];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 11for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_I_CombatUniform_shortsleeve];
			Wallet = (Wallet - U_I_CombatUniform_shortsleeve);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_I_CombatUniform_shortsleeve", 1];
			hint "Mail Call: Your Casual Combat 11 has arrived in the deliveries box";
		};
	};
	case 28: {
		if (Wallet < U_I_CombatUniform_tshirt) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_I_CombatUniform_tshirt];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 12for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_I_CombatUniform_tshirt];
			Wallet = (Wallet - U_I_CombatUniform_tshirt);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_I_CombatUniform_tshirt", 1];
			hint "Mail Call: Your Casual Combat 12 has arrived in the deliveries box";
		};
	};
	case 29: {
		if (Wallet < U_I_G_resistanceLeader_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_I_G_resistanceLeader_F];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 13for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_I_G_resistanceLeader_F];
			Wallet = (Wallet - U_I_G_resistanceLeader_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_I_G_resistanceLeader_F", 1];
			hint "Mail Call: Your Casual Combat 13 has arrived in the deliveries box";
		};
	};
	case 30: {
		if (Wallet < U_IG_Guerilla1_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla1_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 14for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla1_1];
			Wallet = (Wallet - U_IG_Guerilla1_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla1_1", 1];
			hint "Mail Call: Your Casual Combat 14 has arrived in the deliveries box";
		};
	};
	case 31: {
		if (Wallet < U_IG_Guerilla2_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla2_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 15for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla2_1];
			Wallet = (Wallet - U_IG_Guerilla2_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla2_1", 1];
			hint "Mail Call: Your Casual Combat 15 has arrived in the deliveries box";
		};
	};
	case 32: {
		if (Wallet < U_IG_Guerilla2_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla2_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 16for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla2_2];
			Wallet = (Wallet - U_IG_Guerilla2_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla2_2", 1];
			hint "Mail Call: Your Casual Combat 16 has arrived in the deliveries box";
		};
	};
	case 33: {
		if (Wallet < U_IG_Guerilla2_3) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla2_3];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 17for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla2_3];
			Wallet = (Wallet - U_IG_Guerilla2_3);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla2_3", 1];
			hint "Mail Call: Your Casual Combat 17 has arrived in the deliveries box";
		};
	};
	case 34: {
		if (Wallet < U_IG_Guerilla3_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla3_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 18for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla3_1];
			Wallet = (Wallet - U_IG_Guerilla3_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla3_1", 1];
			hint "Mail Call: Your Casual Combat 18 has arrived in the deliveries box";
		};
	};
	case 35: {
		if (Wallet < U_IG_Guerilla3_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_Guerilla3_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 19for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_Guerilla3_2];
			Wallet = (Wallet - U_IG_Guerilla3_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_Guerilla3_2", 1];
			hint "Mail Call: Your Casual Combat 19 has arrived in the deliveries box";
		};
	};
	case 36: {
		if (Wallet < U_IG_leader) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_IG_leader];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 20for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_IG_leader];
			Wallet = (Wallet - U_IG_leader);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_IG_leader", 1];
			hint "Mail Call: Your Casual Combat 20 has arrived in the deliveries box";
		};
	};
	case 37: {
		if (Wallet < U_OG_Guerilla1_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla1_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 21for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla1_1];
			Wallet = (Wallet - U_OG_Guerilla1_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla1_1", 1];
			hint "Mail Call: Your Casual Combat 21 has arrived in the deliveries box";
		};
	};
	case 38: {
		if (Wallet < U_OG_Guerilla2_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla2_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 22for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla2_1];
			Wallet = (Wallet - U_OG_Guerilla2_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla2_1", 1];
			hint "Mail Call: Your Casual Combat 22 has arrived in the deliveries box";
		};
	};
	case 39: {
		if (Wallet < U_OG_Guerilla2_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla2_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 23for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla2_2];
			Wallet = (Wallet - U_OG_Guerilla2_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla2_2", 1];
			hint "Mail Call: Your Casual Combat 23 has arrived in the deliveries box";
		};
	};
	case 40: {
		if (Wallet < U_OG_Guerilla2_3) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla2_3];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 24for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla2_3];
			Wallet = (Wallet - U_OG_Guerilla2_3);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla2_3", 1];
			hint "Mail Call: Your Casual Combat 24 has arrived in the deliveries box";
		};
	};
	case 41: {
		if (Wallet < U_OG_Guerilla3_1) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla3_1];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 25for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla3_1];
			Wallet = (Wallet - U_OG_Guerilla3_1);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla3_1", 1];
			hint "Mail Call: Your Casual Combat 25 has arrived in the deliveries box";
		};
	};
	case 42: {
		if (Wallet < U_OG_Guerilla3_2) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_Guerilla3_2];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 26for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_Guerilla3_2];
			Wallet = (Wallet - U_OG_Guerilla3_2);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_Guerilla3_2", 1];
			hint "Mail Call: Your Casual Combat 26 has arrived in the deliveries box";
		};
	};
	case 43: {
		if (Wallet < U_OG_leader) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", U_OG_leader];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Casual Combat 27for $%1.00. Your order will be delivered soon! Check the deliveries box often!", U_OG_leader];
			Wallet = (Wallet - U_OG_leader);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["U_OG_leader", 1];
			hint "Mail Call: Your Casual Combat 27 has arrived in the deliveries box";
		};
	};
};
