/*

	  /$$$$$$   /$$$$$$  /$$      /$$       /$$$$$$$  /$$      /$$  /$$$$$$         /$$$$$$  /$$                         /$$             /$$
	 /$$__  $$ /$$__  $$| $$$    /$$$      | $$__  $$| $$$    /$$$ /$$__  $$       /$$__  $$|__/                        | $$            | $$
	| $$  \ $$|__/  \ $$| $$$$  /$$$$      | $$  \ $$| $$$$  /$$$$| $$  \__/      | $$  \__/ /$$ /$$$$$$/$$$$  /$$   /$$| $$  /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$
	| $$$$$$$$   /$$$$$/| $$ $$/$$ $$      | $$$$$$$/| $$ $$/$$ $$| $$            |  $$$$$$ | $$| $$_  $$_  $$| $$  | $$| $$ |____  $$|_  $$_/   /$$__  $$ /$$__  $$
	| $$__  $$  |___  $$| $$  $$$| $$      | $$____/ | $$  $$$| $$| $$             \____  $$| $$| $$ \ $$ \ $$| $$  | $$| $$  /$$$$$$$  | $$    | $$  \ $$| $$  \__/
	| $$  | $$ /$$  \ $$| $$\  $ | $$      | $$      | $$\  $ | $$| $$    $$       /$$  \ $$| $$| $$ | $$ | $$| $$  | $$| $$ /$$__  $$  | $$ /$$| $$  | $$| $$
	| $$  | $$|  $$$$$$/| $$ \/  | $$      | $$      | $$ \/  | $$|  $$$$$$/      |  $$$$$$/| $$| $$ | $$ | $$|  $$$$$$/| $$|  $$$$$$$  |  $$$$/|  $$$$$$/| $$
	|__/  |__/ \______/ |__/     |__/      |__/      |__/     |__/ \______/        \______/ |__/|__/ |__/ |__/ \______/ |__/ \_______/   \___/   \______/ |__/

	 Fleet Management Module V 3.0 by Cody Salazar AKA Fr33d0m
	 www.A3MilSim.com

	Last Modified: 4/15/2015

	License:
	You can do whatever you were going to do anyway. Just give me the credit i'm due, and don't outright steal my shit and call it your own. If I find it, I'll be pissed.
	if you want to repay me for all my hard work, come and play arma with me! I hang out at a MilSim unit known as A3M (A3 MilSim)
	Come and visit us at ts3.a3milsim.com:1911

	WE LOVE JOINT OPS with OTHER units!!

	www.A3MilSim.com (A3 MilSim)
	All Rights Reserved

	for Information and Inquiries, EMAIL: salazar@a3milsim.com

	Credits & Thanks:

	My wife, for not only supporting my modding ventures, but actually jumping in and helping with mods when she can. What a gal!

	And last, but definitely not least, the A3 community, who through over 250+ encouraging messages highly encouraged me to continue this project. I'm glad you like it,
	and I hope you enjoy the things I have in the works!

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

// Addon Options - Enabled By default? 1 = Yes, 0 = No.

// Check for RHS
if ((isClass (configfile >> "CfgPatches" >> "rhsusf_main")) && (isClass (configfile >> "CfgPatches" >> "rhs_main"))) then {
	RHS_Support_Enabled = 1;
} else {
	RHS_Support_Enabled = 0;
};

// Check for Ace3
if (isClass (configfile >> "CfgPatches" >> "ace_main")) then {
	Ace3_Enabled = 1;
} else {
	Ace3_Enabled = 0;
};

// Check for EF CDLC
if (isClass (configfile >> "CfgPatches" >> "EF_Data")) then {
	EF_Enabled = 1;
} else {
	EF_Enabled = 0;
};

// Check for RF CDLC
if (isClass (configfile >> "CfgPatches" >> "lxRF_Data")) then {
	RF_Enabled = 1;
} else {
	RF_Enabled = 0;
};

// Check for WS CDLC
if (isClass (configfile >> "CfgPatches" >> "lxWS_Data")) then {
	WS_Enabled = 1;
} else {
	WS_Enabled = 0;
};

// //// //// ///////////////////////////////////////////////////////////////////////////
// Initial Budget for side - Change in ParamsArray!
B_InitialBudget = paramsArray select 1;
// rating to Purchase values
B_vaslimit = 0;
B_Mlimit = 3500;
B_Llimit = 5500;

// Big Ticket Item rank (Expensive Shit locked to a rank)
B_MaxRank = "MAJOR";

// //// //// ////////////////////////////////////////////////////////////////////////////
// load vehicle Prices from Config
// //// //// ////////////////////////////////////////////////////////////////////////////

{
	private _vehicleClass = _x select 0;
	private _price = _x select 1;
	missionNamespace setVariable [_vehicleClass, _price];
} forEach getArray (missionConfigFile >> "CfgFleet" >> "Store" >> "inventory");

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
	_numberText ="";
	{
		_numberText = _numberText + str _x;
		if ((_foreachindex - _modBase) % (_mod) == 0 && _foreachindex != _digitsCount) then {
			_numberText = _numberText +", ";
		};
	} forEach _digits;
	_numberText
};

// Update Budget Balance in GUI
DoBudget = {
	disableSerialization;
	   // get the dialog display (a viewport)
	_Bdisplay = findDisplay 420;
	if (str (_Bdisplay) != "no display") then {
		_ChildControl = _Bdisplay displayCtrl 1170;
		// Change It
		form_B_DefenseBudget = [B_DefenseBudget] call A3M_handle_number;
		_ChildControl ctrlSetStructuredText parseText format ["$%1", form_B_DefenseBudget];
	};
};
[] call DoBudget;

// //// //// /////////////////////////////////////////////////////////////////////////////////
// Update Total Balance in GUI
DoTotal = {
	disableSerialization;
	   // get the dialog display (a viewport)
	_BTdisplay = findDisplay 420;
	if (str (_BTdisplay) != "no display") then {
		_ChildControl2 = _BTdisplay displayCtrl 1171;
		// Change It
		form_B_TotalCost = [B_TotalCost] call A3M_handle_number;
		_ChildControl2 ctrlSetStructuredText parseText format ["$%1", form_B_TotalCost];
	};
};
[] call DoTotal;

// //// //// ////////////////////////////////////////////////////////////////////////////////
// Show Current rank in GUI
DoRankChk = {
	disableSerialization;
	   // get the dialog display (a viewport)
	_BRdisplay = findDisplay 420;
	if (str (_BRdisplay) != "no display") then {
		_ChildControl3 = _BRdisplay displayCtrl 1172;
		// Change It
		_prank = rank player;
		_Pnum = rating player;
		_ChildControl3 ctrlSetStructuredText parseText format ["Rank is %1<br />Rating is %2", _prank, _Pnum];
	};
};
[] call DoRankChk;

// //// //// ////////////////////////////////////////////////////////////////////////////////////////////////////
// Handle the menu clicks (Parent class)
A3M_fnc_VhandleClick = {
	TheSelection = _this select 1;
	hint "You have made a selection. Click *Purchase* button to buy.";
};

// //// //// ////////////////////////////////////////////////////////////////////////////////////////////////
// Supported Modifications:
lbAdd [2175, "Stock A3"];
lbAdd [2175, "RHS: Escalation"];
lbAdd [2175, "Ace 3"];
lbAdd [2175, "Expeditionary Forces"];
lbAdd [2175, "Reaction Forces"];
lbAdd [2175, "Western Sahara"];

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
    private _rhs = getArray (_wheeledConfig >> "rhs");
    private _ef = getArray (_wheeledConfig >> "ef");
    private _rf = getArray (_wheeledConfig >> "rf");
    private _ws = getArray (_wheeledConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1575, "CfgVehicles", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws, _color] call A3M_fnc_createList;
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
    private _a3 = getArray (_fixedWingConfig >> "a3f");
    private _rhs = getArray (_fixedWingConfig >> "rhsf");
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs, _color] call A3M_fnc_createList;
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
    private _rhs = getArray (_heliConfig >> "rhs");
    private _ef = getArray (_heliConfig >> "ef");
    private _rf = getArray (_heliConfig >> "rf");
    private _ws = getArray (_heliConfig >> "ws");
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef, _color] call A3M_fnc_createList;
	};
	if (RF_Enabled == 1) then {
		[1575, "CfgVehicles", _rf, _color] call A3M_fnc_createList;
	};
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws, _color] call A3M_fnc_createList;
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
	private _color = [0.738, 0.714, 0.417, 1];

	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws, _color] call A3M_fnc_createList;
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
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (WS_Enabled == 1) then {
		[1575, "CfgVehicles", _ws, _color] call A3M_fnc_createList;
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
    private _rhs = getArray (_supportConfig >> "rhs");
    private _ef = getArray (_supportConfig >> "ef");
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
	if (RHS_Support_Enabled == 1) then {
		[1575, "CfgVehicles", _rhs, _color] call A3M_fnc_createList;
	};
	if (EF_Enabled == 1) then {
		[1575, "CfgVehicles", _ef, _color] call A3M_fnc_createList;
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
	private _color = [0.738, 0.714, 0.417, 1];

	[1575, "CfgVehicles", _a3, _color] call A3M_fnc_createList;
};
