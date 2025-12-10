switch (TheSelection) do {
	case 111: {
		if (Wallet < lxWS_H_bmask_base) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_base ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_base ];
			Wallet= (wallet - lxWS_H_bmask_base);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_base", 1];
			hint "Mail Call: Your Ballistic Mask has arrived in the deliveries box";
		};
	};
	case 112: {
		if (Wallet < lxWS_H_bmask_ghex) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_ghex ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Green Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_ghex ];
			Wallet= (wallet - lxWS_H_bmask_ghex);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_ghex", 1];
			hint "Mail Call: Your Ballistic Mask (Green Hex) has arrived in the deliveries box";
		};
	};
	case 113: {
		if (Wallet < lxWS_H_bmask_hex) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_hex ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Hex) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_hex ];
			Wallet= (wallet - lxWS_H_bmask_hex);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_hex", 1];
			hint "Mail Call: Your Ballistic Mask (Hex) has arrived in the deliveries box";
		};
	};
	case 114: {
		if (Wallet < lxWS_H_bmask_camo01) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_camo01 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Rocky) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_camo01 ];
			Wallet= (wallet - lxWS_H_bmask_camo01);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_camo01", 1];
			hint "Mail Call: Your Ballistic Mask (Rocky) has arrived in the deliveries box";
		};
	};
	case 115: {
		if (Wallet < H_bmask_snake_lxws) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_bmask_snake_lxws ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Snake) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_bmask_snake_lxws ];
			Wallet= (wallet - H_bmask_snake_lxws);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_bmask_snake_lxws", 1];
			hint "Mail Call: Your Ballistic Mask (Snake) has arrived in the deliveries box";
		};
	};
	case 116: {
		if (Wallet < lxWS_H_bmask_white) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_white ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_white ];
			Wallet= (wallet - lxWS_H_bmask_white);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_white", 1];
			hint "Mail Call: Your Ballistic Mask (White) has arrived in the deliveries box";
		};
	};
	case 117: {
		if (Wallet < lxWS_H_bmask_camo02) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_camo02 ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Woodland) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_camo02 ];
			Wallet= (wallet - lxWS_H_bmask_camo02);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_camo02", 1];
			hint "Mail Call: Your Ballistic Mask (Woodland) has arrived in the deliveries box";
		};
	};
	case 118: {
		if (Wallet < lxWS_H_bmask_yellow) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_bmask_yellow ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Ballistic Mask (Yellow) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_bmask_yellow ];
			Wallet= (wallet - lxWS_H_bmask_yellow);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_bmask_yellow", 1];
			hint "Mail Call: Your Ballistic Mask (Yellow) has arrived in the deliveries box";
		};
	};
	case 119: {
		if (Wallet < lxWS_H_Bandanna_blk_hs) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_Bandanna_blk_hs ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Bandanna (Black, Headset) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_Bandanna_blk_hs ];
			Wallet= (wallet - lxWS_H_Bandanna_blk_hs);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_Bandanna_blk_hs", 1];
			hint "Mail Call: Your Bandanna (Black, Headset) has arrived in the deliveries box";
		};
	};
	case 200: {
		if (Wallet < lxWS_H_PASGT_goggles_black_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_PASGT_goggles_black_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Basic Helmet (Goggles, Black) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_PASGT_goggles_black_F ];
			Wallet= (wallet - lxWS_H_PASGT_goggles_black_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_PASGT_goggles_black_F", 1];
			hint "Mail Call: Your Basic Helmet (Goggles, Black) has arrived in the deliveries box";
		};
	};
	case 201: {
		if (Wallet < lxWS_H_PASGT_goggles_olive_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_PASGT_goggles_olive_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Basic Helmet (Goggles, Olive) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_PASGT_goggles_olive_F ];
			Wallet= (wallet - lxWS_H_PASGT_goggles_olive_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_PASGT_goggles_olive_F", 1];
			hint "Mail Call: Your Basic Helmet (Goggles, Olive) has arrived in the deliveries box";
		};
	};
	case 202: {
		if (Wallet < lxWS_H_PASGT_goggles_white_F) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_PASGT_goggles_white_F ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Basic Helmet (Goggles, White) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_PASGT_goggles_white_F ];
			Wallet= (wallet - lxWS_H_PASGT_goggles_white_F);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_PASGT_goggles_white_F", 1];
			hint "Mail Call: Your Basic Helmet (Goggles, White) has arrived in the deliveries box";
		};
	};
	case 203: {
		if (Wallet < H_Beret_Headset_lxWS) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Beret_Headset_lxWS ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Beret (Headset) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Beret_Headset_lxWS ];
			Wallet= (wallet - H_Beret_Headset_lxWS);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_Beret_Headset_lxWS", 1];
			hint "Mail Call: Your Beret (Headset) has arrived in the deliveries box";
		};
	};
	case 204: {
		if (Wallet < lxWS_H_Booniehat_desert) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_Booniehat_desert ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Booniehat (Desert) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_Booniehat_desert ];
			Wallet= (wallet - lxWS_H_Booniehat_desert);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_Booniehat_desert", 1];
			hint "Mail Call: Your Booniehat (Desert) has arrived in the deliveries box";
		};
	};
	case 205: {
		if (Wallet < H_Cap_headphones_ion_lxws) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", H_Cap_headphones_ion_lxws ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Cap (ION, Headphones) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", H_Cap_headphones_ion_lxws ];
			Wallet= (wallet - H_Cap_headphones_ion_lxws);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["H_Cap_headphones_ion_lxws", 1];
			hint "Mail Call: Your Cap (ION, Headphones) has arrived in the deliveries box";
		};
	};
	case 206: {
		if (Wallet < lxWS_H_CapB_rvs_blk_ION) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_CapB_rvs_blk_ION ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Cap (ION, Headphones, Reversed) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_CapB_rvs_blk_ION ];
			Wallet= (wallet - lxWS_H_CapB_rvs_blk_ION);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_CapB_rvs_blk_ION", 1];
			hint "Mail Call: Your Cap (ION, Headphones, Reversed) has arrived in the deliveries box";
		};
	};
	case 207: {
		if (Wallet < lxWS_H_Headset) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", lxWS_H_Headset ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered Military Headset for $%1.00. Your order will be delivered soon! Check the deliveries box often!", lxWS_H_Headset ];
			Wallet= (wallet - lxWS_H_Headset);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["lxWS_H_Headset", 1];
			hint "Mail Call: Your Military Headset has arrived in the deliveries box";
		};
	};
};
