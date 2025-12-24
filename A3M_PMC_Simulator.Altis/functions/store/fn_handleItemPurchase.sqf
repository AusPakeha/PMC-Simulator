/*
 * A3M_fnc_handleItemPurchase
 *
 * Description:
 *     Generic handler for item purchases from listbox data
 *     Replaces hardcoded switch statements in category-specific functions
 *
 * Parameters:
 *     0: NUMBER - Listbox control ID (usually 1850)
 *     1: NUMBER - Selected index (TheSelection)
 *     2: STRING - (Optional) Delivery box name (default: "")
 *
 * Returns:
 *     Nothing
 *
 * Example:
 *     [1850, TheSelection] call A3M_fnc_handleItemPurchase;
 */

params [["_listboxId", 1850, [0]], "_selectedIndex"];

if (isNil "_selectedIndex") exitWith {
    hint "No selection made!";
};

// Get the data stored in the listbox
private _strData = lbData [_listboxId, _selectedIndex];

if (_strData == "") exitWith {
    hint "Invalid selection - no data found!";
};

// Parse the data string into an array
private _parsedData = parseSimpleArray _strData;
_parsedData params ["_className", "_displayName", "_price", "_typeOfItem"];

// Call the buy function with the extracted data
[_className, _displayName, _price, _typeOfItem] spawn A3M_fnc_buyItem;
