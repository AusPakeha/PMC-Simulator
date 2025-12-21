params [["_display", displayNull]];

if (isNull _display) exitWith { diag_log "[A3M] Homepage: No display provided"; };

private _control = _display ctrlCreate ["RscHTML", 1000];
_control ctrlSetPosition [0, 0, 1, 1];
_control ctrlCommit 0;

private _url = "functions\homepage\ui\index.html";
_control htmlLoad _url;

_control ctrlAddEventHandler ["HTMLLink", {
    params ["_control", "_url"];
    diag_log format ["[A3M] Homepage HTML Link: %1", _url];
}];

_control ctrlAddEventHandler ["HTMLUnload", {
    params ["_control"];
    diag_log "[A3M] Homepage HTML Unloaded";
}];

_control ctrlAddEventHandler ["HTMLProgress", {
    params ["_control", "_progress"];
    if (_progress >= 1) then {
        diag_log "[A3M] Homepage HTML Loaded";
    };
}];

_control ctrlAddEventHandler ["HTMLReady", {
    params ["_control"];
    diag_log "[A3M] Homepage HTML Ready";
}];

_control ctrlAddEventHandler ["HTMLExecJS", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_homepage_handleUIEvents;
}];

true;
