switch (TheSelection) do {
	case 30:	{
		if (Wallet < ACE_TacticalLadder_Pack) then {
			Hint Format ["Attention: Your Card Was Declined in the amount of:\n $%1.00 \n Please contact your financial institution.", ACE_TacticalLadder_Pack];
		} else {
			PlaySound "A3M_buy";
			Hint format ["You have ordered an ACE Tactical Ladder(Backpack) for $%1.00. Your order will be delivered soon! Check the deliveries box often!", ACE_TacticalLadder_Pack];
			Wallet= (wallet - ACE_TacticalLadder_Pack);
			profileNamespace setVariable ["SavedMoney", Wallet];
			saveProfileNamespace;
			sleep DeliveryTime;
			Deliveries AddBackpackCargoGlobal ["ACE_TacticalLadder_Pack", 1];
			hint "Mail Call: Your ACE Tactical Ladder (Backpack) has arrived in the deliveries box";
		};
	};
};
