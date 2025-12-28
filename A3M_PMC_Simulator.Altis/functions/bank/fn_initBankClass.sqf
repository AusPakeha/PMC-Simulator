A3M_BankClass = createHashMapObject [[
    ["#type", "IBankClass"],
    ["#create", {
        // Initialize any state if needed
    }],
    ["getBankData", {
        // Fetch data
        private _balance = profileNamespace getVariable ["SavedMoney", 0];
        // Ensure globals are set if needed
        if (isNil "Wallet") then { Wallet = _balance; };
        
        // Calculate pending
        private _multiplier = 0;
        if (!isNil "paramsArray") then {
            if (count paramsArray > 0) then {
                _multiplier = paramsArray select 0;
            };
        };
        // Fallback if paramsArray not set (e.g. single player or testing)
        if (_multiplier == 0) then { _multiplier = 2; };

        private _PlyScore = rating player;
        private _pending = _PlyScore * _multiplier;
        
        // Debits (Legacy support, though unused)
        if (isNil "Debits") then { Debits = 0; };
        
        private _dataMap = createHashMap;
        _dataMap set ["balance", Wallet];
        _dataMap set ["pending", _pending];
        _dataMap set ["debits", Debits];
        
        _dataMap
    }],
    ["submitTimesheet", {
        // Logic from A3M_fnc_TnE
        private _multiplier = 0;
        if (!isNil "paramsArray") then {
            if (count paramsArray > 0) then {
                _multiplier = paramsArray select 0;
            };
        };
        if (_multiplier == 0) then { _multiplier = 2; };

        private _PlyScore = rating player;
        private _amountToAdd = _PlyScore * _multiplier;
        
        // Update Wallet
        Wallet = Wallet + _amountToAdd;
        profileNamespace setVariable ["SavedMoney", Wallet];
        saveProfileNamespace;
        
        // Reset Rating
        player addRating -_PlyScore;
        
        // Notify
        hint format ["Payday! You were paid $%1 for services rendered.", _amountToAdd];
        ["InformationGreen", ["Payday!"]] call BIS_fnc_showNotification;
        
        // Return updated data
        private _dataMap = createHashMap;
        _dataMap set ["balance", Wallet];
        _dataMap set ["pending", 0]; // Rating reset, so pending is 0
        _dataMap set ["debits", Debits];
        
        _dataMap
    }]
]];

missionNamespace setVariable ["A3M_BankClass", A3M_BankClass];
A3M_BankClass;
