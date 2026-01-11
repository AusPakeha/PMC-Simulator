/*
by Cody Salazar AKA Fr33d0m
Modified by MrPakeha

License:
You can do whatever you were going to do anyway. Just give credit.

################################## LET US BEGIN #################################### */

if (isNil "initPhase") then { initPhase = 1 };
if (initPhase == 1) exitWith { systemChat "Loading PMC Simulator Profile..." };

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

if (!isNull _oldUnit) then {
    [] call A3M_fnc_playerRespawn;
};
