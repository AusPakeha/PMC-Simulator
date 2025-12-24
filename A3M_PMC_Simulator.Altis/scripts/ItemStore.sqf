/*

	Item Store V 3.0 by Cody Salazar AKA Fr33d0m
	Modified by MrPakeha and J. Schmidt

	License:
	You can do whatever you were going to do anyway. Just give credit.

################################## LET US BEGIN #################################### */

// configFile checks to see if mod is active.

// Check for Ace3
if (isClass (configfile >> "CfgPatches" >> "ace_main")) then {
	Ace3_Enabled = 1;
} else {
	Ace3_Enabled = 0;
};

// Check for TFAR
if (isClass (configfile >> "CfgPatches" >> "task_force_radio")) then {
	TFAR_Enabled = 1;
} else {
	TFAR_Enabled = 0;
};

// Check for EF CDLC
if (isClass (configfile >> "CfgPatches" >> "EF_Data")) then {
	EF_Enabled = 1;
} else {
	EF_Enabled = 0;
};

// Check for RF CDLC
if (isClass (configfile >> "CfgPatches" >> "lxRF_Data") or isClass (configfile >> "CfgMods" >> "lxRF") or isClass (configfile >> "CfgMods" >> "RF")) then {
	RF_Enabled = 1;
} else {
	RF_Enabled = 0;
};

// Check for WS CDLC
if (isClass (configfile >> "CfgPatches" >> "lxWS_Data") or isClass (configfile >> "CfgMods" >> "lxWS") or isClass (configfile >> "CfgMods" >> "WS")) then {
	WS_Enabled = 1;
} else {
	WS_Enabled = 0;
};

// Check for RHS
if ((isClass (configfile >> "CfgPatches" >> "rhsusf_main")) && (isClass (configfile >> "CfgPatches" >> "rhs_main"))) then {
	RHS_Support_Enabled = 1;
} else {
	RHS_Support_Enabled = 0;
};

// Delivery time (in Seconds)
DeliveryTime = ParamsArray select 3;

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  BEGIN ACTUAL OPENING OF dialo//// //// ////////////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Ta-dow
// Open dialog
_handle = CreateDialog "A3M_GunStore";

//// //// //////////////////////////////////////////////////////////////////////////////////////
// Supported mod list:

// Build array of available mods (stock always first, then enabled mods)
private _availableMods = ["stock"];
if (Ace3_Enabled == 1) then {_availableMods pushBack "ace3"; };
if (TFAR_Enabled == 1) then {_availableMods pushBack "tfar"; };
if (EF_Enabled == 1) then { _availableMods pushBack "ef"; };
if (RF_Enabled == 1) then { _availableMods pushBack "rf"; };
if (WS_Enabled == 1) then { _availableMods pushBack "ws"; };
if (RHS_Support_Enabled == 1) then { _availableMods pushBack "rhs"; };

// Populate listbox 2175 using _availableMods
private _displayNames = ["Stock A3"];
if (Ace3_Enabled == 1) then {_displayNames pushBack "ACE 3"; };
if (TFAR_Enabled == 1) then {_displayNames pushBack "TFAR"; };
if (EF_Enabled == 1) then { _displayNames pushBack "Expeditionary Forces"; };
if (RF_Enabled == 1) then { _displayNames pushBack "Reaction Forces"; };
if (WS_Enabled == 1) then { _displayNames pushBack "Western Sahara"; };
if (RHS_Support_Enabled == 1) then { _displayNames pushBack "RHS: Escalation"; };
lbClear 2175;
{
    lbAdd [2175, _displayNames select _forEachIndex];
} forEach _availableMods;

// Debug: Show flag values
diag_log format ["[A3M] Item Supported Mod- Ace3: %1 TFAR %2 EF: %3, RF: %4, WS: %5, RHS: %6", Ace3_Enabled, TFAR_Enabled, EF_Enabled, RF_Enabled, WS_Enabled, RHS_Support_Enabled];

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  Handle Dbl Click of Ite//// //// //////////////////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

