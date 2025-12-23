ModSelection = _this select 1;

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

// Check for RHS
if ((isClass (configfile >> "CfgPatches" >> "rhsusf_main")) && (isClass (configfile >> "CfgPatches" >> "rhs_main"))) then {
	RHS_Support_Enabled = 1;
} else {
	RHS_Support_Enabled = 0;
};

// Build array of available mods (stock always first, then enabled mods)
private _availableMods = ["stock"];
if (Ace3_Enabled == 1) then {_availableMods pushBack "ace3"; };
if (EF_Enabled == 1) then { _availableMods pushBack "ef"; };
if (RF_Enabled == 1) then { _availableMods pushBack "rf"; };
if (WS_Enabled == 1) then { _availableMods pushBack "ws"; };
if (RHS_Support_Enabled == 1) then { _availableMods pushBack "rhs"; };

// Handle selection
if (ModSelection >= count _availableMods) then {
    // Invalid selection, default to stock
    hint "Invalid selection made. No mods will be enabled.";
            Ace3_Enabled = 0;
            EF_Enabled = 0;
            RF_Enabled = 0;
            WS_Enabled = 0;
            RHS_Support_Enabled = 0;
    lbClear 1575;
    lbAdd [1575, "Stock A3 - Select a Category"];
} else {
    private _selectedMod = _availableMods select ModSelection;
    switch (_selectedMod) do {
        case "stock": {
            hint "No mods are required to access this content. Official DLCs may be required in some cases.";
            Ace3_Enabled = 0;
            EF_Enabled = 0;
            RF_Enabled = 0;
            WS_Enabled = 0;
            RHS_Support_Enabled = 0;
            lbClear 1575;
            lbAdd [1575, "Stock A3 - Select a Category"];
        };
        case "ace3": {
            hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
            Ace3_Enabled = 1;
            EF_Enabled = 0;
            RF_Enabled = 0;
            WS_Enabled = 0;
            RHS_Support_Enabled = 0;
            lbClear 1575;
            lbAdd [1575, "ACE 3 - Select a Category"];
        };
        case "ef": {
            hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
            Ace3_Enabled = 0;
            EF_Enabled = 1;
            RF_Enabled = 0;
            WS_Enabled = 0;
            RHS_Support_Enabled = 0;
            lbClear 1575;
            lbAdd [1575, "Expeditionary Forces CDLC - Select a Category."];
        };
        case "rf": {
            hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
            Ace3_Enabled = 0;
            EF_Enabled = 0;
            RF_Enabled = 1;
            WS_Enabled = 0;
            RHS_Support_Enabled = 0;
            lbClear 1575;
            lbAdd [1575, "Reaction Forces CDLC - Select a Category."];
        };
        case "ws": {
            hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
            Ace3_Enabled = 0;
            EF_Enabled = 0;
            RF_Enabled = 0;
            WS_Enabled = 1;
            RHS_Support_Enabled = 0;
            lbClear 1575;
            lbAdd [1575, "Western Sahara CDLC - Select a Category."];
        };
        case "rhs": {
            hint "Use of this selection requires a mod to be installed. Please be sure the selected mod is installed prior to purchase";
            Ace3_Enabled = 0;
            EF_Enabled = 0;
            RF_Enabled = 0;
            WS_Enabled = 0;
            RHS_Support_Enabled = 1;
            lbClear 1575;
            lbAdd [1575, "RHS: Escalation - Select a Category"];
        };
    };
};
