params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = displayChild findDisplay 46;

diag_log format ["[A3M] Handling homepage UI event: %1 with data: %2", _event, _data];

switch (_event) do {
    case "close": { _display closeDisplay 1; playMusic ""; };
    case "get::homepage::data": {
        private _data = createHashMap;
        _data set ["event", "get::homepage::data::response"];
        _data set ["data", createHashMap]; // Add any homepage data here

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveHomepageData(%1);", toJSON _data]];
    };
    case "access::bank": {
        [] call A3M_fnc_AccessBank;
    };
    case "access::fleet": {
        execVM 'scripts\FleetMgmt.sqf';
    };
    case "access::arms": {
        execVM 'scripts\ItemStore.sqf';
    };
    case "access::admin": {
        [] spawn A3M_fnc_AdminPanel;
    };
    case "access::mail": {
        execVM 'scripts\handleTasks.sqf';
    };
    default { hint format ["Unhandled homepage UI event: %1", _event]; };
};

if (_event isNotEqualTo "get::homepage::data") then { _display closeDisplay 1; playMusic ""; };

true;
