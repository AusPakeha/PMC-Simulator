class RscHomepage {
    idd = 1000;
    fadeIn = 0;
    fadeOut = 0;
    duration = 1e011;
    onLoad = "uiNamespace setVariable ['RscHomepage', _this select 0]";
    onUnLoad = "uinamespace setVariable ['RscHomepage', nil]; playMusic '';";

    class controlsBackground {};
    class controls {
        class IFrame: RscText {
            type = 106;
            idc = 1001;
            x = "safeZoneXAbs";
            y = "safeZoneY";
            w = "safeZoneWAbs";
            h = "safeZoneH";
            colorBackground[] = {0, 0, 0, 0};
        };
    };
};
