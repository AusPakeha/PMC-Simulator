/*
 * A3M_fnc_createList
 *
 * Description:
 *     Populates a listbox with item data from config
 *
 * Parameters:
 *     0: NUMBER - Listbox control ID
 *     1: STRING - Config type (e.g., "CfgVehicles", "CfgWeapons", & "CfgMagazines")
 *     2: ARRAY - Array of item data [[className, price], ...]
 *     3: ARRAY - Picture color [r, g, b, a]
 *
 * Returns:
 *     Nothing
 *
 * Example:
 *     [1575, getArray (_config >> "a3"), [0.738, 0.714, 0.417, 1]] call A3M_fnc_createList;
 */

params [["_id", 0, [0]], ["_type", "", [""]], ["_array", [], [[]]], ["_color", [1,1,1,1], [[]]]];

{
    _x params ["_className", "_price"];

    private _displayName = getText (configFile >> _type >> _className >> "displayName");
    private _picture = getText (configFile >> _type >> _className >> "picture");
    private _priceFormatted = [_price] call A3M_handle_number;
    private _index = lbAdd [_id, format ["%1 Price: $%2", _displayName, _priceFormatted]];

    lbSetPicture [_id, _index, _picture];
    lbSetPictureColor [_id, _index, _color];
    lbSetData [_id, _index, _className];
} forEach _array;
