switch (TheSelection) do {
	case 14: {
		if (Wallet < rhs_vg40op_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_vg40op_white ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered VOG-40 (White Flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_vg40op_white ];
			Wallet = (Wallet - rhs_vg40op_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_vg40op_white", 1];
			hint "Mail Call: Your VOG-40 (White Flare) has arrived in the deliveries box";
		};
	};
	case 15: {
		if (Wallet < rhs_vg40op_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_vg40op_green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered VOG-40 (Green Flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_vg40op_green ];
			Wallet = (Wallet - rhs_vg40op_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_vg40op_green", 1];
			hint "Mail Call: Your VOG-40 (Green Flare) has arrived in the deliveries box";
		};
	};
	case 16: {
		if (Wallet < rhs_vg40op_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_vg40op_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered VOG-40 (Red Flare)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_vg40op_red ];
			Wallet = (Wallet - rhs_vg40op_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_vg40op_red", 1];
			hint "Mail Call: Your VOG-40 (Red Flare) has arrived in the deliveries box";
		};
	};
	case 17: {
		if (Wallet < rhs_GRD40_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_GRD40_white ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered GRD-40 (White Smoke)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_GRD40_white ];
			Wallet = (Wallet - rhs_GRD40_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_GRD40_white", 1];
			hint "Mail Call: Your GRD-40 (White Smoke) has arrived in the deliveries box";
		};
	};
	case 18: {
		if (Wallet < rhs_GRD40_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_GRD40_green];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered GRD-40 (Green Smoke)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_GRD40_green];
			Wallet = (Wallet - rhs_GRD40_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_GRD40_green", 1];
			hint "Mail Call: Your GRD-40 (Green Smoke) has arrived in the deliveries box";
		};
	};
	case 19: {
		if (Wallet < rhs_GRD40_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_GRD40_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered GRD-40 (Red Smoke)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_GRD40_red ];
			Wallet = (Wallet - rhs_GRD40_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_GRD40_red", 1];
			hint "Mail Call: Your GRD-40 (Red Smoke) has arrived in the deliveries box";
		};
	};
	case 20: {
		if (Wallet < rhs_weap_rsp30_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rsp30_white];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RSP (White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rsp30_white];
			Wallet = (Wallet - rhs_weap_rsp30_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_weap_rsp30_white", 1];
			hint "Mail Call: Your RSP (White) has arrived in the deliveries box";
		};
	};
	case 21: {
		if (Wallet < rhs_weap_rsp30_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rsp30_green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RSP (Green) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rsp30_green ];
			Wallet = (Wallet - rhs_weap_rsp30_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_weap_rsp30_green", 1];
			hint "Mail Call: Your RSP (Green) has arrived in the deliveries box";
		};
	};
	case 22: {
		if (Wallet < rhs_weap_rsp30_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_weap_rsp30_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RSP (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_weap_rsp30_red ];
			Wallet = (Wallet - rhs_weap_rsp30_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_weap_rsp30_red", 1];
			hint "Mail Call: Your RSP (Red) has arrived in the deliveries box";
		};
	};
	case 23: {
		if (Wallet < rhs_mag_M585_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M585_white ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M585 (White flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M585_white ];
			Wallet = (Wallet - rhs_mag_M585_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M585_white", 1];
			hint "Mail Call: Your M585 (White flare) has arrived in the deliveries box";
		};
	};
	case 24: {
		if (Wallet < rhs_mag_M661_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M661_green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M661 (Green flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M661_green ];
			Wallet = (Wallet - rhs_mag_M661_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M661_green", 1];
			hint "Mail Call: Your M661 (Green flare) has arrived in the deliveries box";
		};
	};
	case 25: {
		if (Wallet < rhs_mag_M662_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M662_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M662 (Red flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M662_red ];
			Wallet = (Wallet - rhs_mag_M662_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M662_red", 1];
			hint "Mail Call: Your M662 (Red flare) has arrived in the deliveries box";
		};
	};
	case 26: {
		if (Wallet < rhs_mag_M713_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M713_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M713 (Red Smoke)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M713_red ];
			Wallet = (Wallet - rhs_mag_M713_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M713_red", 1];
			hint "Mail Call: Your M713 (Red Smoke) has arrived in the deliveries box";
		};
	};
	case 27: {
		if (Wallet < rhs_mag_M714_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M714_white ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M714 (White Smoke) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M714_white ];
			Wallet = (Wallet - rhs_mag_M714_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M714_white", 1];
			hint "Mail Call: Your M714 (White Smoke) has arrived in the deliveries box";
		};
	};
	case 28: {
		if (Wallet < rhs_mag_M715_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M715_green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M715 (Green Smoke) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M715_green ];
			Wallet = (Wallet - rhs_mag_M715_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M715_green", 1];
			hint "Mail Call: Your M715 (Green Smoke) has arrived in the deliveries box";
		};
	};
	case 29: {
		if (Wallet < rhs_mag_M716_yellow) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_M716_yellow];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M716 (Yellow Smoke) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_M716_yellow];
			Wallet = (Wallet - rhs_mag_M716_yellow);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_M716_yellow", 1];
			hint "Mail Call: Your M716 (Yellow Smoke) has arrived in the deliveries box";
		};
	};
	case 30: {
		if (Wallet < rhs_mag_an_m8hc) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_an_m8hc];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M8HC Smoke (white) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_an_m8hc];
			Wallet = (Wallet - rhs_mag_an_m8hc);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_an_m8hc", 1];
			hint "Mail Call: Your M8HC Smoke (white) has arrived in the deliveries box";
		};
	};
	case 31: {
		if (Wallet < rhs_mag_m18_purple) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m18_purple];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M18 Smoke (Purple) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m18_purple];
			Wallet = (Wallet - rhs_mag_m18_purple);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_m18_purple", 1];
			hint "Mail Call: Your M18 Smoke (Purple) has arrived in the deliveries box";
		};
	};
	case 32: {
		if (Wallet < rhs_mag_m18_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m18_green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M18 Smoke (Green)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m18_green ];
			Wallet = (Wallet - rhs_mag_m18_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_m18_green", 1];
			hint "Mail Call: Your M18 Smoke (Green) has arrived in the deliveries box";
		};
	};
	case 33: {
		if (Wallet < rhs_mag_m18_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m18_red ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M18 Smoke (Red) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m18_red ];
			Wallet = (Wallet - rhs_mag_m18_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_m18_red", 1];
			hint "Mail Call: Your M18 Smoke (Red) has arrived in the deliveries box";
		};
	};
	case 34: {
		if (Wallet < rhs_mag_m18_yellow) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_m18_yellow ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered M18 Smoke (Yellow)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_m18_yellow ];
			Wallet = (Wallet - rhs_mag_m18_yellow);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_m18_yellow", 1];
			hint "Mail Call: Your M18 Smoke (Yellow) has arrived in the deliveries box";
		};
	};
	case 35: {
		if (Wallet < rhs_mag_rdg2_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_rdg2_white];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RGD-2 (white smoke) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_rdg2_white];
			Wallet = (Wallet - rhs_mag_rdg2_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_rdg2_white", 1];
			hint "Mail Call: Your RGD-2 (white smoke) has arrived in the deliveries box";
		};
	};
	case 36: {
		if (Wallet < rhs_mag_rdg2_black) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_rdg2_black];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered RGD-2 (black smoke)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_rdg2_black];
			Wallet = (Wallet - rhs_mag_rdg2_black);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_rdg2_black", 1];
			hint "Mail Call: Your RGD-2 (black smoke) has arrived in the deliveries box";
		};
	};
	case 37: {
		if (Wallet < rhs_mag_nspn_yellow) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_nspn_yellow];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered NSP-N (yellow flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_nspn_yellow];
			Wallet = (Wallet - rhs_mag_nspn_yellow);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_nspn_yellow", 1];
			hint "Mail Call: Your NSP-N (yellow flare) has arrived in the deliveries box";
		};
	};
	case 38: {
		if (Wallet < rhs_mag_nspn_red) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_nspn_red];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered NSP-N (red flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_nspn_red];
			Wallet = (Wallet - rhs_mag_nspn_red);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_nspn_red", 1];
			hint "Mail Call: Your NSP-N (red flare) has arrived in the deliveries box";
		};
	};
	case 39: {
		if (Wallet < rhs_mag_nspn_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_nspn_green];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered NSP-N (green flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_nspn_green];
			Wallet = (Wallet - rhs_mag_nspn_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_nspn_green", 1];
			hint "Mail Call: Your NSP-N (green flare) has arrived in the deliveries box";
		};
	};
	case 40: {
		if (Wallet < rhs_mag_nspd) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", rhs_mag_nspd];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered NSP-D (red flare) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", rhs_mag_nspd];
			Wallet = (Wallet - rhs_mag_nspd);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["rhs_mag_nspd", 1];
			hint "Mail Call: Your NSP-D (red flare) has arrived in the deliveries box";
		};
	};
};
