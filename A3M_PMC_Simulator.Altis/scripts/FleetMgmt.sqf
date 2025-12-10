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

// Check for Ace3
if (isClass (configfile >> "CfgPatches" >> "ace_main")) then {
	Ace3_Enabled = 1;
} else {
	Ace3_Enabled = 0;
};

// ///////////////////////////////////////////////////////////////////////////////////
// Initial Budget for side - Change in ParamsArray!
B_InitialBudget = paramsArray select 1;
// rating to Purchase values
B_vaslimit = 0;
B_Mlimit = 3500;
B_Llimit = 5500;

// Big Ticket Item rank (Expensive Shit locked to a rank)
B_MaxRank = "MAJOR";

// ////////////////////////////////////////////////////////////////////////////////////
// Load Vehicle Prices from Config
// ////////////////////////////////////////////////////////////////////////////////////

{
    private _vehicleClass = _x select 0;
    private _price = _x select 1;
    missionNamespace setVariable [_vehicleClass, _price];
} forEach getArray (missionConfigFile >> "CfgFleet" >> "Store" >> "inventory");

if (isNil "_MATV") then {
	_MATV ="";
};

// ////////////////////////////////////////////////////////////////////////////////////////////////
// Initial Budget Creator
// //////////////////////////////////////////////////////////////////////////////////////////////
if (isnil "B_DefenseBudget") then {
	B_DefenseBudget= B_InitialBudget;
	publicVariable "B_DefenseBudget";
};
if (isnil "B_TotalCost") then {
	B_TotalCost= 0;
	publicVariable "B_TotalCost";
};

// /////////////////////////////////////////////////////////////////////////////////////////
// Open dialog
_handle = CreateDialog "A3M_store";

// /////////////////////////////////////////////////////////////////////////////////////////
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

// /////////////////////////////////////////////////////////////////////////////////////////
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

// ////////////////////////////////////////////////////////////////////////////////////////
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

// ////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Handle the menu clicks (Parent class)
A3M_fnc_VhandleClick = {
	TheSelection = _this select 1;
	hint "You have made a selection. Click *Purchase* button to buy.";
};

