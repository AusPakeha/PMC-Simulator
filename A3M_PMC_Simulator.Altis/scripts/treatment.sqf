/*

Nurse S(t)imulation Script V 1.0 by Cody Salazar AKA Fr33d0m
Modified by MrPakeha

License:
You can do whatever you were going to do anyway. Just give credit.

################################## LET US BEGIN #################################### */

// Function definitions
fnc_quickHeal = {
    params ["_medic"];
    sleep 5;
    player setDamage 0.5;
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
