params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = displayChild findDisplay 46;

private _treatments = A3M_TreatmentClass get "treatments";
private _medic = A3M_TreatmentClass get "medic";

diag_log format ["[A3M] Handling Treatment UI event: %1 with data: %2", _event, _data];

switch (_event) do {
    case "close": { _display closeDisplay 1; };
    case "get::treatments": {
        private _data = createHashMap;

        _data set ["event", "get::treatments::response"];
        _data set ["data", values _treatments];

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveTreatments(%1);", toJSON _data]];
    };
    case "set::treatment": {
        private _index = _data get "index";

        if (_index == 0) then { A3M_TreatmentClass call ["fullHeal", []]; };
        if (_index == 1) then { A3M_TreatmentClass call ["quickHeal", []]; };
    };
    default { hint format ["Unhandled Treatment UI event: %1", _event]; };
};

if (_event isNotEqualTo "get::treatments") then { _display closeDisplay 1; };

true;
