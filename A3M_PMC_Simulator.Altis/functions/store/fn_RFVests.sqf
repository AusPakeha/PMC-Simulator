switch (TheSelection) do {
	case 33: {
		if (Wallet < V_PalteCarrierLite_black_noFlag_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_PalteCarrierLite_black_noFlag_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Carrier Lite Rig (Black, No Flag) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_PalteCarrierLite_black_noFlag_RF ];
			Wallet = (Wallet - V_PalteCarrierLite_black_noFlag_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["V_PalteCarrierLite_black_noFlag_RF", 1];
			hint "Mail Call: Your Carrier Lite Rig (Black, No Flag) has arrived in the deliveries box";
		};
	};
	case 34: {
		if (Wallet < V_TacVest_rig_blk_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_rig_blk_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Tactical Vest Rig (Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_rig_blk_RF ];
			Wallet = (Wallet - V_TacVest_rig_blk_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["V_TacVest_rig_blk_RF", 1];
			hint "Mail Call: Your Tactical Vest Rig (Black) has arrived in the deliveries box";
		};
	};
	case 35: {
		if (Wallet < V_TacVest_rig_khk_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_rig_khk_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Tactical Vest Rig (Khaki) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_rig_khk_RF ];
			Wallet = (Wallet - V_TacVest_rig_khk_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["V_TacVest_rig_khk_RF", 1];
			hint "Mail Call: Your Tactical Vest Rig (Khaki) has arrived in the deliveries box";
		};
	};
	case 36: {
		if (Wallet < V_TacVest_rig_oli_RF) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", V_TacVest_rig_oli_RF ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Tactical Vest Rig (Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", V_TacVest_rig_oli_RF ];
			Wallet = (Wallet - V_TacVest_rig_oli_RF);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["V_TacVest_rig_oli_RF", 1];
			hint "Mail Call: Your Tactical Vest Rig (Olive) has arrived in the deliveries box";
		};
	};
};
