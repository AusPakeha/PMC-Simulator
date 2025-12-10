switch (TheSelection) do {
	case 0 : {
		if (Wallet < M_30Rnd_65x39_caseless_green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_65x39_caseless_green];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Caseless Green (30 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_65x39_caseless_green];
			Wallet= (wallet - M_30Rnd_65x39_caseless_green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 1];
			hint "Mail Call: Your 6.5 x 39mm Caseless Green (30 rds) has arrived in the deliveries box";
		};
	};
	case 1 : {
		if (Wallet < M_30Rnd_65x39_caseless_green_mag_Tracer) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_65x39_caseless_green_mag_Tracer ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Caseless (30 rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_65x39_caseless_green_mag_Tracer ];
			Wallet= (wallet - M_30Rnd_65x39_caseless_green_mag_Tracer);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 1];
			hint "Mail Call: Your 6.5 x 39mm Caseless (30 rds) Tracer has arrived in the deliveries box";
		};
	};
	case 2 : {
		if (Wallet < M_30Rnd_556x45_Stanag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_556x45_Stanag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 5.56 x 45mm STANAG (30 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_556x45_Stanag ];
			Wallet= (wallet - M_30Rnd_556x45_Stanag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_556x45_Stanag", 1];
			hint "Mail Call: Your 5.56 x 45mm STANAG (30 rds) has arrived in the deliveries box";
		};
	};
	case 3 : {
		if (Wallet < M_30Rnd_556x45_Stanag_Tracer_Green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_556x45_Stanag_Tracer_Green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 5.56 x 45mm STANAG (30 rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_556x45_Stanag_Tracer_Green ];
			Wallet= (wallet - M_30Rnd_556x45_Stanag_Tracer_Green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green", 1];
			hint "Mail Call: Your 5.56 x 45mm STANAG (30 rds) Tracer has arrived in the deliveries box";
		};
	};
	case 4 : {
		if (Wallet < M_30Rnd_65x39_caseless_mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_65x39_caseless_mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5x39 Caseless Mag (30 rds)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_65x39_caseless_mag ];
			Wallet= (wallet - M_30Rnd_65x39_caseless_mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 1];
			hint "Mail Call: Your 6.5x39 Caseless Mag (30 rds) has arrived in the deliveries box";
		};
	};
	case 5 : {
		if (Wallet < M_30Rnd_65x39_caseless_mag_Tracer) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_65x39_caseless_mag_Tracer ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5x39 Caseless Mag (30 rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_65x39_caseless_mag_Tracer ];
			Wallet= (wallet - M_30Rnd_65x39_caseless_mag_Tracer);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 1];
			hint "Mail Call: Your 6.5x39 Caseless Mag (30 rds) Tracer has arrived in the deliveries box";
		};
	};
	case 6 : {
		if (Wallet < M_30Rnd_45ACP_Mag_SMG_01) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_45ACP_Mag_SMG_01];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .45 ACP SMG (30 rds)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_45ACP_Mag_SMG_01];
			Wallet= (wallet - M_30Rnd_45ACP_Mag_SMG_01);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 1];
			hint "Mail Call: Your .45 ACP SMG (30 rds) has arrived in the deliveries box";
		};
	};
	case 7 : {
		if (Wallet < M_30Rnd_45ACP_Mag_SMG_01_Tracer_Green) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_45ACP_Mag_SMG_01_Tracer_Green ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .45 ACP SMG (30 rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_45ACP_Mag_SMG_01_Tracer_Green ];
			Wallet= (wallet - M_30Rnd_45ACP_Mag_SMG_01_Tracer_Green);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 1];
			hint "Mail Call: Your .45 ACP SMG (30 rds) Tracer has arrived in the deliveries box";
		};
	};
	case 8 : {
		if (Wallet < M_100Rnd_65x39_caseless_mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_100Rnd_65x39_caseless_mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Caseless High Vol (100 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_100Rnd_65x39_caseless_mag ];
			Wallet= (wallet - M_100Rnd_65x39_caseless_mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["100Rnd_65x39_caseless_mag", 1];
			hint "Mail Call: Your 6.5 x 39mm Caseless High Vol (100 rds) has arrived in the deliveries box";
		};
	};
	case 9 : {
		if (Wallet < M_100Rnd_65x39_caseless_mag_Tracer) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_100Rnd_65x39_caseless_mag_Tracer ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Caseless High Vol (100 rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_100Rnd_65x39_caseless_mag_Tracer ];
			Wallet= (wallet - M_100Rnd_65x39_caseless_mag_Tracer);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer", 1];
			hint "Mail Call: Your 6.5 x 39mm Caseless High Vol (100 rds) Tracerhas arrived in the deliveries box";
		};
	};
	case 10 : {
		if (Wallet < M_150Rnd_762x51_Box) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_150Rnd_762x51_Box ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 7.62x51mm Ammo Belt (150 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_150Rnd_762x51_Box ];
			Wallet= (wallet - M_150Rnd_762x51_Box);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["150Rnd_762x51_Box", 1];
			hint "Mail Call: Your 7.62x51mm Ammo Belt (150 rds)has arrived in the deliveries box";
		};
	};
	case 11 : {
		if (Wallet < M_150Rnd_762x51_Box_Tracer) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_150Rnd_762x51_Box_Tracer ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 7.62x51mm Ammo Belt (150 rds) Tracerfor $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_150Rnd_762x51_Box_Tracer ];
			Wallet= (wallet - M_150Rnd_762x51_Box_Tracer);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["150Rnd_762x51_Box_Tracer", 1];
			hint "Mail Call: Your 7.62x51mm Ammo Belt (150 rds) Tracer has arrived in the deliveries box";
		};
	};
	case 12 : {
		if (Wallet < M_200Rnd_65x39_cased_Box) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_200Rnd_65x39_cased_Box];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Cased High Vol (200 Rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_200Rnd_65x39_cased_Box];
			Wallet= (wallet - M_200Rnd_65x39_cased_Box);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 1];
			hint "Mail Call: Your 6.5 x 39mm Cased High Vol (200 Rds) has arrived in the deliveries box";
		};
	};
	case 13 : {
		if (Wallet < M_200Rnd_65x39_cased_Box_Tracer) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_200Rnd_65x39_cased_Box_Tracer ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 6.5 x 39mm Cased High Vol (200 Rds) Tracer for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_200Rnd_65x39_cased_Box_Tracer ];
			Wallet= (wallet - M_200Rnd_65x39_cased_Box_Tracer);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 1];
			hint "Mail Call: Your 6.5 x 39mm Cased High Vol (200 Rds) Tracer has arrived in the deliveries box";
		};
	};
	case 14 : {
		if (Wallet < M_20Rnd_556x45_UW_mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_20Rnd_556x45_UW_mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 5.56x45mm Underwater (20 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_20Rnd_556x45_UW_mag ];
			Wallet= (wallet - M_20Rnd_556x45_UW_mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["20Rnd_556x45_UW_mag", 1];
			hint "Mail Call: Your 5.56x45mm Underwater (20 rds)has arrived in the deliveries box";
		};
	};
	case 15 : {
		if (Wallet < M_20Rnd_762x51_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_20Rnd_762x51_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 7.62 x 51mm (20 rds)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_20Rnd_762x51_Mag ];
			Wallet= (wallet - M_20Rnd_762x51_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["20Rnd_762x51_Mag", 1];
			hint "Mail Call: Your 7.62 x 51mm (20 rds) has arrived in the deliveries box";
		};
	};
	case 16 : {
		if (Wallet < M_16Rnd_9x21_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_16Rnd_9x21_Mag];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 9x21mm (16 Rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_16Rnd_9x21_Mag];
			Wallet= (wallet - M_16Rnd_9x21_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["16Rnd_9x21_Mag", 1];
			hint "Mail Call: Your 9x21mm (16 Rds) has arrived in the deliveries box";
		};
	};
	case 17 : {
		if (Wallet < M_30Rnd_9x21_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_30Rnd_9x21_Mag];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 9x21mm SMG (30 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_30Rnd_9x21_Mag];
			Wallet= (wallet - M_30Rnd_9x21_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["30Rnd_9x21_Mag", 1];
			hint "Mail Call: Your 9x21mm SMG (30 rds) has arrived in the deliveries box";
		};
	};
	case 18 : {
		if (Wallet < M_11Rnd_45ACP_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_11Rnd_45ACP_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .45 +P JHP (11 Rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_11Rnd_45ACP_Mag ];
			Wallet= (wallet - M_11Rnd_45ACP_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["11Rnd_45ACP_Mag", 1];
			hint "Mail Call: Your .45 +P JHP (11 Rds) has arrived in the deliveries box";
		};
	};
	case 19 : {
		if (Wallet < M_6Rnd_45ACP_Cylinder) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_6Rnd_45ACP_Cylinder ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .45 FMJ (6 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_6Rnd_45ACP_Cylinder ];
			Wallet= (wallet - M_6Rnd_45ACP_Cylinder);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["6Rnd_45ACP_Cylinder", 1];
			hint "Mail Call: Your .45 FMJ (6 rds) has arrived in the deliveries box";
		};
	};
	case 20 : {
		if (Wallet < M_10Rnd_762x51_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_10Rnd_762x51_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 7.62x51 (10 rds)for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_10Rnd_762x51_Mag ];
			Wallet= (wallet - M_10Rnd_762x51_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["10Rnd_762x51_Mag", 1];
			hint "Mail Call: Your 7.62x51 (10 rds) has arrived in the deliveries box";
		};
	};
	case 21 : {
		if (Wallet < M_9Rnd_45ACP_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_9Rnd_45ACP_Mag];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .45 +P JHP Black Talons (9 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_9Rnd_45ACP_Mag];
			Wallet= (wallet - M_9Rnd_45ACP_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["9Rnd_45ACP_Mag", 1];
			hint "Mail Call: Your .45 +P JHP Black Talons (9 rds) has arrived in the deliveries box";
		};
	};
	case 22 : {
		if (Wallet < M_7Rnd_408_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_7Rnd_408_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered .408 Lapua (7 rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_7Rnd_408_Mag ];
			Wallet= (wallet - M_7Rnd_408_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["7Rnd_408_Mag", 1];
			hint "Mail Call: Your .408 Lapua (7 rds) has arrived in the deliveries box";
		};
	};
	case 23 : {
		if (Wallet < M_5Rnd_127x108_APDS_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_5Rnd_127x108_APDS_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 12.7x108mm APDS (5 Rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_5Rnd_127x108_APDS_Mag ];
			Wallet= (wallet - M_5Rnd_127x108_APDS_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag", 1];
			hint "Mail Call: Your 12.7x108mm APDS (5 Rds) has arrived in the deliveries box";
		};
	};
	case 24 : {
		if (Wallet < M_5Rnd_127x108_Mag) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", M_5Rnd_127x108_Mag ];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered 12.7x108mm AP FMJ (5 Rds) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", M_5Rnd_127x108_Mag ];
			Wallet= (wallet - M_5Rnd_127x108_Mag);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddMagazineCargoGlobal ["5Rnd_127x108_Mag", 1];
			hint "Mail Call: Your 12.7x108mm AP FMJ (5 Rds)has arrived in the deliveries box";
		};
	};
};
