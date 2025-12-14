// legend
[x] Complete (probally partially complete if MrPakeha is doing it... lol)
[/] half way complete
[¯\\_(ツ)_/¯] MrPakeha has no idea

// items
[x] separate each function to its own file
[x] create CGFStore.hpp in configs
[x] create fn_buyItem.sqf and copy/modify fn_buyVehicle.sqf code
[x] modify files to use new coding style
[x] Fix weapons
[] Item store - hide categories if CDLC/mod not present

// Vehicles
[x] convert all fleet files to new coding style

// Various
[x] config Incon Undercover
[x] remove GF Ambience hints
[] global deliveries hold add action

// Far down the track
[] switch out missions to be dynamic


////////////////////////////////////////////////////////////////////////////

 {"",},

 case # : {["", "", "vehspawn"] call A3M_fnc_buyVehicle; };

 case # : {["", "", "TypeOfItem"] call A3M_fnc_buyItem; };

 ### TypeOfItem Categories:
 - item
 - weapon
 - magazine
 - backpack

// Errors MrPakeha cant figure out

// FT.sqf Teleport Modification
- [ ] Modify the addAction in FT.sqf to replace direct teleport with a selection menu showing all possible teleport locations using BIS_fnc_guiMessage.
- [ ] Test the changes in-game to ensure the menu appears and teleportation works correctly.
