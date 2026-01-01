/*

Nurse S(t)imulation Script V 1.0 by Cody Salazar AKA Fr33d0m
Modified by MrPakeha

License:
You can do whatever you were going to do anyway. Just give credit.

call {this addAction ["<t color='#FF0000'>Click to Heal</t>",{player setDamage 0;
[player] call ace_medical_treatment_fnc_fullHealLocal; medic say3d "holdstill"; },nil,10, FALSE, FALSE,"","TRUE",5,FAlSE,"",""];}

################################## LET US BEGIN #################################### */

_medic = _this select 0;

// Function definitions
fnc_quickHeal = {
    params ["_medic"];
    sleep 5;
    player setDamage 0.5;
    [player] call ace_medical_treatment_fnc_fullHealLocal;
    _medic say3d "holdstill";

    medicalDeductible = paramsArray select 8;
    quickHealCost = medicalDeductible / 2;
    Wallet = (Wallet - quickHealCost);
    profileNamespace setVariable ["SavedMoney", Wallet];
    saveProfileNamespace;

    hint format ["Thank you for your business. \n \n Account Debit \n \n $%1.00", quickHealCost];
    titleText ["Your personal account has been debited for the company mandated medical insurance deductible.","PLAIN DOWN"];
};

fnc_fullTreatment = {
    params ["_medic"];
    titleText ["Getting Treatment", "BLACK FADED", 1.0];
    _medic say3d "holdstill";
    sleep 1.0;
    titleText ["Dressing Wounds....5", "BLACK FADED", 0.3];
    sleep 1.0;
    titleText ["Dressing Wounds....4", "BLACK FADED", 0.3];
    sleep 1.0;
    titleText ["Bandaging....3", "BLACK FADED", 0.3];
    sleep 1.0;
    titleText ["Bandaging....2", "BLACK FADED", 0.3];
    sleep 1.0;
    titleText ["Bandaging....1", "BLACK FADED", 0.3];
    _currentDamage = damage player;
    player setDamage 0;
    titleText ["You have been treated. Back to work with you...", "PLAIN", 0.3];
    sleep 1.0;

    medicalDeductible = (paramsArray select 8) / 10;
    _treatmentCost = _currentDamage * medicalDeductible;
    Wallet = (Wallet - _treatmentCost);
    profileNamespace setVariable ["SavedMoney", Wallet];
    saveProfileNamespace;

    hint format ["Thank you for your business. \n \n Account Debit \n \n $%1.00", _treatmentCost];
    titleText ["Your personal account has been debited for the company mandated medical insurance deductible.","PLAIN DOWN"];
};

fnc_addTreatmentActions = {
    params ["_medic"];
    _medic addAction ["<t color='#FF0000'>Quick Heal</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target] spawn fnc_quickHeal;
    }, nil, 10, false, false, "", "true", 5, false, "", ""];

    _medic addAction ["<t color='#00FF00'>Full Treatment</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target] spawn fnc_fullTreatment;
    }, nil, 9, false, false, "", "true", 5, false, "", ""];
};

// Main script execution
[_medic] call fnc_addTreatmentActions;
