params ["_control", "_isConfirmDialog", "_message"];

private _alert = fromJSON _message;
private _event = _alert get "event";
private _data = _alert get "data";
private _display = ctrlParent _control;

diag_log format ["[A3M] Handling Bank UI event: %1 with data: %2", _event, _data];

switch (_event) do {
    case "close": { _display closeDisplay 1; playMusic ""; };
    case "bank::signin": {
        private _dataMap = A3M_BankClass call ["getBankData"];

        private _responseData = createHashMap;
        _responseData set ["event", "bank::data::update"];
        _responseData set ["data", _dataMap];

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveBankData(%1);", toJSON _responseData]];
    };
    case "bank::signout": {
        diag_log "[A3M] Bank: User signed out";
    };
    case "bank::submit_timesheet": {
        private _dataMap = A3M_BankClass call ["submitTimesheet"];

        private _responseData = createHashMap;
        _responseData set ["event", "bank::data::update"];
        _responseData set ["data", _dataMap];

        _control ctrlWebBrowserAction ["ExecJS", format ["window.receiveBankData(%1);", toJSON _responseData]];
    };
    default { hint format ["Unhandled Bank UI event: %1", _event]; };
};

true;
