// Respawn script: Run on player respawn, either when forced or killed.
// Place player in position and perform fullHeal treatment

// Place the player at HBed1Exit position with direction
player setPos (getPos HBed1Exit);
player setDir (getDir HBed1Exit);

// get the medic object
private _medic = missionNamespace getVariable ["medic", objNull];
if (_medic == objNull) exitWith {
	hint "No medic found for treatment.";
};

// Perform the fullHeal treatment (blocking version) in a scheduled context
[] spawn {
    titleText ["Getting Treatment", "BLACK FADED", 1];
    sleep 1;
    titleText ["Assessing Wounds....5", "BLACK FADED", 0.3];
    sleep 1;
    titleText ["Cleaning Wounds....4", "BLACK FADED", 0.3];
    sleep 1;
    titleText ["Bandaging....3", "BLACK FADED", 0.3];
    sleep 1;
    titleText ["Bandaging....2", "BLACK FADED", 0.3];
    sleep 1;
    titleText ["Cleaning up....1", "BLACK FADED", 0.3];

    player setDamage 0;
    titleText ["You have been treated. Back to work with you...", "PLAIN", 0.3];

    private _medicalDeductible = (paramsArray select 8);
    private _wallet = profileNamespace getVariable ["SavedMoney", 0];

    _wallet = _wallet - _medicalDeductible;
    profileNamespace setVariable ["SavedMoney", _wallet];
    saveProfileNamespace;

    hint format ["Thank you for your business. \n\n Account Debit \n\n $%1.00", _medicalDeductible];
    systemChat "You were seriously wounded. Your equipment was stripped in the field during Medivac. Your personal account has been debited for the company mandated medical insurance deductible.";
};
