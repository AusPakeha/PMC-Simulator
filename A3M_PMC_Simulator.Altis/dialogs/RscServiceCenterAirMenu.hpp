class RscServiceCenterAirMenu {
    idd = 1001;
    fadeIn = 0;
    fadeOut = 0;
    duration = 1e011;
    onLoad = "uiNamespace setVariable ['RscServiceCenterAirMenu', _this select 0]";
    onUnLoad = "uinamespace setVariable ['RscServiceCenterAirMenu', nil]";

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
