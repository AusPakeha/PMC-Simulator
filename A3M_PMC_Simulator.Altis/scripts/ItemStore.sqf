/*

	  /$$$$$$   /$$$$$$  /$$      /$$       /$$$$$$$  /$$      /$$  /$$$$$$         /$$$$$$  /$$   /$$  /$$
	 /$$__  $$ /$$__  $$| $$$    /$$$      | $$__  $$| $$$    /$$$ /$$__  $$       /$$__  $$|__/  | $$ | $$
	| $$  \ $$|__/  \ $$| $$$$  /$$$$      | $$  \ $$| $$$$  /$$$$| $$  \__/      | $$  \__/ /$$ /$$$$$$/$$$$  /$$   /$$| $$  /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$
	| $$$$$$$$   /$$$$$/| $$ $$/$$ $$      | $$$$$$$/| $$ $$/$$ $$| $$ |  $$$$$$ | $$| $$_  $$_  $$| $$  | $$| $$ |____  $$|_  $$_/   /$$__  $$ /$$__  $$
	| $$__  $$  |___  $$| $$  $$$| $$      | $$____/ | $$  $$$| $$| $$  \____  $$| $$| $$ \ $$ \ $$| $$  | $$| $$  /$$$$$$$  | $$    | $$  \ $$| $$  \__/
	| $$  | $$ /$$  \ $$| $$\  $ | $$      | $$      | $$\  $ | $$| $$    $$       /$$  \ $$| $$| $$ | $$ | $$| $$  | $$| $$ /$$__  $$  | $$ /$$| $$  | $$| $$
	| $$  | $$|  $$$$$$/| $$ \/  | $$      | $$      | $$ \/  | $$|  $$$$$$/      |  $$$$$$/| $$| $$ | $$ | $$|  $$$$$$/| $$|  $$$$$$$  |  $$$$/|  $$$$$$/| $$
	|__/  |__/ \______/ |__/     |__/      |__/      |__/     |__/ \______/        \______/ |__/|__/ |__/ |__/ \______/ |__/ \_______/   \___/   \______/ |__/


	Item Store V 3.0 by Cody Salazar AKA Fr33d0m
	www.A3MilSim.com

	License:
	You can do whatever you were going to do anyway. Just give me the credit i'm due, and don't steal my shit. I'll be pissed.
	if you want to repay me for all my hard work, come and play arma with me! I hang out at a MilSim unit known as A3M (A3 MilSim)
	Come and visit us at ts3.a3milsim.com

	WE LOVE JOINT OPS with OTHER units!!

	www.A3MilSim.com (A3 MilSim)
	All Rights Reserved

	for Information and Inquiries, EMAIL: salazar@a3milsim.com

	Credits & Thanks:

	My wife, for not only supporting my modding ventures, but actually jumping in and helping with mods when she can. What a gal!

	And last, but definitely not least, the A3 community, who through over 250+ encouraging messages highly motivated me to continue this project. I'm glad you like it,
	and I hope you enjoy the things I have in the works!

################################## LET US BEGIN #################################### */

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  General Options and Pre-load Variables//////// ////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
// Turn Off Weapon Mods on Open:
	RHS_Support_Enabled= 0;
	RF_Enabled = 0;
	EF_Enabled = 0;
	WS_Enabled= 0;
	ACE3_Enabled= 0;
	TFAR_Enabled= 0;
*/


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

if ((isClass (configfile >> "CfgPatches" >> "rhsusf_main")) && (isClass (configfile >> "CfgPatches" >> "rhs_main"))) then {
	RHS_Support_Enabled = 1;
} else {
	RHS_Support_Enabled = 0;
};

// Check for RF CDLC
if (isClass (configfile >> "CfgPatches" >> "lxRF_Data")) then {
	RF_Enabled = 1;
} else {
	RF_Enabled = 0;
};

// Check for EF CDLC
if (isClass (configfile >> "CfgPatches" >> "EF_Data")) then {
	EF_Enabled = 1;
} else {
	EF_Enabled = 0;
};

// Check for WS CDLC
if (isClass (configfile >> "CfgPatches" >> "lxWS_Data")) then {
	WS_Enabled = 1;
} else {
	WS_Enabled = 0;
};

