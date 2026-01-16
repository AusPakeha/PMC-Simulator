params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = displayChild findDisplay 46;

private _services = A3M_ServiceCenterAirClass get "services";
private _airCrewman = A3M_ServiceCenterAirClass get "airCrewman";

diag_log format ["[A3M] Handling UI event: %1 with data: %2", _event, _data];

switch (_event) do {
    case "close": { _display closeDisplay 1; };
    case "get::services": {
        private _data = createHashMap;

        _data set ["event", "get::services::response"];
        _data set ["data", values _services];

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveServices(%1);", toJSON _data]];
    };
    case "set::service": {
        private _index = _data get "index";

        if (_index == 1) then {A3M_ServiceCenterAirClass call ["aircraftServicing", []]; };
    };
    default { hint format ["Unhandled UI event: %1", _event]; };
};

if (_event isNotEqualTo "get::services") then { _display closeDisplay 1; };

true;
