/*
 * Admin Management Class
 * Handles administration functionality
 */

A3M_AdminClass = createHashMapObject [[
    ["#type", "IAdminClass"],

    /*
     * Constructor
     */
    ["#create", {
        // Initialize any needed state
    }],

    /*
     * Get list of players for UI
     * @return Array of objects { name, uid, id }
     */
    ["getPlayers", {
        private _players = [];
        {
            _players pushBack createHashMapFromArray [
                ["name", name _x],
                ["uid", getPlayerUID _x],
                ["netId", netId _x]
            ];
        } forEach allPlayers;
        _players
    }],

    /*
     * Get admin stats (Budget, Spent, Slots)
     * @return HashMap
     */
    ["getStats", {
        private _stats = createHashMap;

        // Ensure variables exist
        if (isNil "B_DefenseBudget") then { B_DefenseBudget = 100000; };
        if (isNil "B_TotalCost") then { B_TotalCost = 0; };

        _stats set ["balance", B_DefenseBudget];
        _stats set ["spent", B_TotalCost];
        _stats set ["slots", playableSlotsNumber blufor];

        _stats
    }],

    /*
     * Send message to player
     * @param _targetNetId - NetID of target player
     * @param _message - Message content
     */
    ["sendMessage", {
        params ["_targetNetId", "_message"];

        private _target = objectFromNetId _targetNetId;
        if (isNull _target) exitWith { hint "Target player not found."; };

        // Set global variable expected by remote function (legacy support)
        PvtTextMsg = _message;
        publicVariable "PvtTextMsg";

        // Use legacy remote execution
        TargetPlayer = name _target; // Legacy variable
        [_target] remoteExecCall ["A3M_fnc_Testmessage", _target];

        hint format ["You have messaged %1 with the following message: \n \n %2", name _target, _message];
    }],

    /*
     * Advance $10,000 to all players
     */
    ["advanceCashGlobal", {
        hint "You have advanced $10,000.00 to each player in the game. This money has been subtracted from the Operational Budget.";

        ["InformationGreen", ["Global Cash Advance Issued"]] call BIS_fnc_showNotification;

        remoteExecCall ["A3M_fnc_MoneyToAll", 0]; // 0 = all clients

        // Update stats
        [] call DoAdminBudget;
        [] call DoAdminTotal;
    }],

    /*
     * Advance cash to specific player
     * @param _targetNetId
     * @param _amount
     */
    ["advanceCashPlayer", {
        params ["_targetNetId", "_amount"];

        private _target = objectFromNetId _targetNetId;
        if (isNull _target) exitWith { hint "Target player not found."; };
        if (_amount <= 0) exitWith { hint "Amount must be positive."; };

        // Set global variables for legacy compatibility
        GlobalPushAmount = _amount;
        publicVariable "GlobalPushAmount";
        TargetPlayer = name _target;

        [_target] remoteExec ["A3M_fnc_MoneyToYou", _target];
        ["InformationGreen", ["Cash Advance Issued"]] call BIS_fnc_showNotification;

        [] call DoAdminBudget;
        [] call DoAdminTotal;
    }],

    /*
     * Deduct cash from specific player
     * @param _targetNetId
     * @param _amount
     */
    ["deductCashPlayer", {
        params ["_targetNetId", "_amount"];

        private _target = objectFromNetId _targetNetId;
        if (isNull _target) exitWith { hint "Target player not found."; };
        if (_amount <= 0) exitWith { hint "Amount must be positive."; };

        // Set global variables for legacy compatibility
        GlobalPushAmount = _amount;
        publicVariable "GlobalPushAmount";
        TargetPlayer = name _target;

        [_target] remoteExec ["A3M_fnc_MoneyFromYou", _target];
        ["InformationRed", ["Fine Assessed"]] call BIS_fnc_showNotification;

        [] call DoAdminBudget;
        [] call DoAdminTotal;
    }],

    /*
     * Promote player
     * @param _targetNetId
     */
    ["promotePlayer", {
        params ["_targetNetId"];

        private _target = objectFromNetId _targetNetId;
        if (isNull _target) exitWith { hint "Target player not found."; };

        TargetPlayer = name _target;
        [_target] remoteExec ["A3M_fnc_GrantPower", _target];

        ["InformationGreen", ["Promotion Issued"]] call BIS_fnc_showNotification;
        hint format ["You have promoted %1", name _target];
    }],

    /*
     * Incarcerate player
     * @param _targetNetId
     */
    ["incarceratePlayer", {
        params ["_targetNetId"];

        private _target = objectFromNetId _targetNetId;
        if (isNull _target) exitWith { hint "Target player not found."; };

        TargetPlayer = name _target;
        [_target] remoteExec ["A3M_fnc_GoToJail", _target];

        ["InformationRed", ["Player Incarcerated!"]] call BIS_fnc_showNotification;
        hint format ["You have incarcerated %1 in the C-12 Detention Facility.", name _target];
    }],

    /*
     * Force cleanup
     */
    ["forceCleanup", {
        ["InformationRed", ["Cleanup Initiated"]] call BIS_fnc_showNotification;
        { if (!alive _x) then { deleteVehicle _x } } foreach (nearestObjects [center, ["Man", "Car", "Tank", "Helicopter"], 7500]);
    }],

    /*
     * Cancel all missions
     */
    ["cancelAllMissions", {
        systemChat "You have issued an order to abandon all orders and RTB. Processing...";

        // Reset JIP Tasker
        MissionStatus = "M0";
        publicVariable "MissionStatus";
        systemChat "JIP Tasker Module Reset";

        // Initialize mission active variables if not set
        if (isNil "EscortActive") then { EscortActive = 0; };
        if (isNil "ConveyActive") then { ConveyActive = 0; };
        if (isNil "CheckpointActive") then { CheckpointActive = 0; };
        if (isNil "SEActive") then { SEActive = 0; };
        if (isNil "Raid1Active") then { Raid1Active = 0; };
        if (isNil "Raid2Active") then { Raid2Active = 0; };
        if (isNil "NSARActive") then { NSARActive = 0; };
        if (isNil "T9Active") then { T9Active = 0; };
        if (isNil "HRaidActive") then { HRaidActive = 0; };
        if (isNil "SpeechActive") then { SpeechActive = 0; };

        // Reset variables
        if (EscortActive == 1) then { EscortActive = 0; publicVariable "EscortActive"; systemChat "Executive Protection Mission Aborted."; sleep 1; };
        if (ConveyActive == 1) then { ConveyActive = 0; publicVariable "ConveyActive"; systemChat "Convoy Protection Mission Aborted."; sleep 1; };
        if (CheckpointActive == 1) then { CheckpointActive = 0; publicVariable "CheckpointActive"; systemChat "Checkpoint Security Mission Aborted."; sleep 1; };
        if (SEActive == 1) then { SEActive = 0; publicVariable "SEActive"; systemChat "Search and Extract Mission Aborted."; sleep 1; };
        if (Raid1Active == 1) then { Raid1Active = 0; publicVariable "Raid1Active"; systemChat "Raid on Town Aborted."; sleep 1; };
        if (Raid2Active == 1) then { Raid2Active = 0; publicVariable "Raid2Active"; systemChat "Raid on Military Installation Aborted."; sleep 1; };
        if (NSARActive == 1) then { NSARActive = 0; publicVariable "NSARActive"; systemChat "NATO SAR Mission Aborted."; sleep 1; };
        if (T9Active == 1) then { T9Active = 0; publicVariable "T9Active"; systemChat "T-9 Defense Mission Aborted."; sleep 1; };
        if (HRaidActive == 1) then { HRaidActive = 0; publicVariable "HRaidActive"; systemChat "Raid on Hacker Den Aborted."; sleep 1; };
        if (SpeechActive == 1) then { SpeechActive = 0; publicVariable "SpeechActive"; systemChat "Dignitary Protection Terminated."; };

        // Notify all players
        systemChat "Cancelling all missions for players...";
        remoteExec ["A3M_MissionsCanceledMP", 0];

        ["InformationRed", ["All Missions Cancelled!"]] call BIS_fnc_showNotification;
        systemChat "All Missions Force Cancelled Successfully.";
    }]
]];
