params ["_display"];

private _background = _display ctrlCreate ["RscPicture", -1];

_background ctrlSetPosition [
    safezoneXAbs,
    safezoneY,
    safezoneWAbs,
    safezoneH
];
_background ctrlCommit 0;
_background ctrlSetText "#(rgb,8,8,3)color(0.2,0.2,0.2,1)";

private _size = 0.2;
private _width = _size * safezoneW;
private _height = _size * safezoneH * (getResolution select 4);

private _picture = _display ctrlCreate ["RscPicture", -1];

_picture ctrlSetPosition [safeZoneX, safeZoneY, safeZoneW, safeZoneH];

_picture ctrlCommit 0;
_picture ctrlSetText "images\Loadimg.jpg";

private _text = _display ctrlCreate ["RscLoadingText", -1];

_text ctrlSetPosition [
    0.5-_width/2,
    0.5,
    _width, _height
];
_text ctrlCommit 0;
_text ctrlSetText "Orion Private Military Security Group";
