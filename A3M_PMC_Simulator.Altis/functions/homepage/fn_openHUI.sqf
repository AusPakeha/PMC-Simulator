private _display = (findDisplay 46) createDisplay "RscHomepage";
private _ctrl = (_display displayCtrl 1001);

if (isNull _display) exitWith { diag_log "[A3M] Homepage: Failed to create dialog"; };

playMusic "gearup";

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];
    [_control, _isConfirmDialog, _message] call A3M_fnc_handleHUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\homepage\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
