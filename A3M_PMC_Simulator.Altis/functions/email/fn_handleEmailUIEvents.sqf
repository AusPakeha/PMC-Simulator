params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = displayChild findDisplay 46;

diag_log format ["[A3M] Handling Email UI event: %1", _event];

switch (_event) do {
    case "close": { _display closeDisplay 1; };
    case "accept::mission": {
        A3M_EmailClass call ["acceptMission", [_data]];

        private _response = createHashMap;
        _response set ["event", "mission::accepted"];
        _response set ["data", _data];
        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveEmailEvent(%1);", toJSON _response]];
    };
    default { diag_log format ["Unhandled Email UI event: %1", _event]; };
};

true;