// ////////////////////////////////////////////////////////////////////////////////////////////////////////
// Supported Modifications:
lbAdd [2175, "Stock A3"];
lbAdd [2175, "RHS: Escalation"];
lbAdd [2175, "Ace 3"];
lbAdd [2175, "Reaction Forces"];
lbAdd [2175, "Western Sahara"];
lbAdd [2175, "Expeditionary Forces"];

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "MAT-V Unarmed Vehicle Price: $470, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_MRAP_01_F">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "MAT-V Armed (.50 HMG) Price: $500, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_MRAP_01_hmg_F">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "MAT-V Armed (40mm GMG) Price: $520, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_MRAP_01_gmg_F">> "picture"); lbSetPicture [1575, 2, _Pic3 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "HEMTT Troop Transport - Covered Price: $125, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Truck_01_covered_F">> "picture"); lbSetPicture [1575, 3, _Pic4 ]; lbSetPictureColor [1575, 3, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "HEMTT Troop Transport - Open Price: $90, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Truck_01_transport_F">> "picture"); lbSetPicture [1575, 4, _Pic5 ]; lbSetPictureColor [1575, 4, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "ATV Price: $7, 500.00"];
	getText(configFile >> "CfgVehicles">> "B_Quadbike_01_F">> "picture"); lbSetPicture [1575, 5, _Pic6 ]; lbSetPictureColor [1575, 5, [0.738, 0.714, 0.417, 1 ]];

	if (RHS_Support_Enabled == 1) then {
		lbAdd [1575, "GAZ-66 Price: $125, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_gaz66_msv">> "picture"); lbSetPicture [1575, 6, _Pic7 ]; lbSetPictureColor [1575, 6, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "GAZ-66 (Open) Price: $125, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_gaz66o_msv">> "picture"); lbSetPicture [1575, 7, _Pic8 ]; lbSetPictureColor [1575, 7, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "GAZ-66 (AP-2) Price: $125, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_gaz66_ap2_msv">> "picture"); lbSetPicture [1575, 8, _Pic9 ]; lbSetPictureColor [1575, 8, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "GAZ-66 (ESB-8IM) Price: $125, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_gaz66_repair_msv">> "picture"); lbSetPicture [1575, 9, _Pic10 ]; lbSetPictureColor [1575, 9, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "UAZ-469 Price: $15, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_uaz_vdv">> "picture"); lbSetPicture [1575, 10, _Pic11 ]; lbSetPictureColor [1575, 10, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "URAL-4320 Price: $73, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhs_ural_msv">> "picture"); lbSetPicture [1575, 11, _Pic12 ]; lbSetPictureColor [1575, 11, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "URAL-4320 (Open) Price: $78, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhs_ural_open_msv">> "picture"); lbSetPicture [1575, 12, _Pic13 ]; lbSetPictureColor [1575, 12, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army - Woodland ) M1025A2 (Unarmed) Price: $74, 969.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m1025_w">> "picture"); lbSetPicture [1575, 13, _Pic14 ]; lbSetPictureColor [1575, 13, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland ) M1025A2 (Unarmed/Snorkel) Price: $75, 969.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m1025_w_s">> "picture"); lbSetPicture [1575, 14, _Pic15 ]; lbSetPictureColor [1575, 14, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army - Woodland ) M1025A2 (M2) Price: $84, 969.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m1025_w_m2">> "picture"); lbSetPicture [1575, 15, _Pic16 ]; lbSetPictureColor [1575, 15, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland ) M1025A2 (M2/Snorkel) Price: $85, 969.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m1025_w_s_m2">> "picture"); lbSetPicture [1575, 16, _Pic17 ]; lbSetPictureColor [1575, 16, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2 Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_wd_fmtv_usarmy">> "picture"); lbSetPicture [1575, 17, _Pic18 ]; lbSetPictureColor [1575, 17, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2 (Open) Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_wd_open_fmtv_usarmy">> "picture"); lbSetPicture [1575, 18, _Pic19 ]; lbSetPictureColor [1575, 18, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2 (Flatbed) Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy">> "picture"); lbSetPicture [1575, 19, _Pic20 ]; lbSetPictureColor [1575, 19, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_wd_fmtv_usarmy">> "picture"); lbSetPicture [1575, 20, _Pic21 ]; lbSetPictureColor [1575, 20, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B (Open) Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy">> "picture"); lbSetPicture [1575, 21, _Pic22 ]; lbSetPictureColor [1575, 21, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B (Flatbed) Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy">> "picture"); lbSetPicture [1575, 22, _Pic23 ]; lbSetPictureColor [1575, 22, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B (M2) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy">> "picture"); lbSetPicture [1575, 23, _Pic24 ]; lbSetPictureColor [1575, 23, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B (M2/Open) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy">> "picture"); lbSetPicture [1575, 24, _Pic25 ]; lbSetPictureColor [1575, 24, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2014) M1078A1P2-B (M2/Flatbed) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy">> "picture"); lbSetPicture [1575, 25, _Pic26 ]; lbSetPictureColor [1575, 25, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2 Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_wd_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 26, _Pic27 ]; lbSetPictureColor [1575, 26, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2 (Open) Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_wd_open_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 27, _Pic28 ]; lbSetPictureColor [1575, 27, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2 (Flatbed) Price: $200, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 28, _Pic29 ]; lbSetPictureColor [1575, 28, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_wd_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 29, _Pic30 ]; lbSetPictureColor [1575, 29, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B (Open) Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 30, _Pic31 ]; lbSetPictureColor [1575, 30, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B (Flatbed) Price: $200, 500.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 31, _Pic32 ]; lbSetPictureColor [1575, 31, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B (M2) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 32, _Pic33 ]; lbSetPictureColor [1575, 32, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B (M2/Open) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 33, _Pic34 ]; lbSetPictureColor [1575, 33, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) M1083A1P2-B (M2/Flatbed) Price: $210, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy_10">> "picture"); lbSetPicture [1575, 34, _Pic35 ]; lbSetPictureColor [1575, 34, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army - Woodland) M1097A2, 2dr cgo open Price: $61, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_4dr">> "picture"); lbSetPicture [1575, 35, _Pic36 ]; lbSetPictureColor [1575, 35, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army - Woodland) M1097A2, 2dr cgo halfsoftop Price: $63, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_4dr_halftop">> "picture"); lbSetPicture [1575, 36, _Pic37 ]; lbSetPictureColor [1575, 36, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army - Woodland) M1097A2, 2dr cgo softop Price: $65, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_4dr_fulltop">> "picture"); lbSetPicture [1575, 37, _Pic38 ]; lbSetPictureColor [1575, 37, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 2dr cgo open w/ snorkel Price: $61, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_2dr">> "picture"); lbSetPicture [1575, 38, _Pic39 ]; lbSetPictureColor [1575, 38, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 2dr cgo halfsoftop w/ snorkel Price: $63, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_2dr_halftop">> "picture"); lbSetPicture [1575, 39, _Pic40 ]; lbSetPictureColor [1575, 39, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 2dr cgo softop w/ snorkel Price: $65, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_2dr_fulltop">> "picture"); lbSetPicture [1575, 40, _Pic41 ]; lbSetPictureColor [1575, 40, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 4dr cgo open w/ snorkel Price: $61, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_4dr">> "picture"); lbSetPicture [1575, 41, _Pic42 ]; lbSetPictureColor [1575, 41, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 4dr cgo halfsoftop w/ snorkel Price: $63, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_4dr_halftop">> "picture"); lbSetPicture [1575, 42, _Pic43 ]; lbSetPictureColor [1575, 42, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (USMC - Woodland) M1123, 4dr cgo softop w/ snorkel Price: $65, 665.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_m998_w_s_4dr_fulltop">> "picture"); lbSetPicture [1575, 43, _Pic44 ]; lbSetPictureColor [1575, 43, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) Woodland RG-33 (Unarmed) Price: $460, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_rg33_wd">> "picture"); lbSetPicture [1575, 44, _Pic45 ]; lbSetPictureColor [1575, 44, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "USA (Army 2010) Woodland RG-33 (M2) Price: $475, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_rg33_m2_wd">> "picture"); lbSetPicture [1575, 45, _Pic46 ]; lbSetPictureColor [1575, 45, [0.738, 0.714, 0.417, 1 ]];
	};
	if (RF_Enabled == 1) then {
		lbadd [1575, "ION PMC Ram 1500 Price: $13, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Pickup_rf">> "picture"); lbSetPicture [1575, 46, _Pic47 ]; lbSetPictureColor [1575, 46, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC Ram 1500 (MMG) Price: $15, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Pickup_mmg_rf">> "picture"); lbSetPicture [1575, 47, _Pic48 ]; lbSetPictureColor [1575, 47, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC Ram 1500 (RCWS) Price: $20, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Pickup_rcws_rf">> "picture"); lbSetPicture [1575, 48, _Pic49 ]; lbSetPictureColor [1575, 48, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC Ram 1500 (AA) Price: $25, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Pickup_aat_rf">> "picture"); lbSetPicture [1575, 49, _Pic50 ]; lbSetPictureColor [1575, 49, [0.738, 0.714, 0.417, 1 ]];
	};
	if (WS_Enabled == 1) then {
		lbadd [1575, "ION PMC ATV Price: $7, 500.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Quadbike_01_lxWS">> "picture"); lbSetPicture [1575, 50, _Pic51 ]; lbSetPictureColor [1575, 50, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC Offroad Price: $10, 500.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Offroad_lxWS">> "picture"); lbSetPicture [1575, 51, _Pic52 ]; lbSetPictureColor [1575, 51, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC Offroad (HMG) Price: $12, 500.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Offroad_armed_lxWS">> "picture"); lbSetPicture [1575, 52, _Pic53 ]; lbSetPictureColor [1575, 52, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "ION PMC KamAZ Transport (Covered) Price: $13, 500.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Truck_02_covered_lxWS">> "picture"); lbSetPicture [1575, 53, _Pic54 ]; lbSetPictureColor [1575, 53, [0.738, 0.714, 0.417, 1 ]];
	};
	if (EF_Enabled == 1) then {
		lbadd [1575, "MJTF ATV Price: $7, 500.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Quadbike_01_MJTF_Wdl">> "picture"); lbSetPicture [1575, 54, _Pic55 ]; lbSetPictureColor [1575, 54, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF Ram 1500 Price: $13, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Pickup_MJTF_Wdl">> "picture"); lbSetPicture [1575, 55, _Pic56 ]; lbSetPictureColor [1575, 55, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF Ram 1500 (Comms) Price: $15, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Pickup_Comms_MJTF_Wdl">> "picture"); lbSetPicture [1575, 56, _Pic57 ]; lbSetPictureColor [1575, 56, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF Ram 1500 (MMG) Price: $25, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Pickup_mmg_MJTF_Wdl">> "picture"); lbSetPicture [1575, 57, _Pic58 ]; lbSetPictureColor [1575, 57, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV Price: $20, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_MJTF_Wdl">> "picture"); lbSetPicture [1575, 58, _Pic59 ]; lbSetPictureColor [1575, 58, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV (GMG) Price: $22, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_gmg_MJTF_Wdl">> "picture"); lbSetPicture [1575, 59, _Pic60 ]; lbSetPictureColor [1575, 59, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV (HMG) Price: $60, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_hmg_MJTF_Wdl">> "picture"); lbSetPicture [1575, 60, _Pic61 ]; lbSetPictureColor [1575, 60, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV (AT) Price: $75, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_AT_MJTF_Wdl">> "picture"); lbSetPicture [1575, 61, _Pic62 ]; lbSetPictureColor [1575, 61, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV (FSV) Price: $85, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_FSV_MJTF_Wdl">> "picture"); lbSetPicture [1575, 62, _Pic63 ]; lbSetPictureColor [1575, 62, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF M-ATV (LAAD) Price: $100, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_MRAP_01_LAAD_MJTF_Wdl">> "picture"); lbSetPicture [1575, 63, _Pic64 ]; lbSetPictureColor [1575, 63, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF HEMTT Transport Price: $120, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Truck_01_transport_MJTF_Wdl">> "picture"); lbSetPicture [1575, 64, _Pic65 ]; lbSetPictureColor [1575, 64, [0.738, 0.714, 0.417, 1 ]];
		lbadd [1575, "MJTF HEMTT Transport (Covered) Price: $110, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Truck_01_covered_MJTF_Wdl">> "picture"); lbSetPicture [1575, 65, _Pic66 ]; lbSetPictureColor [1575, 65, [0.738, 0.714, 0.417, 1 ]];
	};
};

