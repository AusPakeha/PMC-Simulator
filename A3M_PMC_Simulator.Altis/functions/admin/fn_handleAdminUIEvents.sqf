/*
 * Handle Admin UI Events
 * Processes events from the admin management web UI
 *
 * @param _control - UI control that triggered the event
 * @param _isConfirmDialog - Dialog confirmation flag
 * @param _message - JSON string containing event data
 */

params ["_control", "_isConfirmDialog", "_message"];

// Parse incoming event data
private _eventAlert = fromJSON _message;
private _eventType = _eventAlert get "event";
private _eventData = _eventAlert get "data";
private _parentDisplay = displayChild findDisplay 46;

diag_log format ["[A3M] Admin UI Event: %1", _eventType];

// Process event based on type
switch (_eventType) do {

    // Close the admin UI
    case "close": {
        _parentDisplay closeDisplay 1;
    };

    // Get admin data (stats and players)
    case "get::admin::data": {
        // Get Stats
        private _stats = A3M_AdminClass call ["getStats", []];
        private _statsJson = toJSON _stats;

        // Get Players
        private _players = A3M_AdminClass call ["getPlayers", []];
        private _playersJson = toJSON _players;

        // Escape JSON for JS
        _statsJson = [_statsJson, "\\", "\\\\"] call CBA_fnc_replace;
        _statsJson = [_statsJson, "'", "\'"] call CBA_fnc_replace;

        _playersJson = [_playersJson, "\\", "\\\\"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "'", "\'"] call CBA_fnc_replace;

        // Send to UI
        _control ctrlWebBrowserAction ["ExecJS", format ["window.updateAdminData('%1', '%2');", _statsJson, _playersJson]];
    };

    // Global Actions
    case "action::admin::advanceGlobal": {
        A3M_AdminClass call ["advanceCashGlobal", []];

        // Get Stats
        private _stats = A3M_AdminClass call ["getStats", []];
        private _statsJson = toJSON _stats;
        private _players = A3M_AdminClass call ["getPlayers", []];
        private _playersJson = toJSON _players;

        _statsJson = [_statsJson, "\\", "\\\\"] call CBA_fnc_replace;
        _statsJson = [_statsJson, "'", "\'"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "\\", "\\\\"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "'", "\'"] call CBA_fnc_replace;

        _control ctrlWebBrowserAction ["ExecJS", format ["window.updateAdminData('%1', '%2');", _statsJson, _playersJson]];
    };

    case "action::admin::cleanup": {
        A3M_AdminClass call ["forceCleanup", []];
    };

    case "action::admin::cancelMissions": {
        A3M_AdminClass call ["cancelAllMissions", []];
    };

    // Player Actions
    case "action::admin::player::advance": {
        private _targetNetId = _eventData get "target";
        private _amount = _eventData get "amount";

        A3M_AdminClass call ["advanceCashPlayer", [_targetNetId, _amount]];

        // Get Stats
        private _stats = A3M_AdminClass call ["getStats", []];
        private _statsJson = toJSON _stats;
        private _players = A3M_AdminClass call ["getPlayers", []];
        private _playersJson = toJSON _players;

        _statsJson = [_statsJson, "\\", "\\\\"] call CBA_fnc_replace;
        _statsJson = [_statsJson, "'", "\'"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "\\", "\\\\"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "'", "\'"] call CBA_fnc_replace;

        _control ctrlWebBrowserAction ["ExecJS", format ["window.updateAdminData('%1', '%2');", _statsJson, _playersJson]];
    };

    case "action::admin::player::deduct": {
        private _targetNetId = _eventData get "target";
        private _amount = _eventData get "amount";

        A3M_AdminClass call ["deductCashPlayer", [_targetNetId, _amount]];

        private _stats = A3M_AdminClass call ["getStats", []];
        private _statsJson = toJSON _stats;
        private _players = A3M_AdminClass call ["getPlayers", []];
        private _playersJson = toJSON _players;

        _statsJson = [_statsJson, "\\", "\\\\"] call CBA_fnc_replace;
        _statsJson = [_statsJson, "'", "\'"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "\\", "\\\\"] call CBA_fnc_replace;
        _playersJson = [_playersJson, "'", "\'"] call CBA_fnc_replace;

        _control ctrlWebBrowserAction ["ExecJS", format ["window.updateAdminData('%1', '%2');", _statsJson, _playersJson]];
    };

    case "action::admin::player::promote": {
        private _targetNetId = _eventData get "target";
        A3M_AdminClass call ["promotePlayer", [_targetNetId]];
    };

    case "action::admin::player::incarcerate": {
        private _targetNetId = _eventData get "target";
        A3M_AdminClass call ["incarceratePlayer", [_targetNetId]];
    };

    case "action::admin::player::message": {
        private _targetNetId = _eventData get "target";
        private _message = _eventData get "message";

        A3M_AdminClass call ["sendMessage", [_targetNetId, _message]];
    };

    default {
        diag_log format ["[A3M] Admin: Unhandled event type '%1'", _eventType];
    };
};

true;
