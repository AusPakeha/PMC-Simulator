switch (TheSelection) do {
	case 2: {
		if (Wallet < ACE_fieldDressing) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_fieldDressing];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Gauze Bandagefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_fieldDressing];
			Wallet = (Wallet - ACE_fieldDressing);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_fieldDressing", 1];
			hint "Mail Call: Your Gauze Bandage has arrived in the deliveries box";
		};
	};
	case 3: {
		if (Wallet < ACE_packingBandage) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_packingBandage];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Packing Bandagefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_packingBandage];
			Wallet = (Wallet - ACE_packingBandage);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_packingBandage", 1];
			hint "Mail Call: Your Packing Bandage has arrived in the deliveries box";
		};
	};
	case 4: {
		if (Wallet < ACE_elasticBandage) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_elasticBandage];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Elastic Bandagefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_elasticBandage];
			Wallet = (Wallet - ACE_elasticBandage);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_elasticBandage", 1];
			hint "Mail Call: Your Elastic Bandage has arrived in the deliveries box";
		};
	};
	case 5: {
		if (Wallet < ACE_tourniquet) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_tourniquet];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Tourniquet for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_tourniquet];
			Wallet = (Wallet - ACE_tourniquet);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_tourniquet", 1];
			hint "Mail Call: Your Tourniquet has arrived in the deliveries box";
		};
	};
	case 6: {
		if (Wallet < ACE_morphine) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_morphine];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Morphine Autoinjectorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_morphine];
			Wallet = (Wallet - ACE_morphine);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_morphine", 1];
			hint "Mail Call: Your Morphine Autoinjector has arrived in the deliveries box";
		};
	};
	case 7: {
		if (Wallet < ACE_atropine) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_atropine];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Atropin Autoinjectorfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_atropine];
			Wallet = (Wallet - ACE_atropine);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_atropine", 1];
			hint "Mail Call: Your Atropin Autoinjector has arrived in the deliveries box";
		};
	};
	case 8: {
		if (Wallet < ACE_epinephrine) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_epinephrine];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Epinephrinefor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_epinephrine];
			Wallet = (Wallet - ACE_epinephrine);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_epinephrine", 1];
			hint "Mail Call: Your Epinephrine has arrived in the deliveries box";
		};
	};
	case 9: {
		if (Wallet < ACE_plasmaIV) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_plasmaIV];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Plasma IV (1000ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_plasmaIV];
			Wallet = (Wallet - ACE_plasmaIV);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_plasmaIV", 1];
			hint "Mail Call: Your Plasma IV (1000ml) has arrived in the deliveries box";
		};
	};
	case 10: {
		if (Wallet < ACE_plasmaIV_500) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_plasmaIV_500];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Plasma IV (500ml)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_plasmaIV_500];
			Wallet = (Wallet - ACE_plasmaIV_500);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_plasmaIV_500", 1];
			hint "Mail Call: Your Plasma IV (500ml) has arrived in the deliveries box";
		};
	};
	case 11: {
		if (Wallet < ACE_plasmaIV_250) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_plasmaIV_250];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Plasma IV (250 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_plasmaIV_250];
			Wallet = (Wallet - ACE_plasmaIV_250);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_plasmaIV_250", 1];
			hint "Mail Call: Your Plasma IV (250 ml) has arrived in the deliveries box";
		};
	};
	case 12: {
		if (Wallet < ACE_bloodIV) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_bloodIV];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Blood IV (1000 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_bloodIV];
			Wallet = (Wallet - ACE_bloodIV);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_bloodIV", 1];
			hint "Mail Call: Your Blood IV (1000 ml) has arrived in the deliveries box";
		};
	};
	case 13: {
		if (Wallet < ACE_bloodIV_500) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_bloodIV_500];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Blood IV (500 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_bloodIV_500];
			Wallet = (Wallet - ACE_bloodIV_500);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_bloodIV_500", 1];
			hint "Mail Call: Your Blood IV (500 ml) has arrived in the deliveries box";
		};
	};
	case 14: {
		if (Wallet < ACE_bloodIV_250) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_bloodIV_250];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Blood IV (250 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_bloodIV_250];
			Wallet = (Wallet - ACE_bloodIV_250);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_bloodIV_250", 1];
			hint "Mail Call: Your Blood IV (250 ml) has arrived in the deliveries box";
		};
	};
	case 15: {
		if (Wallet < ACE_salineIV) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_salineIV];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Saline IV (1000 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_salineIV];
			Wallet = (Wallet - ACE_salineIV);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_salineIV", 1];
			hint "Mail Call: Your Saline IV (1000 ml) has arrived in the deliveries box";
		};
	};
	case 16: {
		if (Wallet < ACE_salineIV_500) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_salineIV_500];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Saline IV (500 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_salineIV_500];
			Wallet = (Wallet - ACE_salineIV_500);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_salineIV_500", 1];
			hint "Mail Call: Your Saline IV (500 ml) has arrived in the deliveries box";
		};
	};
	case 17: {
		if (Wallet < ACE_salineIV_250) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_salineIV_250];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Saline IV (250 ml) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_salineIV_250];
			Wallet = (Wallet - ACE_salineIV_250);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_salineIV_250", 1];
			hint "Mail Call: Your Saline IV (250 ml) has arrived in the deliveries box";
		};
	};
	case 18: {
		if (Wallet < ACE_quikclot) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_quikclot];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered QuikClot Field Dressingfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_quikclot];
			Wallet = (Wallet - ACE_quikclot);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_quikclot", 1];
			hint "Mail Call: Your QuikClot Field Dressing has arrived in the deliveries box";
		};
	};
	case 19: {
		if (Wallet < ACE_personalAidKit) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_personalAidKit];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Personal Aid Kitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_personalAidKit];
			Wallet = (Wallet - ACE_personalAidKit);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_personalAidKit", 1];
			hint "Mail Call: Your Personal Aid Kit has arrived in the deliveries box";
		};
	};
	case 20: {
		if (Wallet < ACE_surgicalKit) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_surgicalKit];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Surgical Kitfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_surgicalKit];
			Wallet = (Wallet - ACE_surgicalKit);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_surgicalKit", 1];
			hint "Mail Call: Your Surgical Kit has arrived in the deliveries box";
		};
	};
	case 21: {
		if (Wallet < ACE_bodyBag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_bodyBag];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Body Bagfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_bodyBag];
			Wallet = (Wallet - ACE_bodyBag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddItemCargoGlobal ["ACE_bodyBag", 1];
			hint "Mail Call: Your Body Bag has arrived in the deliveries box";
		};
	};
};
