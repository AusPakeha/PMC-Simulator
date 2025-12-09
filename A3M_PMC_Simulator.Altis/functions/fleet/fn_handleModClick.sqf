ModSelection = _this select 1;

switch (ModSelection) do {
    case 0: {
        hint "No mods are required to access this content. Official DLCs may be required in some cases.";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "Stock A3 - Select a Category"];
    };
    case 1: {
        hint "Use of this selection requires a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 1;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "RHS: Escalation - Select a Category"];
    };
    case 2: {
        hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 0;
        Ace3_Enabled = 1;
        lbClear 1575;
        lbAdd [1575, "Ace 3 - Select Support Category."];
    };
    case 3: {
        hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 1;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "Apex Drakon - Select Robotics Category."];
    };
    case 4: {
        hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 1;
        WS_Enabled = 0;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "Reaction Forces CDLC - Select a Category."];
    };
    case 5: {
        hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 1;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "Western Sahara CDLC - Select a Category."];
    };
    case 6: {
        hint "Use of this content may require a mod to be installed. Please be sure the selected mod is installed prior to purchase";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 1;
        lbClear 1575;
        lbAdd [1575, "Expeditionary Forces CDLC - Select a Category."];
    };
    default {
        hint "Invalid selection made. No mods will be enabled.";
        RHS_Support_Enabled = 0;
        Ace3_Enabled = 0;
        Apex_Enabled = 0;
        RF_Enabled = 0;
        WS_Enabled = 0;
        EF_Enabled = 0;
        lbClear 1575;
        lbAdd [1575, "Stock A3 - Select a Category"];
    };
};