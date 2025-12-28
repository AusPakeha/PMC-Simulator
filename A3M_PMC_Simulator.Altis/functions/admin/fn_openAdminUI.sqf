private _display = (findDisplay 46) createDisplay "RscAdmin";
private _ctrl = (_display displayCtrl 1002);

if (isNull _display) exitWith { diag_log "[A3M] Admin: Failed to create dialog"; };

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_handleAdminUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\admin\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
