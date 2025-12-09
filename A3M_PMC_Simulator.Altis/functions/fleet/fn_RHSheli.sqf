private _rank = rank player;

switch (TheSelection) do {
    case 5: {
        if ((B_DefenseBudget < rhs_ch_47f_10) or ( _rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ch_47f_10]
        } else {
            _MATV="rhs_ch_47f_10" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ch_47f_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ch_47f_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) CH-47 for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ch_47f_10];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 6: {
        if ((B_DefenseBudget < rhs_ch_47f_light_10) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ch_47f_light_10]
        } else {
            _MATV="rhs_ch_47f_light_10" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ch_47f_light_10);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ch_47f_light_10);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2010) CH-47 (D) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ch_47f_light_10];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 7: {
        if ((B_DefenseBudget < rhs_ch_47f) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ch_47f]
        } else {
            _MATV="rhs_ch_47f" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ch_47f);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ch_47f);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) CH-47 for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ch_47f];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 8: {
        if ((B_DefenseBudget < rhs_ch_47f_light) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ch_47f_light]
        } else {
            _MATV="rhs_ch_47f_light" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ch_47f_light);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ch_47f_light);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) CH-47 (D) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ch_47f_light];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 9: {
        if ((B_DefenseBudget < rhs_uh1y) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh1y]
        } else {
            _MATV="rhs_uh1y" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh1y);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh1y);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC 2010) UH-1Y (FFAR/MG) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh1y];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 10: {
        if ((B_DefenseBudget < rhs_uh1y_ffar) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh1y_ffar]
        } else {
            _MATV="rhs_uh1y_ffar" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh1y_ffar);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh1y_ffar);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC 2010) UH-1Y (FFAR) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh1y_ffar];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 11: {	
        if ((B_DefenseBudget < rhs_uh1y_unarmed) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh1y_unarmed]
        } else {
            _MATV="rhs_uh1y_unarmed" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh1y_unarmed);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh1y_unarmed);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (USMC 2010) UH-1Y (Unarmed) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh1y_unarmed];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 12: {
        if ((B_DefenseBudget < rhs_uh60m) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh60m]
        } else {
            _MATV="rhs_uh60m" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh60m);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh60m);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) UH-60M for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh60m];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 13: {
        if ((B_DefenseBudget < rhs_uh60m_mev2) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh60m_mev2]
        } else {
            _MATV="rhs_uh60m_mev2" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh60m_mev2);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh60m_mev2);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) UH-60M MEV for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh60m_mev2];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 14: {
        if ((B_DefenseBudget < rhs_uh60m_mev) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_uh60m_mev]
        } else {
            _MATV="rhs_uh60m_mev" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_uh60m_mev);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_uh60m_mev);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) USA (Army 2014) UH-60M MEV (ESSS)for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_uh60m_mev];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 15: {
        if ((B_DefenseBudget < RHS_Ka52_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Ka52_vvs]
        } else {
            _MATV="RHS_Ka52_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Ka52_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Ka52_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Ka-52 (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Ka52_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 16: {
        if ((B_DefenseBudget < RHS_Ka52_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Ka52_vvsc]
        } else {
            _MATV="RHS_Ka52_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Ka52_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Ka52_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Ka-52 (Camo) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Ka52_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 17: {
        if ((B_DefenseBudget < rhs_ka60_grey) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ka60_grey]
        } else {
            _MATV="rhs_ka60_grey" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ka60_grey);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ka60_grey);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Ka-60 (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ka60_grey];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 18: {
        if ((B_DefenseBudget < rhs_ka60_c) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, rhs_ka60_c]
        } else {
            _MATV="rhs_ka60_c" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - rhs_ka60_c);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + rhs_ka60_c);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Ka-60 (Camo) for $%1, your aircraft will be delivered to the C-12 Airfield.", rhs_ka60_c];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 19: {
        if ((B_DefenseBudget < RHS_Mi24P_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24P_vdv]
        } else {
            _MATV="RHS_Mi24P_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24P_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24P_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24P for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24P_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 20: {
        if ((B_DefenseBudget < RHS_Mi24V_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24V_vdv]
        } else {
            _MATV="RHS_Mi24V_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24V_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24V_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24V for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24V_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 21: {
        if ((B_DefenseBudget < RHS_Mi24P_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24P_vvs]
        } else {
            _MATV="RHS_Mi24P_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24P_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24P_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24P (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24P_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 22: {
        if ((B_DefenseBudget < RHS_Mi24V_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24V_vvs]
        } else {
            _MATV="RHS_Mi24V_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24V_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24V_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24V (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24V_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 23: {
        if ((B_DefenseBudget < RHS_Mi24P_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24P_vvsc]
        } else {
            _MATV="RHS_Mi24P_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24P_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24P_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24P (Camo)for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24P_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 24: {
        if ((B_DefenseBudget < RHS_Mi24V_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi24V_vvsc]
        } else {
            _MATV="RHS_Mi24V_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi24V_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi24V_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-24V (Camo)for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi24V_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 25: {
        if ((B_DefenseBudget < RHS_Mi8AMT_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMT_vdv]
        } else {
            _MATV="RHS_Mi8AMT_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMT_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMT_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMT for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMT_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 26: {
        if ((B_DefenseBudget < RHS_Mi8AMTSh_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMTSh_vdv]
        } else {
            _MATV="RHS_Mi8AMTSh_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMTSh_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMTSh_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMTSh for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMTSh_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 27: {
        if ((B_DefenseBudget < RHS_Mi8AMT_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMT_vvs]
        } else {
            _MATV="RHS_Mi8AMT_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMT_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMT_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMT (Grey)for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMT_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 28: {
        if ((B_DefenseBudget < RHS_Mi8AMTSh_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMTSh_vvs]
        } else {
            _MATV="RHS_Mi8AMTSh_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMTSh_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMTSh_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMTSh (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMTSh_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 29: {
        if ((B_DefenseBudget < RHS_Mi8AMT_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMT_vvsc]
        } else {
            _MATV="RHS_Mi8AMT_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMT_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMT_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMT (Camo) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMT_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 30: {
        if ((B_DefenseBudget < RHS_Mi8AMTSh_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8AMTSh_vvsc]
        } else {
            _MATV="RHS_Mi8AMTSh_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8AMTSh_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8AMTSh_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8AMTSh (Camo) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8AMTSh_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 31: {
        if ((B_DefenseBudget < RHS_Mi8mt_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8mt_vdv]
        } else {
            _MATV="RHS_Mi8mt_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8mt_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8mt_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MT for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8mt_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 32: {
        if ((B_DefenseBudget < RHS_Mi8MTV3_vdv) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8MTV3_vdv]
        } else {
            _MATV="RHS_Mi8MTV3_vdv" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8MTV3_vdv);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8MTV3_vdv);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MTV-3for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8MTV3_vdv];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 33: {
        if ((B_DefenseBudget < RHS_Mi8mt_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8mt_vvs]
        } else {
            _MATV="RHS_Mi8mt_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8mt_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8mt_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MT (Grey)for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8mt_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 34: {
        if ((B_DefenseBudget < RHS_Mi8MTV3_vvs) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8MTV3_vvs]
        } else {
            _MATV="RHS_Mi8MTV3_vvs" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8MTV3_vvs);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8MTV3_vvs);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MTV-3 (Grey) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8MTV3_vvs];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 35: {
        if ((B_DefenseBudget < RHS_Mi8mt_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8mt_vvsc]
        } else {
            _MATV="RHS_Mi8mt_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8mt_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8mt_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MT (Camo)for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8mt_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
    case 36: {
        if ((B_DefenseBudget < RHS_Mi8MTV3_vvsc) or (_rank != B_MaxRank)) then {
            hint format ["You cannot do this, either due to financial reasons (Cost of This Item is %2) or due to the fact that you are not authorized to spend from the company account. Items in fleet management can only be purchased by company officers. ", B_MaxRank, RHS_Mi8MTV3_vvsc]
        } else {
            _MATV="RHS_Mi8MTV3_vvsc" createVehicle (getMarkerPos "chspawn");
            B_DefenseBudget = (B_DefenseBudget - RHS_Mi8MTV3_vvsc);
            publicVariable "B_DefenseBudget";
            B_TotalCost = (B_TotalCost + RHS_Mi8MTV3_vvsc);
            publicVariable "B_TotalCost";
            hint format ["You have purchased (a/an) RUS Mi-8MTV-3 (Camo) for $%1, your aircraft will be delivered to the C-12 Airfield.", RHS_Mi8MTV3_vvsc];

            [] call DoBudget;
            [] call DoTotal;

            clearWeaponCargoGlobal _MATV; 
            clearMagazineCargoGlobal _MATV;
        };
    };
};