// //////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "A-164 Wipeout Anti-Tank Aircraft Price: $11, 800, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Plane_CAS_01_F">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "To-199 Neophron Price: $11, 000, 000.00"];
	getText(configFile >> "CfgVehicles">> "O_Plane_CAS_02_F">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];

	if (RHS_Support_Enabled == 1) then {
		lbAdd [1575, "RUS (VVS grey) Su-25SM Price: $11, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "RHS_Su25SM_vvs">> "picture"); lbSetPicture [1575, 2, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS (VVS camo) Su-25SM Price: $11, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "RHS_Su25SM_vvsc">> "picture"); lbSetPicture [1575, 3, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "A-10A Thunderbolt II Price: $11, 800, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhs_a10">> "picture"); lbSetPicture [1575, 4, _Pic3 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "Hercules C-130J Price: $70, 370, 000.00"];
		getText(configFile >> "CfgVehicles">> "RHS_C130J">> "picture"); lbSetPicture [1575, 5, _Pic4 ]; lbSetPictureColor [1575, 3, [0.738, 0.714, 0.417, 1 ]];
	};
};

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "UH-80 Ghosthawk Combat Transport Helicopter Price: $30, 500, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Heli_Transport_01_F">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "AH-9 Pawnee Combat Support Helicopter Price: $2, 300, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Heli_Light_01_dynamicLoadout_F">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "MH-9 Hummingbird Light Transport Helicopter Price: $2, 000, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Heli_Light_01_F">> "picture"); lbSetPicture [1575, 2, _Pic3 ]; lbSetPictureColor [1575, 3, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "PO-30 Orca (Black) Price: $14, 300, 000.00"];
	getText(configFile >> "CfgVehicles">> "O_Heli_Light_02_unarmed_F">> "picture"); lbSetPicture [1575, 3, _Pic4 ]; lbSetPictureColor [1575, 4, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "PO-30 Orca Price: $16, 800, 000.00"];
	getText(configFile >> "CfgVehicles">> "O_Heli_Light_02_dynamicLoadout_F">> "picture"); lbSetPicture [1575, 4, _Pic5 ]; lbSetPictureColor [1575, 5, [0.738, 0.714, 0.417, 1 ]];

	if (RHS_Support_Enabled == 1) then {
		lbAdd	[1575, "USA (Army 2010) CH-47 Price: $38, 550, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_ch_47f_10">>	"picture");	lbSetPicture	[	1575, 5, _Pic6	];	lbSetPictureColor	[	1575, 6, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2010) CH-47 (D) Price: $38, 550, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_ch_47f_light_10">>	"picture");	lbSetPicture	[	1575, 6, _Pic7	];	lbSetPictureColor	[	1575, 7, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2014) CH-47 Price: $38, 550, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_ch_47f">>	"picture");	lbSetPicture	[	1575, 7, _Pic8	];	lbSetPictureColor	[	1575, 8, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2014) CH-47 (D) Price: $38, 550, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_ch_47f_light">>	"picture");	lbSetPicture	[	1575, 8, _Pic9	];	lbSetPictureColor	[	1575, 9, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (USMC 2010) UH-1Y (FFAR/MG) Price: $21, 600, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh1y">>	"picture");	lbSetPicture	[	1575, 10, _Pic11	];	lbSetPictureColor	[	1575, 10, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (USMC 2010) UH-1Y (FFAR) Price: $21, 600, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh1y_ffar">>	"picture");	lbSetPicture	[	1575, 11, _Pic12	];	lbSetPictureColor	[	1575, 11, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (USMC 2010) UH-1Y (Unarmed) Price: $21, 600, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh1y_unarmed">>	"picture");	lbSetPicture	[	1575, 12, _Pic13	];	lbSetPictureColor	[	1575, 12, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2014) UH-60M Price: $21, 300, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh60m">>	"picture");	lbSetPicture	[	1575, 13, _Pic14	];	lbSetPictureColor	[	1575, 13, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2014) UH-60M MEV Price: $21, 300, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh60m_mev2">>	"picture");	lbSetPicture	[	1575, 14, _Pic15	];	lbSetPictureColor	[	1575, 14, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd	[1575, "USA (Army 2014) UH-60M MEV (ESSS) Price: $21, 300, 000.00	"];
		getText	(configFile >>	"CfgVehicles">>	"rhs_uh60m_mev">>	"picture");	lbSetPicture	[	1575, 15, _Pic16	];	lbSetPictureColor	[	1575, 15, [	0.9, 0.9, 0.9, 0.8	]];
		lbAdd [1575, "RUS Ka-52 (Grey) Price: $16, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Ka52_vvs">> "picture"); lbSetPicture [1575, 16, _Pic17 ]; lbSetPictureColor [1575, 16, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Ka-52 (Camo) Price: $16, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Ka52_vvsc">> "picture"); lbSetPicture [1575, 17, _Pic18 ]; lbSetPictureColor [1575, 17, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Ka-60 (Grey) Price: $21, 500, 000"];
		getText(configFile >> "CfgVehicles">> "rhs_ka60_grey">> "picture"); lbSetPicture [1575, 18, _Pic19 ]; lbSetPictureColor [1575, 18, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Ka-60 (Camo) Price: $21, 500, 000"];
		getText(configFile >> "CfgVehicles">> "rhs_ka60_c">> "picture"); lbSetPicture [1575, 19, _Pic20 ]; lbSetPictureColor [1575, 19, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24P Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24P_vdv">> "picture"); lbSetPicture [1575, 20, _Pic21 ]; lbSetPictureColor [1575, 20, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24V Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24V_vdv">> "picture"); lbSetPicture [1575, 21, _Pic22 ]; lbSetPictureColor [1575, 21, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24P (Grey) Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24P_vvs">> "picture"); lbSetPicture [1575, 22, _Pic23 ]; lbSetPictureColor [1575, 22, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24V (Grey) Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24V_vvs">> "picture"); lbSetPicture [1575, 23, _Pic24 ]; lbSetPictureColor [1575, 23, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24P (Camo) Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24P_vvsc">> "picture"); lbSetPicture [1575, 24, _Pic25 ]; lbSetPictureColor [1575, 24, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-24V (Camo) Price: $12, 000, 000"];
		getText(configFile >> "CfgVehicles">> "RHS_Mi24V_vvsc">> "picture"); lbSetPicture [1575, 25, _Pic26 ]; lbSetPictureColor [1575, 25, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMT Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMT_vdv">> "picture"); lbSetPicture [1575, 26, _Pic27 ]; lbSetPictureColor [1575, 26, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMTSh Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMTSh_vdv">> "picture"); lbSetPicture [1575, 27, _Pic28 ]; lbSetPictureColor [1575, 27, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMT (Grey) Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMT_vvs">> "picture"); lbSetPicture [1575, 28, _Pic29 ]; lbSetPictureColor [1575, 28, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMTSh (Grey) Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMTSh_vvs">> "picture"); lbSetPicture [1575, 29, _Pic30 ]; lbSetPictureColor [1575, 29, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMT (Camo) Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMT_vvsc">> "picture"); lbSetPicture [1575, 30, _Pic31 ]; lbSetPictureColor [1575, 30, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8AMTSh (Camo) Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8AMTSh_vvsc">> "picture"); lbSetPicture [1575, 31, _Pic32 ]; lbSetPictureColor [1575, 31, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MT Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8mt_vdv">> "picture"); lbSetPicture [1575, 32, _Pic33 ]; lbSetPictureColor [1575, 32, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MTV-3 Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8MTV3_vdv">> "picture"); lbSetPicture [1575, 33, _Pic34 ]; lbSetPictureColor [1575, 33, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MT (Grey) Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8mt_vvs">> "picture"); lbSetPicture [1575, 34, _Pic35 ]; lbSetPictureColor [1575, 34, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MTV-3 (Grey) Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8MTV3_vvs">> "picture"); lbSetPicture [1575, 35, _Pic36 ]; lbSetPictureColor [1575, 35, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MT (Camo) Price: $9, 000, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8mt_vvsc">> "picture"); lbSetPicture [1575, 36, _Pic37 ]; lbSetPictureColor [1575, 36, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "RUS Mi-8MTV-3 (Camo) Price: $9, 350, 000 "];
		getText(configFile >> "CfgVehicles">> "RHS_Mi8MTV3_vvsc">> "picture"); lbSetPicture [1575, 37, _Pic38 ]; lbSetPictureColor [1575, 37, [0.738, 0.714, 0.417, 1 ]];
	};
	if (RF_enabled == 1) then {
		lbAdd [1575, "ION PMC H225 Supa Puma (Transport) Price: $15, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Heli_EC_01_RF">> "picture"); lbSetPicture [1575, 38, _Pic39 ]; lbSetPictureColor [1575, 38, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "H225M Super Cougar Price: $25, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_Heli_EC_03_RF">> "picture"); lbSetPicture [1575, 39, _Pic40 ]; lbSetPictureColor [1575, 39, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "H225M Super Cougar (Unarmed) Price: $20, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_Heli_EC_04_military_RF">> "picture"); lbSetPicture [1575, 40, _Pic41 ]; lbSetPictureColor [1575, 40, [0.738, 0.714, 0.417, 1 ]];
	};
	if (WS_enabled == 1) then {
		lbAdd [1575, "ION PMC Kasatka (UP) Price: $14, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Heli_Light_02_dynamicLoadout_lxWS">> "picture"); lbSetPicture [1575, 41, _Pic42 ]; lbSetPictureColor [1575, 41, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "ION PMC kataska (UP, Unarmed) Price: $13, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_Heli_Light_02_unarmed_lxWS">> "picture"); lbSetPicture [1575, 42, _Pic43 ]; lbSetPictureColor [1575, 42, [0.738, 0.714, 0.417, 1 ]];
	};
	if (EF_enabled == 1) then {
		lbAdd [1575, "MJTF UH-80 Ghost Hawk Price: $30, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Heli_Transport_01_MJTF_Wdl">> "picture"); lbSetPicture [1575, 43, _Pic44 ]; lbSetPictureColor [1575, 43, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "MJTF UH-80 Ghost Hawk (Stub Wings) Price: $32, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_Heli_Transport_01_pylons_MJTF_Wdl">> "picture"); lbSetPicture [1575, 44, _Pic45 ]; lbSetPictureColor [1575, 44, [0.738, 0.714, 0.417, 1 ]];
	};
};

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	if (WS_Enabled == 1) then {
		lbAdd [1575, "ION PMC Badger IFV (Command) Price: $3, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_APC_Wheeled_01_command_lxWS">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "ION PMC Otokar ARMA (HMG) Price: $3, 500, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_ION_APC_Wheeled_02_hmg_lxWS">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "Badger IFV (ATGM) Price: $4, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "B_APC_Wheeled_01_atgm_lxWS">> "picture"); lbSetPicture [1575, 2, _Pic3 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
	};
};

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "AR-2 Darter Price: $369.00"];
	getText(configFile >> "CfgVehicles">> "B_UAV_01_F">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "UGV Stomper Price: $3, 210, 526.00"];
	getText(configFile >> "CfgVehicles">> "B_UGV_01_F">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "UGV Stomper RCWS Price: $3, 225, 550.00"];
	getText(configFile >> "CfgVehicles">> "B_UGV_01_rcws_F">> "picture"); lbSetPicture [1575, 2, _Pic3 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "Yabhon R3 Price: $16, 900, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_UAV_02_dynamicLoadout_F">> "picture"); lbSetPicture [1575, 3, _Pic4 ]; lbSetPictureColor [1575, 3, [0.738, 0.714, 0.417, 1 ]];
	if (WS_enabled == 1) then {
		lbAdd [1575, "ION PMC AP-5 Bustard Price: $16, 900, 000.00"];
		getText(configFile >> "CfgVehicles">> "ION_UAV_02_lxWS">> "picture"); lbSetPicture [1575, 3, _Pic4 ]; lbSetPictureColor [1575, 4, [0.738, 0.714, 0.417, 1 ]];
	};
};

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "HEMTT A4 M978A4 Fuel Servicing Truck (Tanker) Price: $1, 200, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Truck_01_fuel_F">> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "Assorted Small Ammo Shipment (NATO) Price: $6, 720.00"];
	getText(configFile >> "CfgVehicles">> "Box_NATO_Ammo_F">> "picture"); lbSetPicture [1575, 1, _Pic2 ]; lbSetPictureColor [1575, 1, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "Assorted Small Weapons Shipment (NATO) Price: $91, 800.00"];
	getText(configFile >> "CfgVehicles">> "Box_NATO_Wps_F">> "picture"); lbSetPicture [1575, 2, _Pic3 ]; lbSetPictureColor [1575, 2, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "Speed Boat (Minigun) Price: $1, 275, 000.00"];
	getText(configFile >> "CfgVehicles">> "B_Boat_Armed_01_minigun_F">> "picture"); lbSetPicture [1575, 3, _Pic4 ]; lbSetPictureColor [1575, 3, [0.738, 0.714, 0.417, 1 ]];
	lbAdd [1575, "Assault Rhib Price: $1, 275.00"];
	getText(configFile >> "CfgVehicles">> "B_Boat_Transport_01_F">> "picture"); lbSetPicture [1575, 4, _Pic5 ]; lbSetPictureColor [1575, 4, [0.738, 0.714, 0.417, 1 ]];
	if (RHS_Support_Enabled == 1) then {
		lbAdd [1575, "330 Assorted Russian Weapons / Ammunition Price: $2, 106, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhs_weapon_crate">> "picture"); lbSetPicture [1575, 5, _Pic6 ]; lbSetPictureColor [1575, 5, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "460 Assorted U.S. Weapons / Ammunition Price: $6, 900, 000.00"];
		getText(configFile >> "CfgVehicles">> "rhsusf_weapon_crate">> "picture"); lbSetPicture [1575, 6, _Pic7 ]; lbSetPictureColor [1575, 6, [0.738, 0.714, 0.417, 1 ]];
	};
	if (EF_Enabled == 1) then {
		lbAdd [1575, "MJTF Combat Boat (Unarmed) Price: $1, 275, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_CombatBoat_Unarmed_MJTF_Wdl">> "picture"); lbSetPicture [1575, 7, _Pic8 ]; lbSetPictureColor [1575, 7, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "MJTF Combat Boat (HMG) Price: $1, 500, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_ComabtBoat_HMG_MJTF_Wdl">> "picture"); lbSetPicture [1575, 8, _Pic9 ]; lbSetPictureColor [1575, 8, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "MJTF Combat Boat (AT) Price: $1, 750, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_CombatBoat_AT_MJTF_Wdl">> "picture"); lbSetPicture [1575, 9, _Pic10 ]; lbSetPictureColor [1575, 9, [0.738, 0.714, 0.417, 1 ]];
		lbAdd [1575, "MJTF LCC-1 Price: $2, 000, 000.00"];
		getText(configFile >> "CfgVehicles">> "EF_B_LCC_MJTF_Wdl">> "picture"); lbSetPicture [1575, 10, _Pic11 ]; lbSetPictureColor [1575, 10, [0.738, 0.714, 0.417, 1 ]];
	};
};

// ///////////////////////////////////////////////////////////////////////////////////////////////////////
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

	lbAdd [1575, "Transport UH-60M Price: $22, 500, 000.00 "];
	getText(configFile >> "CfgVehicles">> "rhs_uh60m" >> "picture"); lbSetPicture [1575, 0, _Pic1 ]; lbSetPictureColor [1575, 0, [0.738, 0.714, 0.417, 1 ]];
};
