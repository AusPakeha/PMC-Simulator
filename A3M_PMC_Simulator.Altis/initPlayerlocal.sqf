_Player = _this select 0;

_Player execVM "scripts\GF_Ambient_Environment_Sounds\Credits.sqf";	// Please keep the Credits or add them to your Diary
_Player execVM "scripts\GF_Ambient_Environment_Sounds\GF_AES_init.sqf";

if (player getVariable ["isSneaky",false]) then {
    [player] execVM "INC_undercover\Scripts\initUCR.sqf";
};

[laptop1,"Access Internet","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","_this distance _target < 3","_caller distance _target < 3",{},{},{ _this execVM "scripts\homepage.sqf" },{},[],2,0,true,false] remoteExec ["BIS_fnc_holdActionAdd", 0, laptop1];
[laptop2,"Access Internet","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","_this distance _target < 3","_caller distance _target < 3",{},{},{ _this execVM "scripts\homepage.sqf" },{},[],2,0,true,false] remoteExec ["BIS_fnc_holdActionAdd", 0, laptop2];
[LuchtComp,"Access Internet","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","_this distance _target < 3","_caller distance _target < 3",{},{},{ _this execVM "scripts\homepage.sqf" },{},[],2,0,true,false] remoteExec ["BIS_fnc_holdActionAdd", 0, LuchtComp];
[deliveries,"Open Private Stash","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","_this distance _target < 3","_caller distance _target < 3",{},{},{ _this execVM "scripts\locker.sqf" },{},[],2,0,true,false] remoteExec ["BIS_fnc_holdActionAdd", 0, deliveries];
[CmdLocker,"Open Private Stash","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa","_this distance _target < 3","_caller distance _target < 3",{},{},{ _this execVM "scripts\locker.sqf" },{},[],2,0,true,false] remoteExec ["BIS_fnc_holdActionAdd", 0, CmdLocker];