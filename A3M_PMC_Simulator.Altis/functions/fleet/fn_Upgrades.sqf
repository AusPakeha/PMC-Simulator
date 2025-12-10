private _rank = rank player;

switch (TheSelection) do {
    case 0: {
        if ((B_DefenseBudget < AI_UH60_Transport) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, AI_UH60_Transport]
        } else {
            _TransHeli = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "AI_HeliSpawn");
            B_DefenseBudget = (B_DefenseBudget - AI_UH60_Transport);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + AI_UH60_Transport);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) Base Upgrade! For $%1, your Transport Aircraft will be delivered to the C-12 Airfield.", AI_UH60_Transport];

            [] call DoBudget;
            [] call DoTotal;
        };
    };
    default {
        hint"Something went wrong...Couldn't find case for selection!"
    };
};
