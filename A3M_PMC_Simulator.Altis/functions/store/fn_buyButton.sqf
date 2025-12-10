if (isNil "TheSelection") then {
    hint "Nothing was selected to purchase!"
};

private _categories = [
<<<<<<< HEAD
    [Itemson, "A3M_fnc_items", [
=======
    [ItemsOn, "A3M_fnc_items", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [ACE3_Enabled, "A3M_fnc_ACE3Items"],
        [RF_Enabled, "A3M_fnc_RFItems"],
        [EF_Enabled, "A3M_fnc_EFItems"],
        [WS_Enabled, "A3M_fnc_WSItems"]
    ]],
<<<<<<< HEAD
    [Vestson, "A3M_fnc_Vests", [
=======
    [VestsOn, "A3M_fnc_Vests", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSVests"],
        [RF_Enabled, "A3M_fnc_RFVests"],
        [EF_Enabled, "A3M_fnc_EFVests"],
        [WS_Enabled, "A3M_fnc_WSVests"]
    ]],
<<<<<<< HEAD
    [Clotheson, "A3M_fnc_Units", [
=======
    [ClothesOn, "A3M_fnc_Units", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSUnits"],
        [RF_Enabled, "A3M_fnc_RFUnits"],
        [EF_Enabled, "A3M_fnc_EFUnits"],
        [WS_Enabled, "A3M_fnc_WSUnits"]
    ]],
<<<<<<< HEAD
    [Explon, "A3M_fnc_Explosives", [
=======
    [ExplOn, "A3M_fnc_Explosives", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSexplosives"],
        [RF_Enabled, "A3M_fnc_RFexplosives"],
        [EF_Enabled, "A3M_fnc_EFexplosives"]
    ]],
<<<<<<< HEAD
    [Smokeon, "A3M_fnc_Smoke", [
=======
    [SmokeOn, "A3M_fnc_Smoke", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSSmoke"],
        [RF_Enabled, "A3M_fnc_RFSmoke"],
        [EF_Enabled, "A3M_fnc_EFSmoke"],
        [WS_Enabled, "A3M_fnc_WSSmoke"]
    ]],
<<<<<<< HEAD
    [Suppon, "A3M_fnc_Suppressors", [
=======
    [SuppOn, "A3M_fnc_Suppressors", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSSuppressors"],
        [RF_Enabled, "A3M_fnc_RFSuppressors"],
        [EF_Enabled, "A3M_fnc_EFSuppressors"],
        [WS_Enabled, "A3M_fnc_WSSuppressors"]
    ]],
<<<<<<< HEAD
    [Opton, "A3M_fnc_Optics", [
=======
    [OptOn, "A3M_fnc_Optics", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSOptics"],
        [RF_Enabled, "A3M_fnc_RFOptics"],
        [EF_Enabled, "A3M_fnc_EFOptics"],
        [WS_Enabled, "A3M_fnc_WSOptics"]
    ]],
<<<<<<< HEAD
    [Ammoon, "A3M_fnc_Ammo", [
=======
    [AmmoOn, "A3M_fnc_Ammo", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSAmmo"],
        [RF_Enabled, "A3M_fnc_RFAmmo"],
        [EF_Enabled, "A3M_fnc_EFAmmo"],
        [WS_Enabled, "A3M_fnc_WSAmmo"]
    ]],
<<<<<<< HEAD
    [Launcherson, "A3M_fnc_Launchers", [
=======
    [LaunchersOn, "A3M_fnc_Launchers", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSLaunchers"],
        [RF_Enabled, "A3M_fnc_RFLaunchers"],
        [EF_Enabled, "A3M_fnc_EFLaunchers"],
        [WS_Enabled, "A3M_fnc_WSLaunchers"]
    ]],
<<<<<<< HEAD
    [Rifleson, "A3M_fnc_Rifles", [
=======
    [RiflesOn, "A3M_fnc_Rifles", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSRifles"],
        [RF_Enabled, "A3M_fnc_RFRifles"],
        [EF_Enabled, "A3M_fnc_EFRifles"],
        [WS_Enabled, "A3M_fnc_WSRifles"]
    ]],
<<<<<<< HEAD
    [Pistolson, "A3M_fnc_Pistols", [
=======
    [PistolsOn, "A3M_fnc_Pistols", [
>>>>>>> 4ec6165b0144e6d3de028acd461f04b20627d996
        [RHS_Support_Enabled, "A3M_fnc_RHSPistols"],
        [RF_Enabled, "A3M_fnc_RFPistols"],
        [EF_Enabled, "A3M_fnc_EFPistols"],
        [WS_Enabled, "A3M_fnc_WSPistols"]
    ]],
    [HeadGearOn, "A3M_fnc_Headgear", [
        [RHS_Support_Enabled, "A3M_fnc_RHSHeadgear"],
        [RF_Enabled, "A3M_fnc_RFHeadgear"],
        [EF_Enabled, "A3M_fnc_EFHeadgear"],
        [WS_Enabled, "A3M_fnc_WSHeadgear"]
    ]],
    [BackPacksOn, "A3M_fnc_Backpacks", [
        [ACE3_Enabled, "A3M_fnc_ACE3Backpacks"],
        [RHS_Support_Enabled, "A3M_fnc_RHSBackpacks"],
        [RF_Enabled, "A3M_fnc_RFBackpacks"],
        [EF_Enabled, "A3M_fnc_EFBackpacks"],
        [WS_Enabled, "A3M_fnc_WSBackpacks"]
    ]],
    [ElecOn, "A3M_fnc_Electronics", [
        [ACE3_Enabled, "A3M_fnc_ACE3Electronics"],
        [TFAR_Enabled, "A3M_fnc_TFARElectronics"],
        [RHS_Support_Enabled, "A3M_fnc_RHSElectronics"],
        [RF_Enabled, "A3M_fnc_RFElectronics"],
        [EF_Enabled, "A3M_fnc_EFElectronics"],
        [WS_Enabled, "A3M_fnc_WSElectronics"]
    ]],
    [MedOn, "A3M_fnc_Medical", [
        [ACE3_Enabled, "A3M_fnc_ACE3Medical"]
    ]]
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
