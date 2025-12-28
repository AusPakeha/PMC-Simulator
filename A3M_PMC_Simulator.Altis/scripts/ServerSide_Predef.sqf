// Server Side Scripting (Things Only The Server Should Be Doing)

A3MBudgetPush = {
    ["P_DefenseBudget", B_DefenseBudget] call A3M_fnc_setData;
};

A3M_svr_VIPFiredEH = {
    SpeechVIP addEventHandler ["FiredNear", {
        if (SpeechInterrupt == 0) then {
            SpeechInterrupt = 3;
            publicVariable "SpeechInterrupt";
            deleteVehicle LogicSnd;
            remoteExecCall ["A3M_MP_JVIPSec_SpeechInterrupt"];
            SpeechVIP disableAI "anim";
            [SpeechVIP, "AmovPercMstpSnonWnonDnon_Scared2"] remoteExecCall ["switchMoveEverywhere"];
        };
        SpeechVIP removeEventHandler ["FiredNear", 0];
    }];
};

A3M_JVIPSec_PopAthira = {
    Athira_Camera_AIATP_1 = createVehicle ['Camera1', [13858.6,18588.9,0.0172138], [], 0, 'CAN_COLLIDE'];
    Athira_Camera_AIATP_1 setPosASL [13858.6,18588.9,19.7972];
    Athira_Camera_AIATP_1 setVectorDirAndUp [[0.135976,-0.990685,0.00728678], [-0.000908735,0.00723037,0.999973]];

    AP_Speech_Group_2 = createGroup civilian;

    AP_Speech_Unit_2 = AP_Speech_Group_2 createUnit ['C_man_1', [13857.3,18591.6,0.00143814],[], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_2 setSkill 0.5;
    AP_Speech_Unit_2 setRank 'PRIVATE';
    AP_Speech_Unit_2 setFormDir 318.092;
    AP_Speech_Unit_2 setDir 318.092;
    AP_Speech_Unit_2 setPosASL [13857.3,18591.6,19.7814];
    AP_Speech_Group_2 setFormation 'WEDGE';
    AP_Speech_Group_2 setCombatMode 'YELLOW';
    AP_Speech_Group_2 setBehaviour 'AWARE';
    AP_Speech_Group_2 setSpeedMode 'NORMAL';

    AP_Speech_Group_3 = createGroup civilian;

    AP_Speech_Unit_3 = AP_Speech_Group_3 createUnit ['C_man_polo_2_F',[13857.9,18592.6,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_3 setSkill 0.5;
    AP_Speech_Unit_3 setRank 'PRIVATE';
    AP_Speech_Unit_3 setFormDir 306.075;
    AP_Speech_Unit_3 setDir 306.075;
    AP_Speech_Unit_3 setPosASL [13857.9,18592.6,19.7814];
    AP_Speech_Group_3 setFormation 'WEDGE';
    AP_Speech_Group_3 setCombatMode 'YELLOW';
    AP_Speech_Group_3 setBehaviour 'AWARE';
    AP_Speech_Group_3 setSpeedMode 'NORMAL';

    AP_Speech_Group_4 = createGroup civilian;

    AP_Speech_Unit_4 = AP_Speech_Group_4 createUnit ['C_man_polo_4_F', [13858.2,18594.4,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_4 setSkill 0.5;
    AP_Speech_Unit_4 setRank 'PRIVATE';
    AP_Speech_Unit_4 setFormDir 242.269;
    AP_Speech_Unit_4 setDir 242.269;
    AP_Speech_Unit_4 setPosASL [13858.2,18594.4,19.7814];
    AP_Speech_Group_4 setFormation 'WEDGE';
    AP_Speech_Group_4 setCombatMode 'YELLOW';
    AP_Speech_Group_4 setBehaviour 'AWARE';
    AP_Speech_Group_4 setSpeedMode 'NORMAL';

    AP_Speech_Group_5 = createGroup civilian;

    AP_Speech_Unit_5 = AP_Speech_Group_5 createUnit ['C_man_polo_5_F', [13858.5,18596.3,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_5 setSkill 0.5;
    AP_Speech_Unit_5 setRank 'PRIVATE';
    AP_Speech_Unit_5 setFormDir 264.364;
    AP_Speech_Unit_5 setDir 264.364;
    AP_Speech_Unit_5 setPosASL [13858.5,18596.3,19.7814];
    AP_Speech_Group_5 setFormation 'WEDGE';
    AP_Speech_Group_5 setCombatMode 'YELLOW';
    AP_Speech_Group_5 setBehaviour 'AWARE';
    AP_Speech_Group_5 setSpeedMode 'NORMAL';

    AP_Speech_Group_6 = createGroup civilian;

    AP_Speech_Unit_6 = AP_Speech_Group_6 createUnit ['C_man_polo_6_F', [13858.8,18598.1,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_6 setSkill 0.5;
    AP_Speech_Unit_6 setRank 'PRIVATE';
    AP_Speech_Unit_6 setFormDir 262.087;
    AP_Speech_Unit_6 setDir 262.087;
    AP_Speech_Unit_6 setPosASL [13858.8,18598.1,19.7814];
    AP_Speech_Group_6 setFormation 'WEDGE';
    AP_Speech_Group_6 setCombatMode 'YELLOW';
    AP_Speech_Group_6 setBehaviour 'AWARE';
    AP_Speech_Group_6 setSpeedMode 'NORMAL';

    AP_Speech_Group_7 = createGroup civilian;

    AP_Speech_Unit_7 = AP_Speech_Group_7 createUnit ['C_man_p_fugitive_F', [13859,18594.7,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_7 setSkill 0.5;
    AP_Speech_Unit_7 setRank 'PRIVATE';
    AP_Speech_Unit_7 setFormDir 270.769;
    AP_Speech_Unit_7 setDir 270.769;
    AP_Speech_Unit_7 setPosASL [13859,18594.7,19.7814];
    AP_Speech_Group_7 setFormation 'WEDGE';
    AP_Speech_Group_7 setCombatMode 'YELLOW';
    AP_Speech_Group_7 setBehaviour 'AWARE';
    AP_Speech_Group_7 setSpeedMode 'NORMAL';

    AP_Speech_Group_8 = createGroup civilian;

    AP_Speech_Unit_8 = AP_Speech_Group_8 createUnit ['C_man_hunter_1_F', [13858.6,18592.9,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_8 setSkill 0.5;
    AP_Speech_Unit_8 setRank 'PRIVATE';
    AP_Speech_Unit_8 setFormDir 320.334;
    AP_Speech_Unit_8 setDir 320.334;
    AP_Speech_Unit_8 setPosASL [13858.6,18592.9,19.7814];
    AP_Speech_Group_8 setFormation 'WEDGE';
    AP_Speech_Group_8 setCombatMode 'YELLOW';
    AP_Speech_Group_8 setBehaviour 'AWARE';
    AP_Speech_Group_8 setSpeedMode 'NORMAL';

    AP_Speech_Group_9 = createGroup civilian;

    AP_Speech_Unit_9 = AP_Speech_Group_9 createUnit ['C_journalist_F', [13858.9,18587.9,0.00143814], [], 0, 'CAN_COLLIDE'];
    AP_Speech_Unit_9 setSkill 0.5;
    AP_Speech_Unit_9 setRank 'PRIVATE';
    AP_Speech_Unit_9 setFormDir 332.737;
    AP_Speech_Unit_9 setDir 332.737;
    AP_Speech_Unit_9 setPosASL [13858.9,18587.9,19.7814];
    AP_Speech_Group_9 setFormation 'WEDGE';
    AP_Speech_Group_9 setCombatMode 'YELLOW';
    AP_Speech_Group_9 setBehaviour 'AWARE';
    AP_Speech_Group_9 setSpeedMode 'NORMAL';

    // { deleteVehicle _x } forEach AthiraObjArray;
    AthiraObjArray = [
    Athira_Camera_AIATP_1,
    AP_Speech_Unit_2,
    AP_Speech_Unit_3,
    AP_Speech_Unit_4,
    AP_Speech_Unit_5,
    AP_Speech_Unit_6,
    AP_Speech_Unit_7,
    AP_Speech_Unit_8,
    AP_Speech_Unit_9];

    // Creat VIP and add dignitary control actions
    AP_Speech_Group_1 = CreateGroup Civilian;
    "Astral_VIP_0" createUnit [getMarkerPos "SpeechPos1", AP_Speech_Group_1, "SpeechVIP = This;", 0.8];
    SpeechVIP setRank 'COLONEL';
    publicVariable "SpeechVIP";
    SpeechVIP setFormDir 101.287;
    SpeechVIP setDir 101.287;
    SpeechVIP setPosASL [13855.6,18596.1,20.8945];
    AP_Speech_Group_1 setFormation 'WEDGE';
    AP_Speech_Group_1 setCombatMode 'YELLOW';
    AP_Speech_Group_1 setBehaviour 'AWARE';
    AP_Speech_Group_1 setSpeedMode 'NORMAL';

    [] spawn A3M_svr_VIPFiredEH;
};

A3M_JVIPSec_PopZaros = {
    Zaros_Camera_AIATP_1 = createVehicle ['Camera1', [9259.35,11964.2,0.0172033], [], 0, 'CAN_COLLIDE'];
    Zaros_Camera_AIATP_1 setPosASL [9259.35,11964.2,15.1756];
    Zaros_Camera_AIATP_1 setVectorDirAndUp [[-0.486943,0.87338,0.00967027], [0.00769414,-0.00678188,0.999947]];

    ZP_Speech_Group_2 = createGroup civilian;
    ZP_Speech_Unit_2 = ZP_Speech_Group_2 createUnit ['C_man_hunter_1_F', [9260.71,11951.2,0.001441], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_2 setSkill 0.5;
    ZP_Speech_Unit_2 setRank 'PRIVATE';
    ZP_Speech_Unit_2 setFormDir 316.75;
    ZP_Speech_Unit_2 setDir 316.75;
    ZP_Speech_Unit_2 setPosASL [9260.71,11951.2,15.1562];
    ZP_Speech_Group_2 setFormation 'WEDGE';
    ZP_Speech_Group_2 setCombatMode 'YELLOW';
    ZP_Speech_Group_2 setBehaviour 'AWARE';
    ZP_Speech_Group_2 setSpeedMode 'NORMAL';

    ZP_Speech_Group_3 = createGroup civilian;
    ZP_Speech_Unit_3 = ZP_Speech_Group_3 createUnit ['C_man_p_fugitive_F', [9259.4,11956.5,0.001441], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_3 setSkill 0.5;
    ZP_Speech_Unit_3 setRank 'PRIVATE';
    ZP_Speech_Unit_3 setFormDir 98.1081;
    ZP_Speech_Unit_3 setDir 98.1081;
    ZP_Speech_Unit_3 setPosASL [9259.4,11956.5,15.1597];
    ZP_Speech_Group_3 setFormation 'WEDGE';
    ZP_Speech_Group_3 setCombatMode 'YELLOW';
    ZP_Speech_Group_3 setBehaviour 'AWARE';
    ZP_Speech_Group_3 setSpeedMode 'NORMAL';

    ZP_Speech_Group_4 = createGroup civilian;
    ZP_Speech_Unit_4 = ZP_Speech_Group_4 createUnit ['Astral_VIP_0', [9258.41,11956.1,0.00144386], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_4 setSkill 0.5;
    ZP_Speech_Unit_4 setRank 'PRIVATE';
    ZP_Speech_Unit_4 setFormDir 93.9452;
    ZP_Speech_Unit_4 setDir 93.9452;
    ZP_Speech_Unit_4 setPosASL [9258.41,11956.1,15.1623];
    ZP_Speech_Group_4 setFormation 'WEDGE';
    ZP_Speech_Group_4 setCombatMode 'YELLOW';
    ZP_Speech_Group_4 setBehaviour 'AWARE';
    ZP_Speech_Group_4 setSpeedMode 'NORMAL';

    ZP_Speech_Group_5 = createGroup civilian;
    ZP_Speech_Unit_5 = ZP_Speech_Group_5 createUnit ['C_man_polo_6_F', [9259.05,11954.2,0.001441], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_5 setSkill 0.5;
    ZP_Speech_Unit_5 setRank 'PRIVATE';
    ZP_Speech_Unit_5 setFormDir 100.567;
    ZP_Speech_Unit_5 setDir 100.567;
    ZP_Speech_Unit_5 setPosASL [9259.05,11954.2,15.1606];
    ZP_Speech_Group_5 setFormation 'WEDGE';
    ZP_Speech_Group_5 setCombatMode 'YELLOW';
    ZP_Speech_Group_5 setBehaviour 'AWARE';
    ZP_Speech_Group_5 setSpeedMode 'NORMAL';

    ZP_Speech_Group_6 = createGroup civilian;
    ZP_Speech_Unit_6 = ZP_Speech_Group_6 createUnit ['C_man_polo_5_F', [9260.36,11957.6,0.00144386], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_6 setSkill 0.5;
    ZP_Speech_Unit_6 setRank 'PRIVATE';
    ZP_Speech_Unit_6 setFormDir 90.7749;
    ZP_Speech_Unit_6 setDir 90.7749;
    ZP_Speech_Unit_6 setPosASL [9260.36,11957.6,15.1572];
    ZP_Speech_Group_6 setFormation 'WEDGE';
    ZP_Speech_Group_6 setCombatMode 'YELLOW';
    ZP_Speech_Group_6 setBehaviour 'AWARE';
    ZP_Speech_Group_6 setSpeedMode 'NORMAL';

    ZP_Speech_Group_7 = createGroup civilian;
    ZP_Speech_Unit_7 = ZP_Speech_Group_7 createUnit ['C_man_polo_4_F', [9260.65,11958.8,0.00144196], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_7 setSkill 0.5;
    ZP_Speech_Unit_7 setRank 'PRIVATE';
    ZP_Speech_Unit_7 setFormDir 105.361;
    ZP_Speech_Unit_7 setDir 105.361;
    ZP_Speech_Unit_7 setPosASL [9260.65,11958.8,15.1564];
    ZP_Speech_Group_7 setFormation 'WEDGE';
    ZP_Speech_Group_7 setCombatMode 'YELLOW';
    ZP_Speech_Group_7 setBehaviour 'AWARE';
    ZP_Speech_Group_7 setSpeedMode 'NORMAL';

    ZP_Speech_Group_8 = createGroup civilian;
    ZP_Speech_Unit_8 = ZP_Speech_Group_8 createUnit ['C_man_polo_2_F', [9259.22,11955.4,0.00144482], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_8 setSkill 0.5;
    ZP_Speech_Unit_8 setRank 'PRIVATE';
    ZP_Speech_Unit_8 setFormDir 95.6712;
    ZP_Speech_Unit_8 setDir 95.6712;
    ZP_Speech_Unit_8 setPosASL [9259.22,11955.4,15.1602];
    ZP_Speech_Group_8 setFormation 'WEDGE';
    ZP_Speech_Group_8 setCombatMode 'YELLOW';
    ZP_Speech_Group_8 setBehaviour 'AWARE';
    ZP_Speech_Group_8 setSpeedMode 'NORMAL';

    ZP_Speech_Group_9 = createGroup civilian;
    ZP_Speech_Unit_9 = ZP_Speech_Group_9 createUnit ['C_man_1', [9258.87,11957.5,0.00144386], [], 0, 'CAN_COLLIDE'];
    ZP_Speech_Unit_9 setSkill 0.5;
    ZP_Speech_Unit_9 setRank 'PRIVATE';
    ZP_Speech_Unit_9 setFormDir 83.6435;
    ZP_Speech_Unit_9 setDir 83.6435;
    ZP_Speech_Unit_9 setPosASL [9258.87,11957.5,15.1611];
    ZP_Speech_Group_9 setFormation 'WEDGE';
    ZP_Speech_Group_9 setCombatMode 'YELLOW';
    ZP_Speech_Group_9 setBehaviour 'AWARE';
    ZP_Speech_Group_9 setSpeedMode 'NORMAL';

    ZP_Speech_Group_10 = createGroup civilian;
    SpeechVIP0 = ZP_Speech_Group_10 createUnit ['C_man_polo_5_F', [9258.54,11953.3,0.00144386], [], 0, 'CAN_COLLIDE'];
    SpeechVIP0 setSkill 0.5;
    SpeechVIP0 setRank 'PRIVATE';
    SpeechVIP0 setFormDir 95.9623;

    SpeechVIP0 setDir 95.9623;
    SpeechVIP0 setPosASL [9258.54,11953.3,15.162];
    ZP_Speech_Group_10 setFormation 'WEDGE';
    ZP_Speech_Group_10 setCombatMode 'YELLOW';
    ZP_Speech_Group_10 setBehaviour 'AWARE';
    ZP_Speech_Group_10 setSpeedMode 'NORMAL';

    ZP_Speech_Group_11 = createGroup civilian;
    SpeechVIP1 = ZP_Speech_Group_11 createUnit ['C_man_polo_6_F', [9257.9,11954.1,0.00144196], [], 0, 'CAN_COLLIDE'];
    SpeechVIP1 setSkill 0.5;
    SpeechVIP1 setRank 'PRIVATE';
    SpeechVIP1 setFormDir 97.1948;
    SpeechVIP1 setDir 97.1948;
    SpeechVIP1 setPosASL [9257.9,11954.1,15.1637];
    ZP_Speech_Group_11 setFormation 'WEDGE';
    ZP_Speech_Group_11 setCombatMode 'YELLOW';
    ZP_Speech_Group_11 setBehaviour 'AWARE';
    ZP_Speech_Group_11 setSpeedMode 'NORMAL';

    ZP_Speech_Group_12 = createGroup civilian;
    SpeechVIP2 = ZP_Speech_Group_12 createUnit ['C_man_polo_4_F', [9258.18,11955.1,0.00144386], [], 0, 'CAN_COLLIDE'];
    SpeechVIP2 setSkill 0.5;
    SpeechVIP2 setRank 'PRIVATE';
    SpeechVIP2 setFormDir 89.4655;
    SpeechVIP2 setDir 89.4655;
    SpeechVIP2 setPosASL [9258.18,11955.1,15.163];
    ZP_Speech_Group_12 setFormation 'WEDGE';
    ZP_Speech_Group_12 setCombatMode 'YELLOW';
    ZP_Speech_Group_12 setBehaviour 'AWARE';
    ZP_Speech_Group_12 setSpeedMode 'NORMAL';

    ZP_Speech_Group_13 = createGroup civilian;
    SpeechVIP3 = ZP_Speech_Group_13 createUnit ['C_man_polo_3_F', [9259.36,11958.5,0.00144482], [], 0, 'CAN_COLLIDE'];
    SpeechVIP3 setSkill 0.5;
    SpeechVIP3 setRank 'PRIVATE';
    SpeechVIP3 setFormDir 88.3886;
    SpeechVIP3 setDir 88.3886;
    SpeechVIP3 setPosASL [9259.36,11958.5,15.1598];
    ZP_Speech_Group_13 setFormation 'WEDGE';
    ZP_Speech_Group_13 setCombatMode 'YELLOW';
    ZP_Speech_Group_13 setBehaviour 'AWARE';
    ZP_Speech_Group_13 setSpeedMode 'NORMAL';

    ZP_Speech_Group_14 = createGroup civilian;
    SpeechVIP4 = ZP_Speech_Group_14 createUnit ['C_man_polo_1_F', [9258.51,11958.3,0.001441], [], 0, 'CAN_COLLIDE'];
    SpeechVIP4 setSkill 0.5;
    SpeechVIP4 setRank 'PRIVATE';
    SpeechVIP4 setFormDir 108.617;
    SpeechVIP4 setDir 108.617;
    SpeechVIP4 setPosASL [9258.51,11958.3,15.1621];
    ZP_Speech_Group_14 setFormation 'WEDGE';
    ZP_Speech_Group_14 setCombatMode 'YELLOW';
    ZP_Speech_Group_14 setBehaviour 'AWARE';
    ZP_Speech_Group_14 setSpeedMode 'NORMAL';

    ZP_Speech_Group_15 = createGroup civilian;
    SpeechVIP5 = ZP_Speech_Group_15 createUnit ['C_man_p_beggar_F', [9257.45,11955.2,0.00143909], [], 0, 'CAN_COLLIDE'];
    SpeechVIP5 setSkill 0.5;
    SpeechVIP5 setRank 'PRIVATE';
    SpeechVIP5 setFormDir 125.331;
    SpeechVIP5 setDir 125.331;
    SpeechVIP5 setPosASL [9257.45,11955.2,15.1649];
    ZP_Speech_Group_15 setFormation 'WEDGE';
    ZP_Speech_Group_15 setCombatMode 'YELLOW';
    ZP_Speech_Group_15 setBehaviour 'AWARE';
    ZP_Speech_Group_15 setSpeedMode 'NORMAL';

    ZP_Speech_Group_16 = createGroup civilian;
    SpeechVIP6 = ZP_Speech_Group_16 createUnit ['C_man_shorts_1_F', [9258.19,11956.9,0.001441], [], 0, 'CAN_COLLIDE'];
    SpeechVIP6 setSkill 0.5;
    SpeechVIP6 setRank 'PRIVATE';
    SpeechVIP6 setFormDir 105.344;
    SpeechVIP6 setDir 105.344;
    SpeechVIP6 setPosASL [9258.19,11956.9,15.1629];
    ZP_Speech_Group_16 setFormation 'WEDGE';
    ZP_Speech_Group_16 setCombatMode 'YELLOW';
    ZP_Speech_Group_16 setBehaviour 'AWARE';
    ZP_Speech_Group_16 setSpeedMode 'NORMAL';

    ZP_Speech_Group_16 = createGroup civilian;
    SpeechVIP6 = ZP_Speech_Group_16 createUnit ['C_man_w_worker_F', [9258.41,11956.1,0.001441], [], 0, 'CAN_COLLIDE'];
    SpeechVIP6 setSkill 0.5;
    SpeechVIP6 setRank 'PRIVATE';
    SpeechVIP6 setFormDir 97.7816;
    SpeechVIP6 setDir 97.7816;
    SpeechVIP6 setPosASL [9258.41,11956.1,15.1623];
    ZP_Speech_Group_16 setFormation 'WEDGE';
    ZP_Speech_Group_16 setCombatMode 'YELLOW';
    ZP_Speech_Group_16 setBehaviour 'AWARE';
    ZP_Speech_Group_16 setSpeedMode 'NORMAL';

    ZP_Speech_Group_17 = createGroup civilian;
    SpeechVIP7 = ZP_Speech_Group_17 createUnit ['C_journalist_F', [9258.94,11964.9,0.00143909], [], 0, 'CAN_COLLIDE'];
    SpeechVIP7 setSkill 0.5;
    SpeechVIP7 setRank 'PRIVATE';
    SpeechVIP7 setFormDir 132.4;
    SpeechVIP7 setDir 132.4;
    SpeechVIP7 setPosASL [9258.94,11965.2,15.1609];
    ZP_Speech_Group_17 setFormation 'WEDGE';
    ZP_Speech_Group_17 setCombatMode 'YELLOW';
    ZP_Speech_Group_17 setBehaviour 'AWARE';
    ZP_Speech_Group_17 setSpeedMode 'NORMAL';

    // { deleteVehicle _x } forEach ZarosObjArray;

    ZarosObjArray = [
        Zaros_Camera_AIATP_1,
        ZP_Speech_Unit_2,
        ZP_Speech_Unit_3,
        ZP_Speech_Unit_4,
        ZP_Speech_Unit_5,
        ZP_Speech_Unit_6,
        ZP_Speech_Unit_7,
        ZP_Speech_Unit_8,
        ZP_Speech_Unit_9,
        SpeechVIP0,
        SpeechVIP1,
        SpeechVIP2,
        SpeechVIP3,
        SpeechVIP4,
        SpeechVIP5,
        SpeechVIP6,
        SpeechVIP7
    ];

    ZP_Speech_Group_1 = CreateGroup Civilian;
    "Astral_VIP_0" createUnit [ getMarkerPos "SpeechPos3", ZP_Speech_Group_1, "SpeechVIP = This;", 0.8];
    SpeechVIP setRank 'COLONEL';
    publicVariable "SpeechVIP";
    SpeechVIP setFormDir 290.834;
    SpeechVIP setDir 290.834;
    SpeechVIP setPosASL [9264.83,11956.6,16.2557];

    ZP_Speech_Group_1 setFormation 'WEDGE';
    ZP_Speech_Group_1 setCombatMode 'YELLOW';
    ZP_Speech_Group_1 setBehaviour 'AWARE';
    ZP_Speech_Group_1 setSpeedMode 'NORMAL';

    [] spawn A3M_svr_VIPFiredEH;
};

A3M_JVIPSec_PopPyrgos = {
    Pyrgos_Camera_AIATP_1 = createVehicle ['Camera1', [16543.2,12546,0], [], 0, 'CAN_COLLIDE'];
    Pyrgos_Camera_AIATP_1 setPosASL [16543.2,12546,2.27];
    Pyrgos_Camera_AIATP_1 setVectorDirAndUp [[0,1,0], [0,0,1]];

    civilianCar1 = createVehicle ['C_Hatchback_01_F', [16579.3,12521.7,0.0126343], [], 0, 'CAN_COLLIDE'];
    civilianCar1 setPosASL [16579.3,12521.7,2.76069];
    civilianCar1 setVectorDirAndUp [[-0.585436,-0.807997,0.0663685], [-0.0181959,0.0949387,0.995317]];

    civilianCar2 = createVehicle ['C_Offroad_01_F', [16584.3,12526.9,0.022068], [], 0, 'CAN_COLLIDE'];
    civilianCar2 setPosASL [16584.3,12526.9,2.56836];
    civilianCar2 setVectorDirAndUp [[0.657003,0.75212,0.0515929], [-0.127442,0.0433523,0.990898]];

    Policeveh1 = createVehicle ["C_Offroad_01_F",[16540.2,12564.5,2.23048],[],0,"NONE"];
    [Policeveh1, ["white",1], ["hidePolice", 0, "BeaconsStart", 1], "HideBumper2", 0, "Proxy", 0, "Destruct", 0] call BIS_fnc_initVehicle;

    Policeveh1 setVectorDirAndUp [[0.981226,-0.192588,-0.0102838], [0.0104279,-0.000265496,0.999946]];

    Policeveh2 = createVehicle ["C_Offroad_01_F",[16550.4,12551.9,2.22822],[],0,"NONE"];
    [Policeveh2, ["white",1], ["hidePolice", 0, "BeaconsStart", 1], "HideBumper2", 0, "Proxy", 0, "Destruct", 0] call BIS_fnc_initVehicle;

    Policeveh2 setVectorDirAndUp [[0.0001015,0.999945,-0.0104637], [-0.00150459,0.0104638,0.999944]];

    PS_Speech_Group_2 =  createGroup Independent;
    PS_Speech_Unit_2 = PS_Speech_Group_2 createUnit ['I_Soldier_AR_F', [16546.3,12543.9,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_2 setSkill 0.5;
    PS_Speech_Unit_2 setRank 'PRIVATE';
    PS_Speech_Unit_2 setFormDir 0;
    PS_Speech_Unit_2 setDir 0;
    PS_Speech_Unit_2 setPosASL [16546.3,12543.9,2.27144];
    PS_Speech_Group_2 setFormation 'WEDGE';
    PS_Speech_Group_2 setCombatMode 'YELLOW';
    PS_Speech_Group_2 setBehaviour 'AWARE';
    PS_Speech_Group_2 setSpeedMode 'NORMAL';

    PS_Speech_Group_3 =  createGroup Independent;
    PS_Speech_Unit_3 = PS_Speech_Group_3 createUnit ['I_soldier_F', [16536,12536.3,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_3 setSkill 0.5;
    PS_Speech_Unit_3 setRank 'PRIVATE';
    PS_Speech_Unit_3 setFormDir 0;
    PS_Speech_Unit_3 setDir 0;
    PS_Speech_Unit_3 setPosASL [16536,12536.3,2.27144];
    PS_Speech_Group_3 setFormation 'WEDGE';
    PS_Speech_Group_3 setCombatMode 'YELLOW';
    PS_Speech_Group_3 setBehaviour 'AWARE';
    PS_Speech_Group_3 setSpeedMode 'NORMAL';

    PS_Speech_Group_4 =  createGroup Independent;
    PS_Speech_Unit_4 = PS_Speech_Group_4 createUnit ['I_officer_F', [16553,12532.6,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_4 setSkill 0.5;
    PS_Speech_Unit_4 setRank 'PRIVATE';
    PS_Speech_Unit_4 setFormDir 118.968;
    PS_Speech_Unit_4 setDir 118.968;
    PS_Speech_Unit_4 setPosASL [16553,12532.6,2.27144];
    PS_Speech_Group_4 setFormation 'WEDGE';
    PS_Speech_Group_4 setCombatMode 'YELLOW';
    PS_Speech_Group_4 setBehaviour 'AWARE';
    PS_Speech_Group_4 setSpeedMode 'NORMAL';

    PS_Speech_Group_5 =  createGroup civilian;
    PS_Speech_Unit_5 = PS_Speech_Group_5 createUnit ['C_man_p_beggar_F', [16541.9,12543.3,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_5 setSkill 0.5;
    PS_Speech_Unit_5 setRank 'PRIVATE';
    PS_Speech_Unit_5 setFormDir 136;
    PS_Speech_Unit_5 setDir 136;
    PS_Speech_Unit_5 setPosASL [16541.9,12543.3,2.27144];
    PS_Speech_Group_5 setFormation 'WEDGE';
    PS_Speech_Group_5 setCombatMode 'YELLOW';
    PS_Speech_Group_5 setBehaviour 'AWARE';
    PS_Speech_Group_5 setSpeedMode 'NORMAL';

    PS_Speech_Group_6 =  createGroup civilian;
    PS_Speech_Unit_6 = PS_Speech_Group_6 createUnit ['C_man_1', [16541.1,12542.8,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_6 setSkill 0.5;
    PS_Speech_Unit_6 setRank 'PRIVATE';
    PS_Speech_Unit_6 setFormDir 138.723;
    PS_Speech_Unit_6 setDir 138.723;
    PS_Speech_Unit_6 setPosASL [16541.1,12542.8,2.27144];
    PS_Speech_Group_6 setFormation 'WEDGE';
    PS_Speech_Group_6 setCombatMode 'YELLOW';
    PS_Speech_Group_6 setBehaviour 'AWARE';
    PS_Speech_Group_6 setSpeedMode 'NORMAL';

    PS_Speech_Group_7 =  createGroup civilian;
    PS_Speech_Unit_7 = PS_Speech_Group_7 createUnit ['C_man_polo_2_F', [16540.3,12542.2,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_7 setSkill 0.5;
    PS_Speech_Unit_7 setRank 'PRIVATE';
    PS_Speech_Unit_7 setFormDir 138.044;
    PS_Speech_Unit_7 setDir 138.044;
    PS_Speech_Unit_7 setPosASL [16540.3,12542.2,2.27144];
    PS_Speech_Group_7 setFormation 'WEDGE';
    PS_Speech_Group_7 setCombatMode 'YELLOW';
    PS_Speech_Group_7 setBehaviour 'AWARE';
    PS_Speech_Group_7 setSpeedMode 'NORMAL';

    PS_Speech_Group_8 =  createGroup civilian;
    PS_Speech_Unit_8 = PS_Speech_Group_8 createUnit ['C_man_polo_4_F', [16539.7,12541.7,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_8 setSkill 0.5;
    PS_Speech_Unit_8 setRank 'PRIVATE';
    PS_Speech_Unit_8 setFormDir 141.467;
    PS_Speech_Unit_8 setDir 141.467;
    PS_Speech_Unit_8 setPosASL [16539.7,12541.7,2.27144];
    PS_Speech_Group_8 setFormation 'WEDGE';
    PS_Speech_Group_8 setCombatMode 'YELLOW';
    PS_Speech_Group_8 setBehaviour 'AWARE';
    PS_Speech_Group_8 setSpeedMode 'NORMAL';

    PS_Speech_Group_9 =  createGroup civilian;
    PS_Speech_Unit_9 = PS_Speech_Group_9 createUnit ['C_man_polo_5_F', [16538.9,12541.2,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_9 setSkill 0.5;
    PS_Speech_Unit_9 setRank 'PRIVATE';
    PS_Speech_Unit_9 setFormDir 132.4;
    PS_Speech_Unit_9 setDir 132.4;
    PS_Speech_Unit_9 setPosASL [16538.9,12541.2,2.27144];
    PS_Speech_Group_9 setFormation 'WEDGE';
    PS_Speech_Group_9 setCombatMode 'YELLOW';
    PS_Speech_Group_9 setBehaviour 'AWARE';
    PS_Speech_Group_9 setSpeedMode 'NORMAL';

    PS_Speech_Group_10 =  createGroup civilian;
    PS_Speech_Unit_10 = PS_Speech_Group_10 createUnit ['C_man_polo_6_F', [16538.2,12540.6,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_10 setSkill 0.5;
    PS_Speech_Unit_10 setRank 'PRIVATE';
    PS_Speech_Unit_10 setFormDir 121.955;
    PS_Speech_Unit_10 setDir 121.955;
    PS_Speech_Unit_10 setPosASL [16538.2,12540.6,2.27144];
    PS_Speech_Group_10 setFormation 'WEDGE';
    PS_Speech_Group_10 setCombatMode 'YELLOW';
    PS_Speech_Group_10 setBehaviour 'AWARE';
    PS_Speech_Group_10 setSpeedMode 'NORMAL';

    PS_Speech_Group_11 =  createGroup civilian;
    PS_Speech_Unit_11 = PS_Speech_Group_11 createUnit ['C_man_shorts_1_F', [16541.2,12544.1,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_11 setSkill 0.5;
    PS_Speech_Unit_11 setRank 'PRIVATE';
    PS_Speech_Unit_11 setFormDir 135.79;
    PS_Speech_Unit_11 setDir 135.79;
    PS_Speech_Unit_11 setPosASL [16541.2,12544.1,2.27144];
    PS_Speech_Group_11 setFormation 'WEDGE';
    PS_Speech_Group_11 setCombatMode 'YELLOW';
    PS_Speech_Group_11 setBehaviour 'AWARE';
    PS_Speech_Group_11 setSpeedMode 'NORMAL';

    PS_Speech_Group_12 =  createGroup civilian;
    PS_Speech_Unit_12 = PS_Speech_Group_12 createUnit ['C_man_p_fugitive_F', [16538.9,12544,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_12 setSkill 0.5;
    PS_Speech_Unit_12 setRank 'PRIVATE';
    PS_Speech_Unit_12 setFormDir 126.663;
    PS_Speech_Unit_12 setDir 126.663;
    PS_Speech_Unit_12 setPosASL [16538.9,12544,2.27144];
    PS_Speech_Group_12 setFormation 'WEDGE';
    PS_Speech_Group_12 setCombatMode 'YELLOW';
    PS_Speech_Group_12 setBehaviour 'AWARE';
    PS_Speech_Group_12 setSpeedMode 'NORMAL';

    PS_Speech_Group_13 =  createGroup civilian;
    PS_Speech_Unit_13 = PS_Speech_Group_13 createUnit ['C_man_p_shorts_1_F', [16538.1,12541.8,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_13 setSkill 0.5;
    PS_Speech_Unit_13 setRank 'PRIVATE';
    PS_Speech_Unit_13 setFormDir 137.338;
    PS_Speech_Unit_13 setDir 137.338;
    PS_Speech_Unit_13 setPosASL [16538.1,12541.8,2.27144];
    PS_Speech_Group_13 setFormation 'WEDGE';
    PS_Speech_Group_13 setCombatMode 'YELLOW';
    PS_Speech_Group_13 setBehaviour 'AWARE';
    PS_Speech_Group_13 setSpeedMode 'NORMAL';

    PS_Speech_Group_14 =  createGroup civilian;
    PS_Speech_Unit_14 = PS_Speech_Group_14 createUnit ['C_journalist_F', [16543.1,12547,0.00143886], [], 0, 'CAN_COLLIDE'];
    PS_Speech_Unit_14 setSkill 0.5;
    PS_Speech_Unit_14 setRank 'PRIVATE';
    PS_Speech_Unit_14 setFormDir 181.533;
    PS_Speech_Unit_14 setDir 181.533;
    PS_Speech_Unit_14 setPosASL [16543.1,12547,2.27144];
    PS_Speech_Group_14 setFormation 'WEDGE';
    PS_Speech_Group_14 setCombatMode 'YELLOW';
    PS_Speech_Group_14 setBehaviour 'AWARE';
    PS_Speech_Group_14 setSpeedMode 'NORMAL';

    // { deleteVehicle _x } forEach PyrgosObjArray;

    PyrgosObjArray = [
        Pyrgos_Camera_AIATP_1,
        civilianCar1,
        civilianCar2,
        Policeveh1,
        Policeveh2,
        PS_Speech_Unit_2,
        PS_Speech_Unit_3,
        PS_Speech_Unit_4,
        PS_Speech_Unit_5,
        PS_Speech_Unit_6,
        PS_Speech_Unit_7,
        PS_Speech_Unit_8,
        PS_Speech_Unit_9,
        PS_Speech_Unit_10,
        PS_Speech_Unit_11,
        PS_Speech_Unit_12,
        PS_Speech_Unit_13,
        PS_Speech_Unit_14
    ];

    PS_Speech_Group_1 = CreateGroup Civilian;
    "Astral_VIP_0" createUnit [ getMarkerPos "SpeechPos2", PS_Speech_Group_1, "SpeechVIP = This;", 0.8];
    SpeechVIP setRank 'C';
    publicVariable "SpeechVIP";
    SpeechVIP setFormDir 315.366;
    SpeechVIP setDir 315.366;
    SpeechVIP setPosASL [16542.7,12538.1,3.38454];
    PS_Speech_Group_1 setFormation 'WEDGE';
    PS_Speech_Group_1 setCombatMode 'YELLOW';
    PS_Speech_Group_1 setBehaviour 'AWARE';
    PS_Speech_Group_1 setSpeedMode 'NORMAL';

    [] spawn A3M_svr_VIPFiredEH;
};

// Next Mission Set
// *********************#################***********************

// Roadblock Mission - This one works differently, and, pending a total re-write, transcends the rules of _svr_ and _MP_ names, as every call is a hybrid of server and client calls. Ignore naming rules below...
A3M_fnc_RoadBlock = {
    RBduty = player createSimpleTask ["Move To Checkpoint Duty"];
    RBduty SetSimpleTaskDescription ["Stand at the checkpoint and perform stop and search checkpoint duties with the authority of the Altis Armed Forces.", "Move To Checkpoint Duty", " Checkpoint C-12N"];
    RBduty SetSimpleTaskDestination (getMarkerPos "RBC");
    RBduty setTaskState "Assigned";

    player setCurrentTask RBduty;
    ["TaskAssigned", ["Move to C-12 checkpoint. Check map."]] call BIS_fnc_showNotification;

    if (isServer) then {
        RBtrg= createTrigger ["EmptyDetector", getMarkerPos "RBC"];
        RBtrg setTriggerArea [20, 20, 0, false];
        RBtrg setTriggerActivation ["WEST", "PRESENT", false];
        RBtrg setTriggerType "NONE";
        RBtrg setTriggerStatements ["this", "[] remoteExecCall ['A3M_fnc_Checkpoint'];", ""];
    };
};

A3M_fnc_checkpoint = {
    RBduty setTaskState "Succeeded";
    playMusic "Success";
    player addRating 100;
    ["ScoreAdded",["Checkpoint Reached",100]] call BIS_fnc_showNotification;

    if (isServer) then { deleteVehicle RBtrg; };

    RBduty2 = player createSimpleTask ["Perform Checkpoint Duty"];
    RBduty2 SetSimpleTaskDescription ["Wait for cars to stop at the checkpoint and perform stop and search checkpoint duties with the authority of the Altian Government.", "Perform Checkpoint Duty", " Checkpoint C-12N"];
    RBduty2 SetSimpleTaskDestination (getMarkerPos "RBC");
    RBduty2 setTaskState "Assigned";

    titleText ["Welcome to the C-12 South Checkpoint. Perform stop and search duties on Altian Nationals. Be suspicious of terroristic threats.", "PLAIN DOWN"];

    if (isServer) then {
        _ChkPt = execVM 'Scripts\A3MCheckpoint.sqf';
        waitUntil { scriptDone _ChkPt };

        while { (CheckPointActive == 1) } do {
            sleep 5;
            if ((!alive RBVehD) AND (CPManAlive == 1)) then {
                CPManAlive == 0;
                // [ '','RemAllAct',true,false] call BIS_fnc_MP;
                remoteExecCall ["RemAllAct"];
                [] call A3M_fnc_handleSol;
                // sleep 10;
            };

        };
    } else {
        systemChat "A Checkpoint Mission is currently active.";
    };
};

A3M_fnc_HandleSol = {
    switch (ManType) do {
        case "M0": {
            systemChat "Oh Noes! No ManType was found. Phantom Exec. Crash, Crash, Crash.";
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        case "M1": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            // ['','A3M_FNC_CRIMMP',true,false] call BIS_fnc_MP;
            remoteExecCall ["A3M_FNC_CRIMMP"];
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        case "M2": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            RightsViols = (RightsViols+1);
            publicVariable "RightsViols";
            // ['','A3M_FNC_CIVMP',true,false] call BIS_fnc_MP;
            remoteExecCall ["A3M_FNC_CIVMP"];
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        case "M3": {
            // [ '','RemAllAct',true,false] call BIS_fnc_MP;
            remoteExecCall ["RemAllAct"];
            MissionsPassed = (MissionsPassed + 1) ;
            publicVariable "MissionsPassed";
            // ['','A3M_fnc_TERRMP',true,false] call BIS_fnc_MP;
            remoteExecCall ["A3M_fnc_TERRMP"];
            sleep 5;
            deleteVehicle RBVeh;
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        case "M4": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            RightsViols = (RightsViols+1);
            publicVariable "RightsViols";
            // ['','A3M_FNC_PRISMP',true,false] call BIS_fnc_MP;
            remoteExecCall ["A3M_FNC_PRISMP"];
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        case "M5": {
            MissionsPassed = (MissionsPassed + 1);
            publicVariable "MissionsPassed";
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
        default {
            systemChat "Oh Noes! Mission Crash! Something went horribly wrong, could not determine ManType. Trying Again...";
            sleep 1;
            execVM "scripts\A3MCheckpoint.sqf";
        };
    };
};

MP_Roadblock_Attitude = {
    switch (RAPickedNumber) do {
        //Innocent 1
        case "M0": {
            ManType = "M2";
            removeAllActions RBVeh;
            greet = RBVeh addAction ["Greeting", { hint "Hello. How are you today sir? Im a Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle doesn't smell of anything at all.  \n Driver Attitude: \n Driver appears calm and cooperative" }];
            search= RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, is this really needed? I know my rights!"; sleep 2; hint "Searching Car....."; sleep 5; hint "Nothing illegal or interesting was found in the car"; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; GetInCar = RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            goSouth= RBVeh addAction ["Allow to Proceed", { hint "Thank you sir, I'll be moving on now"; [] call DoExitStopSouth; }];
            goNorth= RBveh addAction ["Order To Turn Around", { hint "Are you kidding me? I'm perfectly legal! You are out of your mind, buster!"; [] call DoExitStopNorth;  }];
        };

        // Drunk Driver
        case "M1": {
            ManType = "M1";
            removeAllActions RBVeh;
            RBveh addAction ["Greeting", { hint "Yeth Thir! I'm...I'mmm...Okay. Yeah I'm Okay. Fuck YOU okay! Don't judge me. Who are you to judge me? Only GOD can judge me. Or the judge. Who judges the judge? He probably judges himself every day under the bench!" }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells: \n The vehicle smells of alcohol and vomit \n Driver Attitude: \n Driver appears Impaired and Uncooperative" }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "I did nothing to you! Why are you judging me like this? Don't judge me!"; sleep 2; hint "Searching Car....."; sleep 5; hint "Found open bottle of Russian vodka"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Arrest for DWI", { ManType = 4; publicVariable "ManType"; Hint "Abreast? Arrest meee? Fuck YOU! You aren't GAWD!"; sleep 2; hint "Escort the Suspect to Altian jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; sleep 2; [] call A3M_fnc_jailtrigger; }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Yesh, Yesh it's okay. I'm okay. You're okay. Okay. Bye."; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Who are YOU to JUDGE ME!! FUCK YOU!! I'll go home and get my box of ROTTEN EGGS! That's what I'LL DO!!"; [] call DoExitStopNorth; }];
        };

        // Drug Runner
        case "M2": {
        ManType = "M1";
            removeAllActions RBVeh;
            RBveh addAction ["Greeting", { hint "Hello sir. All is okay here, yes? I am Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n A faint smell of Anise is radiating from the vehicle.  \n Driver Attitude: \n The driver appears to be quite nervous." }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "I better call my lawyer. I'm not saying anything until my attorney arrives. Oh my God."; sleep 2.0; hint "Searching Car....."; sleep 6; hint "You found a load of cocaine"; sleep 2; hint "Driver: Step out of the vehicle! \n \n If the driver refuses to exit, shoot the vehicle's tires and disable it!";
            RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }];
            RBVehD addAction ["Sir, You are under arrest...", { ManType = "M4"; publicVariable "ManType"; Hint "Oh God...Oh My God....Ohhhh Shit. Fuck...FUCK ME!"; sleep 3.0; hint "Transport the Criminal to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Okay...thanks to you sir!"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Okay...No problem officer. I'll just go back where I came from then."; [] call DoExitStopNorth; }];
        };

        // Illegal Alien
        case "M3": {
            ManType = "M1";
            removeAllActions RBVeh;
            RBveh addAction ["Greeting", { hint "Allu." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle appears normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears dirty and aged. \n Smells:\n The vehicle smells like chewing tobacco. \n Driver Attitude: \n  The driver appears disoriented, but cooperative." }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Dis No Gut."; sleep 2.0; hint "Searching Car....."; sleep 5; hint "Found Multiple Identifications. Upon further review, the Altian Citizen Number on the Altian ID doesn't check out..."; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Arrest for Illegal Immigration", { ManType = "M4"; publicVariable "ManType"; Hint "Fock you mane. You cops are always trying to keepa de mano down!"; sleep 3.0; hint "Escort the Illegal Alien to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Peace on you sire"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Eat a deek, bottmonch."; [] call DoExitStopNorth; }];
        };

        // Terrorist Attack on checkpoint - carbomb
        case "M4": {
            ManType = "M3";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected!" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; Hint "Visual Inspection: \n The vehicle appears clean, but in disrepair. Wires appear to be protruding from the drivers side door frame. \n Smells:\n The smell of Jet Fuel permeates the air. \n Driver Attitude: \n The driver appears very calm."; }];
            RBveh addAction ["Greeting", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; Hint "Allahu Akbar"; remoteExecCall ["RemAllAct"]; sleep 3; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBveh addAction ["Search", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; Hint "Allahu Akbar"; remoteExecCall ["RemAllAct"];  sleep 5; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBveh addAction ["Allow to Proceed", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; Hint "Allahu Akbar"; remoteExecCall ["RemAllAct"]; sleep 2; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBveh addAction ["Order To Turn Around", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; Hint "Allahu Akbar"; remoteExecCall ["RemAllAct"];  sleep 2:  if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
        };

        // Innocent 2
        case "M5": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBVeh setDamage 0.3;
            RBveh addAction ["Greeting", { hint "Im an Altian Citizen. What the fuck do you want? Fuck outta my way, bitch!" }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean, but in disrepair. A single red wire is protruding from under the vehicle. A fluid is dripping on the ground.  \n Smells:\n The vehicle smells of rich burning fuel and exhaust. \n Driver Attitude: \n The driver appears angry and combative" }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, You're a real fucking prick. I know my rights, fuckhead!!"; sleep 2.0; hint "Searching Car....."; sleep 5; hint "Nothing illegal or interesting was found in the car. Anomaly was a false alert - damaged vehicle."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Yeah, that's what I thought. Civil Rights Violatin' muthafuckas!"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Civil Rights Violatin' muthafuckas! I'll have your ass for this!"; [] call DoExitStopNorth; }];
        };

        // Innocent 3
        case "M6": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBveh addAction ["Greeting", { hint "Hi...I'd like to pass on that ass, please? " }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n The vehicle smells like Strawberries. \n Driver Attitude: \n The driver appears to be feeling snarky." }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, What the hell? Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car"; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Later bitches"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Fuck you bitches. I'm filing a complaint and fucking your mother in the ass!"; [] call DoExitStopNorth; }];
        };

        //Innocent 4
        case "M7": {
            ManType = "M2";
            removeAllActions RBVeh;
            RBveh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears clean and in good repair. \n Smells:\n The vehicle smells of an oil substance. \n Driver Attitude: \n The driver appears uncertain." }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, please, This is insane. Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "You found a KingCock Double Trouble Dildo. Nothing illegal in this vehicle."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Have a nice day"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Doom on you!"; [] call DoExitStopNorth; }];
        };

        //Innocent 5
        case "M8": {
            ManType = "M2";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle smells sulphuric, like rotten eggs. \n Driver Attitude: \n The drive appears nervous." }];
            RBveh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass. Immediately" }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, This is insane. Is this really needed? I know my rights!"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car. A suspicious smell turns out to be a rotten sandwich."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBveh addAction ["Allow to Proceed", { hint "Have a good one!"; [] call DoExitStopSouth; }];
            RBveh addAction ["Order To Turn Around", { hint "Eat shit, dickbag!"; [] call DoExitStopNorth; }];
        };

        // Innocent 6
        case "M9": {
            ManType = "M2";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Vehicle Appears Normal" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears to have excessive junk in the back. \n Smells:\n The vehicle smells strongly of wintergreen air freshener. \n Driver Attitude: \n The driver appears nervous." }];
            RBveh addAction ["Greeting", { hint "I'm an Altian Citizen. Let me pass." }];
            RBveh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, What the fuck. You gonna ask me to suck your cock next?"; sleep 2.0; hint "Searching Car....."; sleep 10; hint "Nothing illegal or interesting was found in the car. A suspicious smell turns out to be a moldy gym sock."; RightsViols = (RightsViols + 1); publicVariable "RightsViols"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; }];
            RBveh addAction ["Allow to Proceed", { [] call DoExitStopSouth; hint "Have a good day!" }];
            RBveh addAction ["Order To Turn Around", { [] call DoExitStopNorth; hint "Oh, that's fucking great. Thanks bitch!" }];
        };

        // Foiled  Terrorist Attack
        case "M10": {
            ManType = "M3";
            removeAllActions RBVeh;
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The Vehicle appears to have wires slightly protruding from the grill. \n Smells:\n The vehicle smells of alcohol or paint thinner \n Driver Attitude: \n The driver appears fidgety." }];
            RBveh addAction ["Greeting", { hint "Hello! I'm an Altian Citizen." }];
            RBveh addAction ["Search", { Bad1 = createGroup East; [RBVeh] joinSilent Bad1; hint "You stupid fuck. I'll kill you. Allahu Akbar."; remoteExecCall ["RemAllAct"]; sleep 2.0; if (alive RBVehD) then { ManType = "M5"; publicVariable "ManType"; bomb = 'Bo_GBU12_LGB' createVehicle getPos RBVeh; hint "TERRORIST ATTACK"; }; }];
            RBveh addAction ["Allow to Proceed", { [] call DoExitStopSouth; hint "You live to fight another day, infidel!"; }];
            RBveh addAction ["Order To Turn Around", { [] call DoExitStopNorth; hint "Fuck you infidels!"; }];
        };

        // Heroin Runner
        case "M11": {
            ManType = "M1";
            removeAllActions RBVeh;
            greet = RBVeh addAction ["Greeting", { hint "How are you today sir. Im an Altian Citizen." }];
            backscatter = RBVeh addAction ["Backscatter Scanner", { hint "Anomaly Detected" }];
            inspect = RBVeh addAction ["Inspect Vehicle", { hint "Visual Inspection: \n The vehicle appears clean and in good repair. \n Smells:\n The vehicle doesn't smell of anything at all.  \n Driver Attitude: \n Driver appears calm and cooperative" }];
            search= RBVeh addAction ["Search", { RBVehD leaveVehicle RBVeh; hint "Officer, is this really needed? This is just stupid. I know my rights! Call my lawyer!"; hint "Searching Car....."; sleep 6; hint "You found a load of heroin."; sleep 2; hint "Driver: Step out of the vehicle! \n \n If the driver refuses to exit, shoot the vehicle's tires and disable it!"; RBVehD addAction ["Return to Vehicle", { RBVehD moveInDriver RBVeh }]; RBVehD addAction ["Sir, You are under arrest...", { ManType = "M4"; publicVariable "ManType"; Hint "Oh Mother of God. I've really done it now."; sleep 3.0; hint "Transport the Criminal to Altian Jail. Alternately, use the Fast Transport option in the action menu to fast travel the suspect to Altian Jail."; [] call A3M_fnc_jailtrigger; }]; }];
            goSouth= RBVeh addAction ["Allow to Proceed", { hint "Thank you sir, I'll be moving on now"; [] call DoExitStopSouth; }];
            goNorth= RBveh addAction ["Order To Turn Around", { hint "Are you kidding me? But...that's where I CAME from!"; [] call DoExitStopNorth; }];
        };
    };
};

RemAllAct = {
    removeAllActions RBVeh;
    removeAllActions RBVehD;
};

DoExitStopSouth = {
    // Remove Options from Vehicle (Encounter Complete)
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];

    // Get fucking going...
    [RBVeh] joinSilent (group Sam);
    RBVeh doMove (getMarkerPos "RBStage2");

    // Add to missions passed counter
    sleep 10;
    ManType = "M5";
    publicVariable "ManType";
    sleep 5;
    deleteVehicle RBVeh;
    deleteVehicle RBVehD;
};

DoExitStopNorth = {
    // Remove Options from Vehicle (Encounter Complete)
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];
    // Get fucking going...
    [RBVeh] joinSilent (group hector);
    RBVeh doMove (getMarkerPos "RBStage1");
    // Add to missions passed counter
    sleep 10;
    ManType = "M5";
    publicVariable "ManType";
    sleep 5;
    deleteVehicle RBVeh;
    deleteVehicle RBVehD;
};

A3M_fnc_jailtrigger = {
    // [ '','RemAllAct',true,false] call BIS_fnc_MP;
    remoteExecCall ["RemAllAct"];
    deleteVehicle RBVeh;
    MJMP = createTrigger ["EmptyDetector", getMarkerPos "AAF_Jail"];
    MJMP setTriggerArea [15, 15, 0, false];
    MJMP setTriggerActivation ["ANY", "PRESENT", true];
    MJMP setTriggerType "NONE";
    MJMP setTriggerStatements ["RBVehD in thisList", "[] call A3M_fnc_booked", ""];
    MoveToJail = MJMP;
    publicVariable "MoveToJail";
    // [ '','A3M_fnc_jailtask',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_fnc_jailtask"];
};

A3M_Booked_MP = {
    hint "Prisoner has been booked into Altian Police Custody. Thank you!";
    ALTEscort setTaskState "Succeeded";
    playMusic "Success";
    ManType = "M0";
};

A3M_fnc_booked = {
    RBVehD setPos (getMarkerPos "AAF_Jail");
    deleteVehicle MoveToJail;
    ManType = "M5";
    publicVariable "ManType";
    deleteVehicle RBVehD;
    // ['','A3M_Booked_MP',true,false] call BIS_fnc_MP;
    remoteExecCall ["A3M_Booked_MP"];
};

A3M_fnc_jailtask = {
    deleteVehicle RBVeh;
    hint "Suspect's Vehicle has been Impounded";
    ALTEscort=player createSimpleTask ["Escort Prisoner to Altian Jail"];
    ALTEscort SetSimpleTaskDescription ["Escort the Altian Law Breaker to Altian Jail.", "Jail Transport", "Altian Jail"];
    ALTEscort SetSimpleTaskDestination (getMarkerPos "AAF_Jail");
    ALTEscort setTaskState "Assigned";
    player setCurrentTask ALTEscort;
    playMusic "Assigned";
    ["TaskAssigned", ["Escort the law breaker to jail."]] call BIS_fnc_showNotification;
    RBVehD addAction ["Fast Transport", { [] call A3M_fnc_booked }];
};

A3M_FNC_PRISMP = {
    ["TaskFailed", ["The prisoner has been killed in custody."]] call BIS_fnc_showNotification;
    ALTEscort setTaskState "Failed";
    ManType = "M0";
};

A3M_FNC_CIVMP = {
    removeAllActions RBVeh;
    ["TaskFailed", ["The Driver has been killed."]] call BIS_fnc_showNotification;
    hint "This is a major civil rights violation. Expect backlash!";
    ManType = "M0";
};

A3M_fnc_TerrMP = {
    ["TaskDone", ["The Terrorist has been killed."]] call BIS_fnc_showNotification;
    hint "The terrorist has been neutralized. Great Job. The shooting was in policy, and the terrorist was killed before he could detonate a very lethal bomb.";
    ManType = "M0";
};

A3M_FNC_CRIMMP = {
    ["InformationRed", ["The suspect has been neutralized."]] call BIS_fnc_showNotification;
    hint "The shooting will come under investigation by command staff, but for your moral sake, we hope it was an in policy shooting. You know the truth in your heart.";
    ManType = "M0";
};

A3M_fnc_rbMissionEnd = {
    if (CheckPointActive == 1) then {
        ["TaskDone", ["Checkpoint Duty Shift Completed."]] call BIS_fnc_showNotification;
        ["ScoreAdded", ["Performed Checkpoint Shift", 1500]] call BIS_fnc_showNotification;
        ["InformationGreen", ["Budget Increase Secured. OPSG has been allotted $150,000.00"]] call BIS_fnc_showNotification;

        hint format ["Checkpoint Duty Complete. \n \n You had %1 Rights Violation Complaints. \n ~ Altis Government HR", RightsViols];
        RBduty2 setTaskState "Succeeded";
        player addRating 1500;
    };

    CheckpointActive = 0;
    MissionActive = 0;

    [] call coroner;
    sleep 2;

    if (isServer) then {
        B_DefenseBudget = (B_DefenseBudget + 150000);
        publicVariable "B_DefenseBudget";
    };

    player setCurrentTask CO1;
};

A3M_msn_chkpt = {
    if (isServer) then {
        if isNil "MissionActive" then {
            MissionActive = 0;
            publicVariable "MissionActive";
        };
        if (MissionActive == 0) then {
            MissionActive = 1;
            publicVariable "MissionActive";

            if (isNil "CheckpointActive") then { CheckpointActive = 0 };
            if (CheckpointActive == 0) then {
                CheckpointActive = 1;
                publicVariable "CheckpointActive";

                RightsViols = 0;
                publicVariable "RightsViols";

                MissionsPassed = 0;
                publicVariable "MissionsPassed";

                // [ '','A3M_fnc_RoadBlock',true,false] call BIS_fnc_MP;
                remoteExecCall ["A3M_fnc_RoadBlock"];
            };
        } else {
            systemChat "A Mission of this type is already active, and cannot be duplicated."
        };
    } else {
        systemChat "A Checkpoint Mission has been activated."
    };
};
// End of Roadblock Debacle. Seriously, at some point, I need to re-write this with what I know now. The checkpoint was a helluva learning experience in it's time, and now, It's time to update it. Soon...Soon.
