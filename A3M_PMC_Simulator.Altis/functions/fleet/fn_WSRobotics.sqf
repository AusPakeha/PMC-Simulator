private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        if ((B_DefenseBudget < ION_UAV_02_lxWS ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, ION_UAV_02_lxWS ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['ION_UAV_02_lxWS', getMarkerPos "AAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;
            Deliveries AddItemCargoGlobal ["B_UavTerminal", 1];
            B_DefenseBudget = (B_DefenseBudget - ION_UAV_02_lxWS);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + ION_UAV_02_lxWS);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an ION PMC AP-5 Bustard for $%1", ION_UAV_02_lxWS ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
};