// Delivery time (in Seconds)
DeliveryTime = ParamsArray select 3;

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  Handle mod Support Filte//// //// /////////////////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

A3M_fnc_handleWModClick = {
	WModSelection= _this select 1;
	switch (WModSelection) do {
		// Stock A3
		case 0: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 0;
			EF_Enabled = 0;
			RF_Enabled = 0;
			WS_Enabled= 0;
			lbAdd [1850, "Now In Stock Arma 3 Content Mode. Click a category to continue."];
			hint "Stock A3 Mode - No Mods Required";
		};
		// ACE 3
		case 1: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 1;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 0;
			EF_Enabled = 0;
			RF_Enabled = 0;
			WS_Enabled= 0;
			lbAdd [1850, "Now In ACE 3 Mod Mode. Click a category to continue."];
			hint "ACE 3 Is required to use equipment in this category. Please verify the ACE 3 Mod is installed before purchasing equipment in this category.";
		};
		// TFAR
		case 2: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 1;
			RHS_Support_Enabled = 0;
			EF_Enabled = 0;
			RF_Enabled = 0;
			WS_Enabled= 0;
			lbAdd [1850, "Now In Task Force Radio Mode. Click Electronics to continue."];
			hint "Task Force Arrowhead Radio (TFAR) is required to use equipment in this category. Please verify the TFAR Mod is installed before purchasing and equipment in this category.";
		};
		// RHS: Escalation
		case 3: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 1;
			EF_Enabled = 0;
			RF_Enabled = 0;
			WS_Enabled= 0;
			lbAdd [1850, "Now In RHS: Escalation Mode. Click a category to continue."];
			hint "RHS: Escalation Is required to use equipment in this category. Please verify the RHS: Escalation Mod is installed before purchasing equipment in this category.";
		};
		// Expeditionary Forces
		case 4: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 0;
			EF_Enabled = 1;
			RF_Enabled = 0;
			WS_Enabled= 0;
			lbAdd [1850, "Now In Expeditionary Forces CDLC Mode. Click a category to continue."];
			hint "Expeditionary Forces CDLC are required to use equipment in this category. Please verify the correct Expeditionary Forces CDLC is installed before purchasing equipment in this category.";
		};
		// Reaction Forces
		case 5: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 0;
			EF_Enabled = 0;
			RF_Enabled = 1;
			WS_Enabled= 0;
			lbAdd [1850, "Now In Reaction Forces CDLC Mode. Click a category to continue."];
			hint "Reaction Forces CDLC is required to use equipment in this category. Please verify that Reaction Forces CDLC is active before purchasing equipment in this category.";
		};
		// Western Sahara
		case 6: {
			lbClear 1850;
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
			SmokeOn= 0;
			ACE3_Enabled= 0;
			TFAR_Enabled= 0;
			RHS_Support_Enabled = 0;
			EF_Enabled = 0;
			RF_Enabled = 0;
			WS_Enabled= 1;
			lbAdd [1850, "Now In Western Sahara CDLC Mode. Click a category to continue."];
			hint "Western Sahara CDLC are required to use equipment in this category. Please verify the correct Western Sahara CDLC is installed before purchasing equipment in this category.";
		};
	};
};

//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// //// /////////////////////////////////////////////////////  BEGIN ACTUAL OPENING OF dialo//// //// ////////////////////////////////////////////////////////
//// //// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Ta-dow
// Open dialog
_handle = CreateDialog "A3M_GunStore";

