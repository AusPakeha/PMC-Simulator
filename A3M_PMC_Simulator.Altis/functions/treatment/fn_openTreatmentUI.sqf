private _display = (findDisplay 46) createDisplay "RscTreatmentMenu";
private _ctrl = (_display displayCtrl 1001);

_ctrl ctrlAddEventHandler ["JSDialog", {
    params ["_control", "_isConfirmDialog", "_message"];

    [_control, _isConfirmDialog, _message] call A3M_fnc_handleTreatmentUIEvents;
}];

_ctrl ctrlWebBrowserAction ["LoadFile", "functions\treatment\ui\_site\index.html"];

true;
