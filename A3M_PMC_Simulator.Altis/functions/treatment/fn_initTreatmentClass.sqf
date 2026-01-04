A3M_TreatmentClass = createHashMapObject [[
    ["#type", "ITreatmentClass"],
    ["#create", {
        _self set ["medic", objNull];
        _self set ["treatments", createHashMap];

        private _treatments = createHashMap;
        _treatments set ["quickHeal", ["Quick Heal", "Partial healing with reduced cost", 0.5]];
        _treatments set ["fullHeal", ["Full Treatment", "Complete healing with full cost", 1.0]];

        _self set ["treatments", _treatments];
        _self call ["init", []];
    }],
    ["init", {
        private _medic = missionNamespace getVariable ["medic", objNull];

        if (_medic == objNull) exitWith { hint "No medic found in mission namespace for treatment class."; };
        _self set ["medic", _medic];
    }],
    ["quickHeal", {
        private _medic = _self getOrDefault ["medic", objNull];

        [_medic] spawn {
            params [["_medic", objNull, [objNull]]];

            sleep 5;

            if (damage player > 0.5) then { player setDamage 0.5; } else { player setDamage 0; };
            _medic say3d "holdstill";

            private _medicalDeductible = paramsArray select 8;
            private _totalCost = _medicalDeductible / 4;
            private _wallet = profileNamespace getVariable ["SavedMoney", 0];

            _wallet = _wallet - _totalCost;
            profileNamespace setVariable ["SavedMoney", _wallet];
            saveProfileNamespace;

            hint format ["Thank you for your business. \n\n Account Debit \n\n $%1.00", round _totalCost];
            systemChat ["Your personal account has been debited for the company mandated medical insurance deductible."];
        };
    }],
    ["fullHeal", {
        private _medic = _self getOrDefault ["medic", objNull];

        [_medic] spawn {
            params [["_medic", objNull, [objNull]]];

            titleText ["Getting Treatment", "BLACK FADED", 1];
            _medic say3d "holdstill";
            sleep 1;
            titleText ["Dressing Wounds....5", "BLACK FADED", 0.3];
            sleep 1;
            titleText ["Dressing Wounds....4", "BLACK FADED", 0.3];
            sleep 1;
            titleText ["Bandaging....3", "BLACK FADED", 0.3];
            sleep 1;
            titleText ["Bandaging....2", "BLACK FADED", 0.3];
            sleep 1;
            titleText ["Bandaging....1", "BLACK FADED", 0.3];

            _currentDamage = damage player;
            if (damage player < 0.1) then {
                titleText ["You are already in good health. No treatment necessary.", "PLAIN", 0.3];
                sleep 1;
            } else {
                player setDamage 0;
                titleText ["You have been treated. Back to work with you...", "PLAIN", 0.3];

            private _medicalDeductible = (paramsArray select 8) / 10;
            private _totalCost = _currentDamage * _medicalDeductible;
            private _wallet = profileNamespace getVariable ["SavedMoney", 0];

            _wallet = _wallet - _totalCost;
            profileNamespace setVariable ["SavedMoney", _wallet];
            saveProfileNamespace;

            hint format ["Thank you for your business. \n\n Account Debit \n\n $%1.00", round _totalCost];
            systemChat ["Your personal account has been debited for the company mandated medical insurance deductible."];
            };
        };
    }]
]];

missionNamespace setVariable ["A3M_TreatmentClass", A3M_TreatmentClass];
A3M_TreatmentClass;
