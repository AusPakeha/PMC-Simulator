private _display = (findDisplay 46) createDisplay "RscBank";
private _ctrl = (_display displayCtrl 1002);

if (isNull _display) exitWith { diag_log "[A3M] Bank: Failed to create dialog"; };

playMusic "gearup";

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_handleBankUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\bank\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
