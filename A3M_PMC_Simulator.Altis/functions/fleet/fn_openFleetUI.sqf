private _display = (findDisplay 46) createDisplay "RscFleet";
private _ctrl = (_display displayCtrl 1002);

if (isNull _display) exitWith { diag_log "[A3M] Fleet: Failed to create dialog"; };

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_handleFleetUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\fleet\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
