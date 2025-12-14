params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = displayChild findDisplay 46;

private _destinations = A3M_TravelClass get "destinations";
private _taxiObjects = _destinations get "taxiObjects";
private _actionTexts = _destinations get "actionTexts";

diag_log format ["[A3M] Handling UI event: %1 with data: %2", _event, _data];

switch (_event) do {
    case "close": { _display closeDisplay 1; };
    case "get::destinations": {
        private _data = createHashMap;
        _data set ["event", "get::destinations::response"];
        _data set ["data", _actionTexts];

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveDestinations(%1);", toJSON _data]];
    };
    case "set::destination": {
        private _name = _data get "name";
        private _index = _data get "index";

        A3M_TravelClass call ["teleport", [_name, _index]];
    };
    default { hint format ["Unhandled UI event: %1", _event]; };
};


if (_event isNotEqualTo "get::destinations") then { _display closeDisplay 1; };

true;
