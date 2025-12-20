/*

	 Fleet Management Module V 3.0 by Cody Salazar AKA Fr33d0m
	 Modified by MrPakeha and J. Schmidt

	License:
	You can do whatever you were going to do anyway. Just give credit.

	###################
	 rank ###### rating
	###################

	private   0
	CORPORAL  50
	SERGEANT 150
	LIEUTENANT 250
	CAPTAIN 350
	MAJOR 500
	COLONEL 750

################################## LET US BEGIN #################################### */

// configFile checks to see if mod is active.

// Check for Ace3
if (isClass (configfile >> "CfgPatches" >> "ace_main")) then {
	Ace3_Enabled = 1;
} else {
	Ace3_Enabled = 0;
};

// Check for EF CDLC or Workshop
if (isClass (configfile >> "CfgPatches" >> "EF_Data")) then {
	EF_Enabled = 1;
} else {
	EF_Enabled = 0;
};

// Check for RF CDLC or Workshop
if (isClass (configfile >> "CfgPatches" >> "lxRF_Data") or isClass (configfile >> "CfgMods" >> "lxRF") or isClass (configfile >> "CfgMods" >> "RF")) then {
	RF_Enabled = 1;
} else {
	RF_Enabled = 0;
};

// Check for WS CDLC or Workshop
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

// //// //// ////////////////////////////////////////////////////////////////////////////////////////////////////
// Handle the menu clicks (Parent class)
A3M_fnc_VhandleClick = {
	TheSelection = _this select 1;
	hint "You have made a selection. Click *Purchase* button to buy.";
};

// //// //// ////////////////////////////////////////////////////////////////////////////////////////////////
// Supported Modifications:

lbAdd [2175, "Stock A3"];
if (Ace3_Enabled == 1) then {
    lbAdd [2175, "ACE 3"];
};
if (EF_Enabled == 1) then {
    lbAdd [2175, "Expeditionary Forces"];
};
if (RF_Enabled == 1) then {
    lbAdd [2175, "Reaction Forces"];
};
if (WS_Enabled == 1) then {
    lbAdd [2175, "Western Sahara"];
};
if (RHS_Support_Enabled == 1) then {
    lbAdd [2175, "RHS: Escalation"];
};

// Debug: Show flag values
diag_log format ["[A3M] Mod Flags - Ace3: %1 EF: %2, RF: %3, WS: %4, RHS: %5", Ace3_Enabled, EF_Enabled, RF_Enabled, WS_Enabled, RHS_Support_Enabled];

// //// //// ///////////////////////////////////////////////////////////////////////////
// Initial Budget for side - Change in ParamsArray!
B_InitialBudget = paramsArray select 1;
// rating to Purchase values
B_vaslimit = 0;
B_Mlimit = 3500;
B_Llimit = 5500;

// Big Ticket Item rank (Expensive Shit locked to a rank)
B_MaxRank = "MAJOR";

if (isNil "_MATV") then {
	_MATV ="";
};

// //// //// ////////////////////////////////////////////////////////////////////////////////////////
// Initial Budget Creator
// //// //// //////////////////////////////////////////////////////////////////////////////////////
if (isnil "B_DefenseBudget") then {
	B_DefenseBudget= B_InitialBudget;
	publicVariable "B_DefenseBudget";
};
if (isnil "B_TotalCost") then {
	B_TotalCost= 0;
	publicVariable "B_TotalCost";
};

// //// //// /////////////////////////////////////////////////////////////////////////////////
// Open dialog
_handle = CreateDialog "A3M_store";

// //// //// /////////////////////////////////////////////////////////////////////////////////

A3M_handle_number = {
	private ["_number", "_mod", "_digots", "_digitsCount", "_modBase", "_numberText"];
	_number = [_this, 0, 0, [0]] call BIS_fnc_param;
	_mod = [_this, 1, 3, [0]] call BIS_fnc_param;
	_digits = _number call BIS_fnc_numberDigits;
	_digitsCount = count _digits - 1;
	_modBase = _digitsCount % _mod;
	_numberText = "";
	{
		_numberText = _numberText + str _x;
		if ((_foreachindex - _modBase) % (_mod) == 0 && _foreachindex != _digitsCount) then {
			_numberText = _numberText +",";
		};
	} forEach _digits;
	_numberText
};

// Update Budget Balance in GUI
DoBudget = {
	disableSerialization;
	_Bdisplay = findDisplay 420;

	if (str (_Bdisplay) != "no display") then {
		_ChildControl = _Bdisplay displayCtrl 1170;
		form_B_DefenseBudget = [B_DefenseBudget] call A3M_handle_number;
		_ChildControl ctrlSetStructuredText parseText format ["$%1", form_B_DefenseBudget];
	};
};
[] call DoBudget;

// //// //// /////////////////////////////////////////////////////////////////////////////////
// Update Total Balance in GUI
DoTotal = {
	disableSerialization;
	_BTdisplay = findDisplay 420;

	if (str (_BTdisplay) != "no display") then {
		_ChildControl2 = _BTdisplay displayCtrl 1171;
		form_B_TotalCost = [B_TotalCost] call A3M_handle_number;
		_ChildControl2 ctrlSetStructuredText parseText format ["$%1", form_B_TotalCost];
	};
};
[] call DoTotal;