A3M_fnc_GShandleClick = {
	TheSelection = _this select 1;
	hint "You have made a selection. Click *Purchase* button to buy.";
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  BEGIN Add Iteam to Window Area//// //// ///////////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// _Pic1 = lbAdd[1850, "*Name* Price: $365.00"];
// getText(configFile >>"CfgWeapons">>"*classname*">>"picture"); lbSetPicture[1850, 0, _Pic1]; lbSetPictureColor[1850, 0, [0.9, 0.9, 0.9, 0.8]];
//
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Add items to listbox
DoAddItems = {
	ItemsOn = 1;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _itemConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Items";
	private _a3 = getArray (_itemConfig >> "a3");
	private _a3m = getArray (_itemConfig >> "a3m");
	private _beard = getArray (_itemConfig >> "beard");
	private _ace3 = getArray (_itemConfig >> "ace3");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, "item"] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, "item"] call A3M_fnc_createList;
	};
	[1850, "CfgGlasses", _beard, "item"] call A3M_fnc_createList;
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Medical Supplies
DoAddMedical = {
	ItemsOn = 0;
	MedOn = 1;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _medicalConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Medical";
	private _a3 = getArray (_medicalConfig >> "a3");
	private _ace3 = getArray (_medicalConfig >> "ace3");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Electronic Devices
DoAddElect = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 1;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _electronicConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Electronic";
	private _a3 = getArray (_electronicConfig >> "a3");
	private _a3m = getArray (_electronicConfig >> "a3m");
	private _ace3 = getArray (_electronicConfig >> "ace3");
	private _tfar = getArray (_electronicConfig >> "tfar");
	private _ef = getArray (_electronicConfig >> "ef");
	private _rf = getArray (_electronicConfig >> "rf");
	private _ws = getArray (_electronicConfig >> "ws");
	private _rhs = getArray (_electronicConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, "item"] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, "item"] call A3M_fnc_createList;
	};
	if (TFAR_Enabled == 1) then {
		[1850, "CfgWeapons", _tfar, "item"] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Vests
DoAddVests = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 1;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _vestConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Vests";
	private _a3 = getArray (_vestConfig >> "a3");
	private _ef = getArray (_vestConfig >> "ef");
	private _rf = getArray (_vestConfig >> "rf");
	private _ws = getArray (_vestConfig >> "ws");
	private _rhs = getArray (_vestConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Clothes
DoAddClothes = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 1;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _uniformConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Uniforms";
	private _a3 = getArray (_uniformConfig >> "a3");
	private _ef = getArray (_uniformConfig >> "ef");
	private _rf = getArray (_uniformConfig >> "rf");
	private _ws = getArray (_uniformConfig >> "ws");
	private _rhs = getArray (_uniformConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  headgear, Helmets, Hats
DoAddHeadgear = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 1;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _headgearConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Headgear";
	private _a3 = getArray (_headgearConfig >> "a3");
	private _a3g = getArray (_headgearConfig >> "a3g");
	private _ukiri = getArray (_headgearConfig >> "ukiri");
	private _ef = getArray (_headgearConfig >> "ef");
	private _rf = getArray (_headgearConfig >> "rf");
	private _ws = getArray (_headgearConfig >> "ws");
	private _rhs = getArray (_headgearConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	[1850, "CfgGlasses", _a3g, "item"] call A3M_fnc_createList;
	[1850, "CfgGlasses", _ukiri, "item"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Backpacks
DoAddBackpacks = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 1;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _backpackConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Backpacks";
	private _a3 = getArray (_backpackConfig >> "a3");
	private _ace3 = getArray (_backpackConfig >> "ace3");
	private _ef = getArray (_backpackConfig >> "ef");
	private _rf = getArray (_backpackConfig >> "rf");
	private _ws = getArray (_backpackConfig >> "ws");
	private _rhs = getArray (_backpackConfig >> "rhs");

	[1850, "CfgVehicles", _a3, "backpack"] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgVehicles", _ace3, "backpack"] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgVehicles", _ef, "backpack"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgVehicles", _rf, "backpack"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgVehicles", _ws, "backpack"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgVehicles", _rhs, "backpack"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Suppressors
DoAddSuppressors = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 1;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _suppressorConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Suppressors";
	private _a3 = getArray (_suppressorConfig >> "a3");
	private _ef = getArray (_suppressorConfig >> "ef");
	private _rf = getArray (_suppressorConfig >> "rf");
	private _ws = getArray (_suppressorConfig >> "ws");
	private _rhs = getArray (_suppressorConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Optics
DoAddOptics = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 1;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _opticsConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Optics";
	private _a3 = getArray (_opticsConfig >> "a3");
	private _ef = getArray (_opticsConfig >> "ef");
	private _rf = getArray (_opticsConfig >> "rf");
	private _ws = getArray (_opticsConfig >> "ws");
	private _rhs = getArray (_opticsConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "item"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "item"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "item"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "item"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "item"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Rifles
DoAddRifles = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 1;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _rifleConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Rifles";
	private _a3 = getArray (_rifleConfig >> "a3");
	private _ef = getArray (_rifleConfig >> "ef");
	private _rf = getArray (_rifleConfig >> "rf");
	private _ws = getArray (_rifleConfig >> "ws");
	private _rhs = getArray (_rifleConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "weapon"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "weapon"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "weapon"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "weapon"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "weapon"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Pistols & Submachineguns
DoAddPistols = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 1;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _pistolConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Pistols";
	private _a3 = getArray (_pistolConfig >> "a3");
	private _ef = getArray (_pistolConfig >> "ef");
	private _rf = getArray (_pistolConfig >> "rf");
	private _ws = getArray (_pistolConfig >> "ws");
	private _rhs = getArray (_pistolConfig >> "rhs");

	[1850, "CfgWeapons", _a3, "weapon"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "weapon"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "weapon"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "weapon"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "weapon"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Launchers
DoAddLaunchers = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 1;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _launcherConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Launchers";
	private _a3 = getArray (_launcherConfig >> "a3");
	private _a3m = getArray (_launcherConfig >> "a3m");
	private _ef = getArray (_launcherConfig >> "ef");
	private _rf = getArray (_launcherConfig >> "rf");
	private _rfm = getArray (_launcherConfig >> "rfm");
	private _ws = getArray (_launcherConfig >> "ws");
	private _rhs = getArray (_launcherConfig >> "rhs");
	private _rhsm = getArray (_launcherConfig >> "rhsm");

	[1850, "CfgWeapons", _a3, "weapon"] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, "weapon"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, "weapon"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, "weapon"] call A3M_fnc_createList;
		[1850, "CfgMagazines", _rfm, "weapon"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, "weapon"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, "weapon"] call A3M_fnc_createList;
		[1850, "CfgMagazines", _rhsm, "weapon"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Ammunition (magazines)
DoAddAmmo = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 1;
	ExplOn= 0;
	SmokeOn= 0;
	lbClear 1850;

	private _magazineConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Magazine";
	private _a3 = getArray (_magazineConfig >> "a3");
	private _ef = getArray (_magazineConfig >> "ef");
	private _rf = getArray (_magazineConfig >> "rf");
	private _ws = getArray (_magazineConfig >> "ws");
	private _rhs = getArray (_magazineConfig >> "rhs");

	[1850, "CfgMagazines", _a3, "magazine"] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1850, "CfgMagazines", _ef, "magazine"] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgMagazines", _rf, "magazine"] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgMagazines", _ws, "magazine"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, "magazine"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Explosives
DoAddExplosives = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 1;
	SmokeOn= 0;
	lbClear 1850;

	private _expConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_Grenade";
	private _a3 = getArray (_expConfig >> "a3");
	private _ws = getArray (_expConfig >> "ws");
	private _rhs = getArray (_expConfig >> "rhs");

	[1850, "CfgMagazines", _a3, "magazine"] call A3M_fnc_createList;
	if (WS_Enabled == 1) then {
		[1850, "CfgMagazines", _ws, "magazine"] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, "magazine"] call A3M_fnc_createList;
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Smoke
DoAddSmoke = {
	ItemsOn = 0;
	MedOn = 0;
	ElecOn= 0;
	VestsOn= 0;
	ClothesOn= 0;
	HeadGearOn= 0;
	BackPacksOn = 0;
	SuppOn= 0;
	OptOn= 0;
	RiflesOn= 0;
	PistolsOn= 0;
	LaunchersOn= 0;
	AmmoOn= 0;
	ExplOn= 0;
	SmokeOn= 1;
	lbClear 1850;

	private _smokeGrenadeConfig = missionConfigFile >> "CfgStore" >> "Store" >> "A3M_SmokeGrenades";
	private _a3 = getArray (_smokeGrenadeConfig >> "a3");
	private _rhs = getArray (_smokeGrenadeConfig >> "rhs");

	[1850, "CfgMagazines", _a3, "magazine"] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, "magazine"] call A3M_fnc_createList;
	};
};
