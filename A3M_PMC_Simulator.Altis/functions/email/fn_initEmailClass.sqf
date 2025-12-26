A3M_EmailClass = createHashMapObject [[
    ["#type", "IEmailClass"],
    ["#create", {
        _self set ["activeMissions", []];
    }],
    ["acceptMission", {
        params ["_missionData"];

        diag_log format ["[A3M] Email: %1", _missionData];

        private _subject = _missionData getOrDefault ["subject", "Unknown Contract"];
        private _rate = _missionData getOrDefault ["rate", 0];
        private _rp = _missionData getOrDefault ["rp", 0];
        private _id = _missionData getOrDefault ["id", ""];

        diag_log format ["[A3M] Email: Accepting mission %1 (%2)", _subject, _id];

        hint format ["Accepted Contract:\n%1\nPayment: $%2\nRP: %3", _subject, _rate, _rp];

        private _active = _self get "activeMissions";
        _active pushBack _id;
        _self set ["activeMissions", _active];

        switch (_id) do {
            case "contract_M1": { [] call A3M_msn_VIPEscort; };
            case "contract_M2": { [] call A3M_msn_TRKEscort; };
            case "contract_M3": { remoteExec ["A3M_msn_chkpt", 0, true]; };
            case "contract_M4": { [] call A3M_msn_SandE; };
            case "contract_M5": { [] call A3M_msn_Raid1; };
            case "contract_M6": { [] call A3M_msn_Raid2; };
            case "contract_M7": { [] call A3M_msn_reinforce; };
            case "contract_M8": { [] call A3M_msn_T9sec; };
            case "contract_M9": { [] call A3M_msn_Hden1; };
            case "contract_M10": { [] call A3M_msn_DgntrySec; };
            default {};
        };

        true
    }]
]];

missionNamespace setVariable ["A3M_EmailClass", A3M_EmailClass];
A3M_EmailClass;