//// //// //////////////////////////////////////////////////////////////////////////////////////
// Supported mod list:
_indexSM0 = lbAdd [2175, "Stock A3"];
_indexSM5 = lbAdd [2175, "ACE3"];
_indexSM6 = lbAdd [2175, "TFAR"];
_indexSM4 = lbAdd [2175, "RHS: Escalation"];
_indexSM2 = lbAdd [2175, "Expeditionary Forces"];
_indexSM1 = lbAdd [2175, "Reaction Forces"];
_indexSM3 = lbAdd [2175, "Western Sahara"];

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
	private _ace3 = getArray (_itemConfig >> "ace3");
	private _beard = getArray (_itemConfig >> "beard");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, _color] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, _color] call A3M_fnc_createList;
	};
	[1850, "CfgGlasses", _beard, _color] call A3M_fnc_createList;
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
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_electronicConfig >> "rhs");
	private _tfar = getArray (_electronicConfig >> "tfar");
	private _ef = getArray (_electronicConfig >> "ef");
	private _rf = getArray (_electronicConfig >> "rf");
	private _ws = getArray (_electronicConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, _color] call A3M_fnc_createList;
	if (Ace3_Enabled == 1) then {
		[1850, "CfgWeapons", _ace3, _color] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (TFAR_Enabled == 1) then {
		[1850, "CfgWeapons", _tfar, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_vestConfig >> "rhs");
	private _ef = getArray (_vestConfig >> "ef");
	private _rf = getArray (_vestConfig >> "rf");
	private _ws = getArray (_vestConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_uniformConfig >> "rhs");
	private _ef = getArray (_uniformConfig >> "ef");
	private _rf = getArray (_uniformConfig >> "rf");
	private _ws = getArray (_uniformConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_headgearConfig >> "rhs");
	private _ef = getArray (_headgearConfig >> "ef");
	private _rf = getArray (_headgearConfig >> "rf");
	private _ws = getArray (_headgearConfig >> "ws");
	private _ukiri = getArray (_headgearConfig >> "ukiri");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	[1850, "CfgGlasses", _a3g, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
	};
	[1850, "CfgGlasses", _ukiri, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_backpackConfig >> "rhs");
	private _ace3 = getArray (_electronicConfig >> "ace3");
	private _ef = getArray (_backpackConfig >> "ef");
	private _rf = getArray (_backpackConfig >> "rf");
	private _ws = getArray (_backpackConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgVehicles", _rhs, _color] call A3M_fnc_createList;
	};
	if (Ace3_Enabled == 1) then {
		[1850, "CfgVehicles", _ace3, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgVehicles", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgVehicles", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgVehicles", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_suppressorConfig >> "rhs");
	private _ef = getArray (_suppressorConfig >> "ef");
	private _rf = getArray (_suppressorConfig >> "rf");
	private _ws = getArray (_suppressorConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_opticsConfig >> "rhs");
	private _ef = getArray (_opticsConfig >> "ef");
	private _rf = getArray (_opticsConfig >> "rf");
	private _ws = getArray (_opticsConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_rifleConfig >> "rhs");
	private _ef = getArray (_rifleConfig >> "ef");
	private _rf = getArray (_rifleConfig >> "rf");
	private _ws = getArray (_rifleConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_pistolConfig >> "rhs");
	private _ef = getArray (_pistolConfig >> "ef");
	private _rf = getArray (_pistolConfig >> "rf");
	private _ws = getArray (_pistolConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_launcherConfig >> "rhs");
	private _rhsm = getArray (_launcherConfig >> "rhsm");
	private _ef = getArray (_launcherConfig >> "ef");
	private _rf = getArray (_launcherConfig >> "rf");
	private _rfm = getArray (_launcherConfig >> "rfm");
	private _ws = getArray (_launcherConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgWeapons", _a3, _color] call A3M_fnc_createList;
	[1850, "CfgMagazines", _a3m, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgWeapons", _rhs, _color] call A3M_fnc_createList;
		[1850, "CfgMagazines", _rhms, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgWeapons", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgWeapons", _rf, _color] call A3M_fnc_createList;
		[1850, "CfgMagazines", _rfm, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgWeapons", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_magazineConfig >> "rhs");
	private _ef = getArray (_magazineConfig >> "ef");
	private _rf = getArray (_magazineConfig >> "rf");
	private _ws = getArray (_magazineConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgMagazines", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1850, "CfgMagazines", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1850, "CfgMagazines", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgMagazines", _ws, _color] call A3M_fnc_createList;
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
	private _rhs = getArray (_expConfig >> "rhs");
	private _ws = getArray (_expConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgMagazines", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1850, "CfgMagazines", _ws, _color] call A3M_fnc_createList;
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
	private _color = [0.738, 0.714, 0.417, 1];

	[1850, "CfgMagazines", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1850, "CfgMagazines", _rhs, _color] call A3M_fnc_createList;
	};
};
