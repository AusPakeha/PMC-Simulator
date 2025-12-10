private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < B_UAV_01_F ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_UAV_01_F ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['B_UAV_01_F', getMarkerPos "SGAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;
            Deliveries AddItemCargoGlobal ["B_UavTerminal", 1];
            B_DefenseBudget = (B_DefenseBudget - B_UAV_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_UAV_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an AR-2 Darter for $%1", B_UAV_01_F ];
            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 1: {
        if ((B_DefenseBudget < B_UGV_01_F ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_UGV_01_F ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['B_UGV_01_F', getMarkerPos "GAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;

                Deliveries AddItemCargoGlobal ["B_UavTermina l", 1];

                B_DefenseBudget = (B_DefenseBudget - B_UGV_01_F);
                publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_UGV_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a UGV Stomper for $%1", B_UGV_01_F ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 2: {
        if ((B_DefenseBudget < B_UGV_01_rcws_F ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_UGV_01_rcws_F ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['B_UGV_01_rcws_F', getMarkerPos "GAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;

                Deliveries AddItemCargoGlobal ["B_UavTermina l", 1];

                B_DefenseBudget = (B_DefenseBudget - B_UGV_01_rcws_F);
                publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_UGV_01_rcws_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a UGV Stomper RCWS for $%1", B_UGV_01_rcws_F ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 3: {
        if ((B_DefenseBudget < B_UAV_02_F ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_UAV_02_F ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['B_UAV_02_F', getMarkerPos "AAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;
            Deliveries AddItemCargoGlobal ["B _UavTermina l", 1];

                B_DefenseBudget = (B_DefenseBudget - B_UAV_02_F);
                publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_UAV_02_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Yabhon R3 for $%1", B_UAV_02_F ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 4: {
        if ((B_DefenseBudget < B_UAV_02_CAS_F ) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_UAV_02_CAS_F ]
        } else {
            RoboGroup = createGroup west;
            Robo = createVehicle ['B_UAV_02_CAS_F', getMarkerPos "AAutSpwn", [], 0, 'CAN_COLLIDE'];
            createVehicleCrew Robo;
            (crew Robo) join RoboGroup;

                Deliveries AddItemCargoGlobal ["B_UavTermina l", 1];

                B_DefenseBudget = (B_DefenseBudget - B_UAV_02_CAS_F);
                publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_UAV_02_CAS_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Yabhon R3 (CAS) for $%1", B_UAV_02_CAS_F ];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    default {
        hint"Something went wrong...Couldn't find case for selection!"
    };
};
