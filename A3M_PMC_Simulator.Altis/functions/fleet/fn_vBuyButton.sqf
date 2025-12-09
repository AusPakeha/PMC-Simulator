if (isNil "TheSelection") exitWith {
    hint "Nothing was selected to purchase!";
};

private _categories = [
    [wheelson, "A3M_fnc_wheeled", [
        [RHS_Support_Enabled, "A3M_fnc_RHSwheeled"],
        [RF_Enabled, "A3M_fnc_RFwheeled"],
        [EF_Enabled, "A3M_fnc_EFwheeled"],
        [WS_Enabled, "A3M_fnc_WSwheeled"]
    ]],
    [wingson, "A3M_fnc_winged", [
        [RHS_Support_Enabled, "A3M_fnc_RHSwinged"]
    ]],
    [helion, "A3M_fnc_heli", [
        [RHS_Support_Enabled, "A3M_fnc_RHSheli"],
        [RF_Enabled, "A3M_fnc_RFheli"],
        [EF_Enabled, "A3M_fnc_EFheli"],
        [WS_Enabled, "A3M_fnc_WSheli"]
    ]],
    [armoredon, "A3M_fnc_Armor", [
        [RHS_Support_Enabled, "A3M_fnc_RHSarmor"],
        [EF_Enabled, "A3M_fnc_EFarmor"],
        [WS_Enabled, "A3M_fnc_WSarmor"]
    ]],
    [RoboticsOn, "A3M_fnc_Robotics", [
        [RHS_Support_Enabled, "A3M_fnc_RHSrobotics"],
        [EF_Enabled, "A3M_fnc_EFrobotics"],
        [WS_Enabled, "A3M_fnc_WSrobotics"]
    ]],
    [SupportOn, "A3M_fnc_Support", [
        [RHS_Support_Enabled, "A3M_fnc_RHSsupport"],
        [EF_Enabled, "A3M_fnc_EFsupport"],
        [WS_Enabled, "A3M_fnc_WSsupport"],
        [ACE3_Enabled, "A3M_fnc_ACEsupport"]
    ]],
    [UpgradesOn, "A3M_fnc_Upgrades", []]
];

{
    _x params ["_vanillaFlag", "_vanillaFunc", "_mods"];
    
    if (_vanillaFlag == 1) then {
        // Try vanilla function first
        _this call (missionNamespace getVariable _vanillaFunc);
        
        // Also check mod functions in case selection is for a mod item
        {
            _x params ["_modFlag", "_modFunc"];
            if (_modFlag == 1) then {
                _this call (missionNamespace getVariable _modFunc);
            };
        } forEach _mods;
    };
} forEach _categories;