// //// //// ////////////////////////////////////////////////////////////////////////////////
// Show Current rank in GUI
DoRankChk = {
	disableSerialization;
	_BRdisplay = findDisplay 420;
	if (str (_BRdisplay) != "no display") then {
		_ChildControl3 = _BRdisplay displayCtrl 1172;
		_prank = rank player;
		_rating = rating player;
		_ChildControl3 ctrlSetStructuredText parseText format ["Rank is %1<br />Rating is %2", _prank, _rating];
	};
};
[] call DoRankChk;

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Wheeled vehicles to Main list
DoAddWheel = {
	wheelson = 1;
	wingson = 0;
	helion = 0;
	armoredon = 0;
	RoboticsOn = 0;
	SupportOn = 0;
	UpgradesOn = 0;
	lbClear 1575;

	private _wheeledConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Wheeled";
    private _a3 = getArray (_wheeledConfig >> "a3");
    private _ef = getArray (_wheeledConfig >> "ef");
    private _rf = getArray (_wheeledConfig >> "rf");
    private _ws = getArray (_wheeledConfig >> "ws");
    private _rhs = getArray (_wheeledConfig >> "rhs");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1575, "CfgVehicles", _rf] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs] call A3M_fnc_createList;
	};
};
// //// //// //////////////////////////////////////////////////////////////////////////////////////////////
// Add Fixed Wing to Main list
DoAddFixedWing = {
	wheelson = 0;
	wingson = 1;
	helion = 0;
	armoredon = 0;
	RoboticsOn = 0;
	SupportOn = 0;
	UpgradesOn = 0;
	lbClear 1575;

	private _fixedWingConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_FixedWing";
    private _a3 = getArray (_fixedWingConfig >> "a3");
    private _rhs = getArray (_fixedWingConfig >> "rhs");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs] call A3M_fnc_createList;
	};
};

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Rotary Aircraft to Main list
DoAddRotary = {
	wheelson = 0;
	wingson = 0;
	helion = 1;
	armoredon = 0;
	RoboticsOn = 0;
	SupportOn = 0;
	UpgradesOn = 0;
	lbClear 1575;

	private _heliConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Heli";
    private _a3 = getArray (_heliConfig >> "a3");
    private _ef = getArray (_heliConfig >> "ef");
    private _rf = getArray (_heliConfig >> "rf");
    private _ws = getArray (_heliConfig >> "ws");
    private _rhs = getArray (_heliConfig >> "rhs");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1575, "CfgVehicles", _rf] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs] call A3M_fnc_createList;
	};
};

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Armored vehicles to Main list
DoAddArmored = {
	wheelson = 0;
	wingson = 0;
	helion = 0;
	armoredon = 1;
	RoboticsOn = 0;
	SupportOn = 0;
	UpgradesOn = 0;
	lbClear 1575;

	private _armorConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Armored";
    private _ws = getArray (_armorConfig >> "ws");

	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws] call A3M_fnc_createList;
	};
};

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Robotic vehicles to Main list
DoAddRobotics = {
	wheelson = 0;
	wingson = 0;
	helion = 0;
	armoredon = 0;
	RoboticsOn = 1;
	SupportOn = 0;
	UpgradesOn = 0;
	lbClear 1575;

	private _droneConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Drone";
    private _a3 = getArray (_droneConfig >> "a3");
    private _ws = getArray (_droneConfig >> "ws");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws] call A3M_fnc_createList;
	};
};

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Support vehicles to Main list
DoAddSupport = {
	wheelson = 0;
	wingson = 0;
	helion = 0;
	armoredon = 0;
	RoboticsOn = 0;
	SupportOn = 1;
	UpgradesOn = 0;
	lbClear 1575;

	private _supportConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Support";
    private _a3 = getArray (_supportConfig >> "a3");
    private _ace3 = getArray (_supportConfig >> "ace3");
    private _rhs = getArray (_supportConfig >> "rhs");
    private _ef = getArray (_supportConfig >> "ef");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
    if (ACE3_Enabled == 1) then {
        [1575, "CfgVehicles", _ace3] call A3M_fnc_createList;
    };
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef] call A3M_fnc_createList;
	};
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs] call A3M_fnc_createList;
	};
};

// //// //// ///////////////////////////////////////////////////////////////////////////////////////////////
// Add Upgrade vehicles to Main list
DoAddUpgrades = {
	wheelson = 0;
	wingson = 0;
	helion = 0;
	armoredon = 0;
	RoboticsOn = 0;
	SupportOn = 0;
	UpgradesOn = 1;
	lbClear 1575;

	private _upgradeConfig = missionConfigFile >> "CfgFleet" >> "Store" >> "A3M_Upgrade";
    private _a3 = getArray (_upgradeConfig >> "a3");

	[1575, "CfgVehicles", _a3] call A3M_fnc_createList;
};
