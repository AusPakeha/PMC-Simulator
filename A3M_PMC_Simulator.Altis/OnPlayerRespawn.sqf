/*

Item Store V 3.0 by Cody Salazar AKA Fr33d0m
Modified by MrPakeha

License:
You can do whatever you were going to do anyway. Just give credit.

################################## LET US BEGIN #################################### */

if (isNil "initPhase") then { initPhase == 1 };
if (initPhase == 1) exitWith { systemChat "Loading PMC Simulator Profile..." };

// Create triggers for stretcher detection if not exist
if (isNil "HBed1Trigger") then {
    HBed1Trigger = createTrigger ["EmptyDetector", getPos HBed1, false];
    HBed1Trigger setTriggerArea [2,2,0,false];
    HBed1Trigger setTriggerActivation ["ANYPLAYER","PRESENT",true];
};
if (isNil "HBed2Trigger") then {
    HBed2Trigger = createTrigger ["EmptyDetector", getPos HBed2, false];
    HBed2Trigger setTriggerArea [2,2,0,false];
    HBed2Trigger setTriggerActivation ["ANYPLAYER","PRESENT",true];
};

if (!triggerActivated HBed1Trigger) then {
    player attachTo [HBed1, [0,0,0.5]];
    player playMove "AinjPpneMstpSnonWnonDnon";
    player setVariable ["onBed", HBed1];
    player setVariable ["exitPos", HBed1Exit];
    _id = player addAction ["Exit Bed", {
        detach player;
        player switchMove "";
        player setPos (getPos (player getVariable "exitPos"));
        player removeAction (player getVariable "exitActionID");
        player setVariable ["onBed", nil];
        player setVariable ["exitPos", nil];
        player setVariable ["exitActionID", nil];
    }, nil, 6, true, true, "", "player getVariable ['onBed', objNull] != objNull"];
    player setVariable ["exitActionID", _id];
} else {
    if (!triggerActivated HBed2Trigger) then {
        player attachTo [HBed2, [0,0,0.5]];
        player playMove "AinjPpneMstpSnonWnonDnon";
        player setVariable ["onBed", HBed2];
        player setVariable ["exitPos", HBed2Exit];
        _id = player addAction ["Exit Bed", {
            detach player;
            player switchMove "";
            player setPos (getPos (player getVariable "exitPos"));
            player removeAction (player getVariable "exitActionID");
            player setVariable ["onBed", nil];
            player setVariable ["exitPos", nil];
            player setVariable ["exitActionID", nil];
        }, nil, 6, true, true, "", "player getVariable ['onBed', objNull] != objNull"];
        player setVariable ["exitActionID", _id];
    } else {
        systemChat "All Hospital Beds Full, Simulating Recovery...";
        player setPos (getMarkerPos "hospital2");
    };
};

medicalDeductible = paramsArray select 8;

Wallet = (Wallet - medicalDeductible );
profileNamespace setVariable ["SavedMoney", Wallet];
saveProfileNamespace;

hint format ["Thank you for your business. \n \n Account Debit \n \n $%1.00", medicalDeductible];
titleText ["You were seriously wounded. Your equipment was stripped in the field during Medivac. Your personal account has been debited for the company mandated medical insurance deductible.","PLAIN DOWN"];
