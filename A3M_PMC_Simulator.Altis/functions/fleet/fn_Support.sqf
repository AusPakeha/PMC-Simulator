private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < B_Truck_01_fuel_F) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Truck_01_fuel_F]
        } else {
            _SMABox = "B_Truck_01_fuel_F" createVehicle (getMarkerPos "VehSpawn");
            B_DefenseBudget = (B_DefenseBudget - B_Truck_01_fuel_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Truck_01_fuel_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a Military Fuel Truck for $%1 \n \n It will be delivered to the Fleet Delivery Area at the C-12 Facility.", B_Truck_01_fuel_F];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 1: {
        if ((B_DefenseBudget < Box_NATO_Ammo_F) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, Box_NATO_Ammo_F]
        } else {
            _SMABox = "Box_NATO_Ammo_F" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - Box_NATO_Ammo_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + Box_NATO_Ammo_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a small shipment of Ammo for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", Box_NATO_Ammo_F];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 2: {
        if ((B_DefenseBudget < Box_NATO_Wps_F) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, Box_NATO_Wps_F]
        } else {
            _SMABox = "Box_NATO_Wps_F" createVehicle (getMarkerPos "ArmrySpwn");
            B_DefenseBudget = (B_DefenseBudget - Box_NATO_Wps_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + Box_NATO_Wps_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased a small shipment of weapons for $%1 \n \n It will be delivered to the Tactical Readiness Area at the C-12 Facility.", Box_NATO_Wps_F];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 3: {
        if ((B_DefenseBudget < B_Boat_Armed_01_minigun_F) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Boat_Armed_01_minigun_F]
        } else {
            _Boat = "B_Boat_Armed_01_minigun_F" createVehicle (getMarkerPos "SBoatSpawn");
            B_DefenseBudget = (B_DefenseBudget - B_Boat_Armed_01_minigun_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Boat_Armed_01_minigun_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an armed patrol boat (Minigun) for $%1 \n \n It will be delivered to the C-12 Facility Port.", B_Boat_Armed_01_minigun_F];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    case 4: {
        if ((B_DefenseBudget < B_Boat_Transport_01_F) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, B_Boat_Transport_01_F]
        } else {
            _Boat = "B_Boat_Transport_01_F" createVehicle (getMarkerPos "SBoatSpawn");
            B_DefenseBudget = (B_DefenseBudget - B_Boat_Transport_01_F);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + B_Boat_Transport_01_F);
            publicVariable "B_TotalCost";
            hint format ["You have purchased an Assault Rhib for $%1 \n \n It will be delivered to the C-12 Facility Port.", B_Boat_Transport_01_F];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    default {
        hint"Something went wrong...Couldn't find case for selection!"
    };
};
