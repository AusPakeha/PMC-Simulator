/*
 * A3M_fnc_handleFleetPurchase
 *
 * Description:
 *     Generic handler for vehicle purchases from listbox data
 *     Replaces hardcoded switch statements in category-specific functions
 *
 * Parameters:
 *     0: NUMBER - Listbox control ID (usually 1575)
 *     1: NUMBER - Selected index (TheSelection)
 *     2: STRING - (Optional) Spawn marker name (default: "vehspawn")
 *
 * Returns:
 *     Nothing
 *
 * Example:
 *     [1575, TheSelection] call A3M_fnc_handleFleetPurchase;
 */

params [["_listboxId", 1575, [0]], "_selectedIndex", ["_spawnMarker", "vehspawn", [""]]];

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
_parsedData params ["_vehicleClass", "_displayName", "_price"];

// Call the buy function with the extracted data
[_vehicleClass, _displayName, _price, _spawnMarker] call A3M_fnc_buyVehicle;
