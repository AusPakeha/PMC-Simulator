private _display = (findDisplay 46) createDisplay "RscStore";
private _ctrl = (_display displayCtrl 1002);

if (isNull _display) exitWith { diag_log "[A3M] Store: Failed to create dialog"; };

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_handleStoreUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\store\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
