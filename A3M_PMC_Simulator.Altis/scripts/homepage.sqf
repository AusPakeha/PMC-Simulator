/*
Bank Account V 1.5 by Cody Salazar AKA Fr33d0m
www.A3MilSim.com

License:
You can do whatever you were going to do anyway. Just give me the credit i'm due, and don't steal my shit. I'll be pissed.
If you want to repay me for all my hard work, come and play arma with me! I hang out at a MilSim unit known as A3M (A3 MilSim)
Come and visit us at ts3.a3milsim.com:1911

################################## LET US BEGIN #################################### */
//SwitchScreen = _this select 0;
disableSerialization;

///////////////////////////////////////////////////////////////////////////////////////////
// Open Dialog
_handle = CreateDialog "A3M_HomePage";
playMusic "gearup";

///////////////////////////////////////////////////////////////////////////////////////////
// Menu Music Killer
A3M_fnc_silence = { playMusic ""; };

//SwitchScreen setObjectTexture [0, "images\OPSG_Home.paa"];
