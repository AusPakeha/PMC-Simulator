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

 case # : {["", "", "vehspawn"] call A3M_fnc_buyVehicle; };

 case # : {["", "", "TypeOfItem"] call A3M_fnc_buyItem; };

 ### TypeOfItem Categories:
 - item
 - weapon
 - magazine
 - backpack

// Errors MrPakeha cant figure out

18:18:12 Error in expression <] call A3M_fnc_buyItem; };
if (Wallet < ) then {
Hint Format ["Attention: Your C>
18:18:12   Error position: <) then {
Hint Format ["Attention: Your C>
18:18:12   Error unexpected )
18:18:12 File C:\Users\cypha\OneDrive\Documents\Arma 3 - Other Profiles\MrPakeha\mpmissions\A3M PMC Simulator\PMC-Simulator\A3M_PMC_Simulator.Altis\functions\store\fn_RHSOptics.sqf..., line 3
