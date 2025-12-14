private _display = (findDisplay 46) createDisplay "RscTravelMenu";
private _ctrl = (_display displayCtrl 1001);

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];

    [_control, _isConfirmDialog, _message] call A3M_fnc_handleUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\travel\ui\_site\index.html"];
// _ctrl ctrlWebBrowserAction ["OpenDevConsole"];

true;
